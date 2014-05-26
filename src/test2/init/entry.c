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
int entry()
{
	
	init_debug();
	
	screen_clear();

	printk("hello word!\n");
		
	panic("test");

	return 0;
}

