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
#include "timer.h"
#include "screen_port.h"
#include "idt.h"

/*中断时钟的函数
 *显示时钟
 *
 */
void  timer_callback(pt_regs_t *regs)
{
	schedule();
}

void init_timer(uint32 frequency)
{
	//注册中断时钟的函数
	register_interrupt_handler(IRQ0, timer_callback);
	
	uint32 divisor = 1193180 / frequency;

	outb(0x43, 0x36);

	uint8 low = (uint8)(divisor & 0xFF);
	uint8 hign = (uint8)((divisor >> 8) & 0xFF);

	outb(0x40, low);
	outb(0x40, hign);
}

