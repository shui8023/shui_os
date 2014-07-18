/*
 * =====================================================================================
 *
 *       Filename:  vmm.c
 *
 *    Description:  虚拟内存的管理
 *
 *        Version:  1.0
 *        Created:  2014年07月13日 20时25分55秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

/*
 *grub从1MB的地方开始加载内核的，而如果把内核直接映射到0xc0000000,然后重定位
 *后面地址查找会出现错误，所以构造一段程序来按照0xc0000000来重定位
 *
 */

#include "vmm.h"
#include "pmm.h"
#include "debug.h"
#include "string.h"

/*
 *为了选择不同的表的入口，线性地址被分为3个部分
 *页目录表项一位22-31位作为一个表项在页目录中的偏移量，该表项提供了一个页表的物理基地址
 *页表项-线性地址12位到21提供了一个表项在所选的页表中的偏移量，该表项提供了物理内存页的物理基地址
 *页偏移量0到11位提供了该地址在页中的偏移量
 */


//内核页目录的区域4kb, alignde 按照4KB对齐，使用的是gcc的扩展
pgd_t pgd_kernel[PGD_SIZE] __attribute__((aligned(PAGE_SIZE)));

//内核页表的区域 不是4M，只是映射了512M的内存，PTE_SIZE 1024  1  共有128个4KB
static pte_t pte_kernel[PTE_COUNT][PTE_SIZE] __attribute__((aligned(PAGE_SIZE)));

void init_vmm()
{
	//找到0xc000000这个地址在页目录的索引，因为所有的地址都是在0xc000000之上,0xc000000是一个线性的地址
	//由线性的地址求出页目录的地址，也是页目录的首地址
	uint32 kernel_pte_first_idx = PGD_INDEX(PAGE_OFFSET);
	
	uint32 i;
	uint32 j;

	//因为只有128个页表，所有需要128个地址来映射页表的位置，一个页表都是4kB,每一个页表都必须含有自己的页目录
	//又页是4KB对齐的，也就是求出128个页目录,主要是i的值是干什么的
	for (i = kernel_pte_first_idx, j = 0; i < PTE_COUNT + kernel_pte_first_idx; i++, j++) {
		//pte_kernel[j]是页表的内存地址，也就是页目录需要存储的地址，设计成二维数组很方便的
		//然后转化为表项的内容,由于链接的时候是加上了0xc0000000，故这个变量的值是在这个基础上
		//的地址，故必须减去0xc000000才是页表的物理地址，由于页表和页目录上面存的是物理地址
		pgd_kernel[i] = ((uint32)pte_kernel[j] - PAGE_OFFSET) | PAGE_PRESET | PAGE_WRITE;
	}

	//初始化页表的值 将物理内存从1开始映射到页表中
	uint32 *pte = (uint32 *)pte_kernel;
	//这为什么是int 不是4kb一个页么
	for (i = 1; i < PTE_COUNT * PTE_SIZE; i++) {
		pte[i] = (i << 12) | PAGE_PRESET | PAGE_WRITE;
	}
	

	//这个是页目录的真实地址，需要记载到寄存器中的
	uint32 pgd_kernel_phy_addr = (uint32) pgd_kernel - PAGE_OFFSET;

	//注册页错误中断的处理函数，14号中断是页故障
	register_interrupt_handler(14, &page_fault);

	switch_pgd(pgd_kernel_phy_addr);
}

//switch_pgd将页目录的地址记载到寄存器中
void switch_pgd(uint32 pd)
{
	asm volatile ("mov %0, %%cr3" : : "r"(pd));
}

/*
 *@pgd_now 是页目录的数组
 *@va是线性地址
 *@@pa 是物理地址
 *flags是各种属性标示
 *
 */
void map(pgd_t *pgd_now, uint32 va, uint32 pa, uint32 flags)
{
	//获得va地址的页目录和页表的地址
	uint32 pgd_idx = PGD_INDEX(va);
	uint32 pte_idx = PTE_INDEX(va);

	/*设计权限的问题，pte是页表的地址，
	*设计简单的C语言基本的问题
	*下面的程序是给pte这个内存空间赋值了，但是在用户态的时候，不知道这个地址是否能被读写，导致段错误，所以只能申请空间
	*方面管理，而在内核空间，可以随意访问任意一个空间，支持赋值操作，而不用申请的
	*/
	pte_t *pte = (pte_t *)(pgd_now[pgd_idx] & PAGE_MASK);

	/*判断这个pte的值是否为空，pte可能为0，
	 *pte = 0 时候，必须重新分配内存空间，可以使用物理内存管理
	 *来重新找到一个新的物理地址空间来使用的
	 */
	if (!pte) {
		pte = (pte_t *)pmm_alloc_page();
		pgd_now[pgd_idx] = (uint32)pte | PAGE_PRESET | PAGE_WRITE;
	
		pte = (pte_t *)((uint32)pte + PAGE_OFFSET);
		bzer(pte, PAGE_SIZE);
	} else {
		//
		pte = (pte_t *)((uint32)pte + PAGE_OFFSET);
	}
	//写入的是物理地址空间
	pte[pte_idx] = (pa & PAGE_MASK) | flags;
	
	//通知CPU更新页表
	asm volatile ("invlpg (%0)" : : "a"(va));
}


/*
 *@pgd_now 是当前的页表
 *@va 是当前的线性地址，
 *函数的作用就是取消va对应的物理的地址的映射
 */
void unmap(pgd_t *pgd_now, uint32 va)
{
	uint32 pgd_idx = PGD_INDEX(va);
	uint32 pte_idx = PTE_INDEX(va);

	pte_t *pte = (pte_t *)(pgd_now[pgd_idx] & PAGE_MASK);

	//如果地址为0.则直接返回，没有映射NULL
	if (!pte) {
		return ;
	}

	//求出对应的页表的位置，pte是物理地址，但是由于链接的时候我们把pte连接到了0xc0000000上，所以pte的
	//现在的地址目前在这个基础之上的，目的是把页表也映射到内存的上面
	pte = (pte_t *)(uint32)pte + PAGE_OFFSET;

	pte[pte_idx] = 0;

	asm volatile ("invlpg (%0)" : : "a"(va));
}


/*
 *pgd_now:页目录
 *va :线性地址
 *pa:物理地址的
 *目的是通过线性地址找到物理地址
 */
uint32 get_mapping(pgd_t *pgd_now, uint32 va, uint32 *pa) 
{
	uint32 pgd_idx = PGD_INDEX(va);
	uint32 pte_idx = PTE_INDEX(va);

	pte_t *pte = (pte_t *)(pgd_now[pgd_idx] & PAGE_MASK);

	if (!pte) {
		return 0;
	} 

	pte = (pte_t *)((uint32)pte + PAGE_OFFSET);

	if (pte[pte_idx] != 0 && pa) {
		*pa = pte[pte_idx] & PAGE_MASK;
		return 1;
	}

	return 0;
}



