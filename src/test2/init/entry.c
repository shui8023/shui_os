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

int entry()
{

	char str1 = 'a';
	char str2 = 'b';
	char str3 = 'c';
	int  a = 1100000111;
	screen_clear();
	printk("a%c%c%c%d", str1 + 1, str2, str3, a);
		
	

	return 0;
}

