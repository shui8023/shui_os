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

int entry()
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
	
	
	return 0;
}

