/*
 * =====================================================================================
 *
 *       Filename:  entry.c
 *
 *    Description:  hurlex 内核的入口函数
 *
 *        Version:  1.0
 *        Created:  2013年10月31日 13时31分03秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Hurley (LiuHuan), liuhuan1992@gmail.com
 *        Company:  Class 1107 of Computer Science and Technology
 *
 * =====================================================================================
 */

#include "screen_operate.h"

int entry()
{
	screen_clear();
	screen_string("hello,shui!", screen_black, screen_white);
//	unsigned char  *input = (unsigned char *)0xb8000;
//	
//	*input++ = 'H'; 
//	*input++ = 0x07;
//	*input++ = 'e'; 
//	*input++ = 0x07;
//	*input++ = 'l'; 
//	*input++ = 0x07;
//	*input++ = 'l'; 
//	*input++ = 0x07;
//	*input++ = 'o';
//	*input++ = 0x07;
//	*input++ = ','; 
//	*input++ = 0x07;
//	*input++ = 's'; 
//	*input++ = 0x07;
//	*input++ = 'h'; 
//	*input++ = 0x07;
//	*input++ = 'u'; 
//	*input++ = 0x07;
//	*input++ = 'i'; 
//	*input++ = 0x07;
	
	

	return 0;
}

