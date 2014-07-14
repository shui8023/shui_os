/*
 * =====================================================================================
 *
 *       Filename:  vmm.h
 *
 *    Description:  虚拟内存的管理
 *
 *        Version:  1.0
 *        Created:  2014年07月13日 15时47分15秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */


#ifndef VMM_H
#define VMM_H

#include "types.h"
#include "idt.h"

//内核的偏移地址
#define PAGE_OFFSET 0xc0000000

/*
 *下面定义的是页表项中各个位的所代表的意义
 */


/*
 * 存在(P)标志,位0,该表项表明，该表项所指向的页或者页表当前的是否在内存中
 *当p=1,这个页在物理内存中执行地址转化有效
 *p=0时，这个页不存在内存中。如果CPU试图访问该页，将产生一个缺页的异常
 */
#define PAGE_PRESET 0x1

/*
 *读/写（R/W）位1 该位确定一个页或者一组页(比如，一个指向一个页表的页目录项)的读写权限
 *R/W=0，该页只是只读的，
 *R/W=1。该页是可读可写的
 *当处理器运行在超级用户特权，则R/W不起作用
 */
#define PAGE_WRITE 0x2

/*
 *普通用户/超级用户（U/S)标志位2
 *该标志确定了一个页或者一组页的用户权限，
 *当这个标志被清0,那么运行在任何特权级上的程序都可以访问该页面
 *当这个标志被置1,那么页面只能被运行在超级用户的特权级上的程序访问
 */
#define PAGE_USER 0x4

//虚拟分页大小
#define PAGE_SIZE 4096

//页掩码，用于4kb对齐
#define PAGE_MASK 0xFFFFF000

//获取线性地址的页目录项，是高10位，对0x3FF与 取得10位
#define PGD_INDEX(x) \
	(((x) >> 22) & 0x3FF)

//获取线性地址的页表项,是线性地址的中间10位
#define PTE_INDEX(x) 	\
	(((x) >> 12 ) & 0x3FF)

//获取线性地址的偏移，是线性地址的前12位
#define OFFSET_INDEX(x) 	\
	((x) && 0xFFF)

//页目录页表的数据类型
typedef uint32 pgd_t;
typedef uint32 pte_t;

//页表成员数
#define PGD_SIZE 	\
	(PAGE_SIZE/sizeof(pte_t))

#define PTE_SIZE 	\
	(PAGE_SIZE/sizeof(uint32))

//这里只是映射了512M内存，假设我们只是管理512M内存
#define PTE_COUNT 128

//内核页目录的区域
extern pgd_t pgd_kernel[PGD_SIZE];

//初始化虚拟内存管理
void init_vmm();

//更换当前的页目录
void switch_pgd(uint32 pd);

//使用flags指出页权限，把物理地址映射pa到虚拟内存中va
void map(pgd_t *pgd_now, uint32 va, uint32 pa, uint32 flags);

//取消虚拟地址va的物理映射
void unmap(pgd_t *pgd_now, uint32 va);

/*如果虚拟地址va映射到物理地址则返回1
 *同时如果pa不是空指针则把物理地址写入到pa参数中，   ps不明白是干什么的
 */
uint32 get_mapping(pgd_t *pgd_now, uint32 va, uint32 *pa);

//页错误中断的函数处理.中断处理的函数
void page_fault(pt_regs_t *regs);


#endif //VMM_H
