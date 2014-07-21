/*
 * =====================================================================================
 *
 *       Filename:  entry.c
 *
 *    Description:  shui 内核的入口函数
 *
 *        Version:  1.0
 *        Created:  2014年04月20日 13时31分03秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 * =====================================================================================
 */

#include "screen_operate.h"
#include "string.h"
#include "panic.h"
#include "elf.h"
#include "idt.h"
#include "gdt.h"
#include "timer.h"
#include "pmm.h"
#include "vmm.h"
#include "multiboot.h"
#include "heap.h"

/*
 *内核初始化函数
 */
void kernel_init();

//开启分页之后的multiboot的数组指针
multiboot_t *glb_mboot_ptr;

//开启分页机制之后的内核栈
char kernel_stack[STACK_SIZE];

//内核使用的临时页表和页目录
//该地址必须是和页是对齐的
__attribute__((section(".init.data"))) pgd_t *pgd_tmp = (pgd_t *)0x1000;
__attribute__((section(".init.data"))) pgd_t *pte_low = (pgd_t *)0x2000;
__attribute__((section(".init.data"))) pgd_t *pte_high = (pgd_t *)0x3000;


//内核入口函数
__attribute__((section(".init.text"))) void entry()
{
	pgd_tmp[0] = (uint32)pte_low | PAGE_PRESET | PAGE_WRITE;
	pgd_tmp[PGD_INDEX(PAGE_OFFSET)] = (uint32)pte_high | PAGE_PRESET | PAGE_WRITE;

	//映射内核虚拟空间4MB 到物理地址的前4MB
	int i;
	for (i = 0; i < 1024; i++) {
		pte_low[i] = (i << 12) | PAGE_PRESET |PAGE_WRITE;
	}

	//映射0x0000000-0x00400000的物理内存到虚拟地址0xc0000000-0xc0400000
	for (i = 0; i < 1024; i++) {
		pte_high[i] = (i << 12) | PAGE_PRESET |PAGE_WRITE;
	}

	//设置临时页表
	asm volatile ("mov %0, %%cr3" : : "r" (pgd_tmp));

	uint32 cr0;

	//启动分页，将cr0寄存器的分页位置为1就好
	asm volatile ("mov %%cr0, %0" : "=r"(cr0));
	cr0  |= 0x80000000;
	asm volatile ("mov %0, %%cr0" : : "r" (cr0));

	//切换内核栈
	uint32 kernle_stack_top = ((uint32) kernel_stack  + STACK_SIZE) & 0xFFFFFFF0;

	//xor是异或的逻辑运算符
	asm volatile ("mov %0, %%esp\n\t" 
				"xor %%ebp, %%ebp" : : "r"(kernle_stack_top));

	glb_mboot_ptr = glb_mboot_tmp + PAGE_OFFSET;

	kernel_init();

} 


void  kernel_init()
{
	init_debug();
	init_gdt();
	init_idt();
	
	char *string = "hello word!\n";
      	
	screen_clear();
	printk("%s\n", string);

	printk("kernel in memory start :0x%x\n", kernel_start);
	printk("kernel in memory end :0x%x\n", kernel_end);
	printk("kernel in memory used :%d KB\n\n", (kernel_end - kernel_start + 1023)/1024);
	
	show_memory_map();

	init_pmm();

	uint32 value = pmm_alloc_page();
	printk("Alloc physical address:%x\n", value);
	
	value = pmm_alloc_page();
	printk("Alloc physical address:%x\n", value);
	
	
	value = pmm_alloc_page();
	printk("Alloc physical address:%x\n", value);

	init_vmm();
	init_heap();
	void *malloc_address1 = kmalloc(100);
	printk("malloc address is on 0x%x\n", malloc_address1);
	
	
	printk("test the memory mange:\n");
	void *malloc_address0 = kmalloc(10);
	printk("malloc address is on 0x%x\n",malloc_address0);


	void *malloc_address2 = kmalloc(1000);
	printk("malloc address is on 0x%x\n", malloc_address2);
	

	printk("free address is on 0x%x\n",malloc_address0);
	kfree(malloc_address0);

	printk("free address is on 0x%x\n",malloc_address1);
	kfree(malloc_address1);
	
	printk("free address is on 0x%x\n",malloc_address2);
	kfree(malloc_address2);

	//hlt是暂时停机的状态
	while (1) {
		asm volatile ("hlt");
	}

	
}

