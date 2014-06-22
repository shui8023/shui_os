/*
 * =====================================================================================
 *
 *       Filename:  timer.c
 *
 *    Description: 中断时钟的实现
 *
 *        Version:  1.0
 *        Created:  2014年06月20日 00时34分32秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "types.h"
#include "debug.h"
#include "idt.h"
#include "common.h"
#include "timer.h"

/*
 *
 *
 */

void  timer_callback(pt_regs_t *regs)
{
	static uint32 tick = 0;
	printk("tick:%d\n", tick++);
}

void init_timer(uint32 frequency)
{
	
}
