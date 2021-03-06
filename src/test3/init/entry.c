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
#include "debug.h"
#include "panic.h"
#include "elf.h"
#include "idt.h"
#include "gdt.h"

int entry()
{
	
	init_debug();
	init_gdt();
	init_idt();

	char *string = "hello word!\n";
 	char  *p = 0x4324324;     
	screen_clear();
	printk("%x", p);
	printk("%s\n", string);
      	
//	panic("test");
      
  	asm volatile ("int $0x04");
	asm volatile ("int $0x07");
//	while (1);
	return 0;
}

