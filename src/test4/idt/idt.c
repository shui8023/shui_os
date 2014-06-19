/*
 * =====================================================================================
 *
 *       Filename:  idt.c
 *
 *    Description:  中断描述符的函数的实现
 *
 *        Version:  1.0
 *        Created:  2014年05月27日 14时46分33秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "types.h"
#include "idt.h"
#include "string.h"
#include "debug.h"

//中断描述符
idt_entry_t idt_entries[256];


//中断描述符表
idt_ptr_t idt_ptr;

//中断处理函数指针数组
interrupt_handler_t interrupt_handlers[256];

//设置中断描述符的值
static void idt_set_gate(uint8 num, uint32 base, uint16 sel, uint8 flags);

//声明加载IDTR函数
extern void idt_flush(uint32);

//初始化中断描述符表
void init_idt()
{
	//初始化主片，从片
	outb(0x20, 0x11);
	outb(0xA0, 0x11);

	outb(0x21, 0x20);
	outb(0xA1. 0x28);
	outb(0x21, 0x04);
	outb(0xA1, 0x02);
	outb(0x21, 0x01);
	outb(0xA1, 0x01);
	outb(0x21, 0x0);
	outb(0xA1, 0x0);


	bzer((uint8*)&interrupt_handlers, sizeof(interrupt_handler_t) * 256);
	idt_ptr.limit = sizeof(idt_entry_t) * 256 - 1;
	idt_ptr.base = (uint32)&idt_entries;

	bzer((uint8 *)&idt_entries, sizeof(idt_entry_t) * 256);

	idt_set_gate( 0, (uint32)isr0,  0x08, 0x8E);
	idt_set_gate( 1, (uint32)isr1,  0x08, 0x8E);
	idt_set_gate( 2, (uint32)isr2,  0x08, 0x8E);
	idt_set_gate( 3, (uint32)isr3,  0x08, 0x8E);
	idt_set_gate( 4, (uint32)isr4,  0x08, 0x8E);
	idt_set_gate( 5, (uint32)isr5,  0x08, 0x8E);
	idt_set_gate( 6, (uint32)isr6,  0x08, 0x8E);
	idt_set_gate( 7, (uint32)isr7,  0x08, 0x8E);
	idt_set_gate( 8, (uint32)isr8,  0x08, 0x8E);
	idt_set_gate( 9, (uint32)isr9,  0x08, 0x8E);
	idt_set_gate(10, (uint32)isr10, 0x08, 0x8E);
	idt_set_gate(11, (uint32)isr11, 0x08, 0x8E);
	idt_set_gate(12, (uint32)isr12, 0x08, 0x8E);
	idt_set_gate(13, (uint32)isr13, 0x08, 0x8E);
	idt_set_gate(14, (uint32)isr14, 0x08, 0x8E);
	idt_set_gate(15, (uint32)isr15, 0x08, 0x8E);
	idt_set_gate(16, (uint32)isr16, 0x08, 0x8E);
	idt_set_gate(17, (uint32)isr17, 0x08, 0x8E);
	idt_set_gate(18, (uint32)isr18, 0x08, 0x8E);
	idt_set_gate(19, (uint32)isr19, 0x08, 0x8E);
	idt_set_gate(20, (uint32)isr20, 0x08, 0x8E);
	idt_set_gate(21, (uint32)isr21, 0x08, 0x8E);
	idt_set_gate(22, (uint32)isr22, 0x08, 0x8E);
	idt_set_gate(23, (uint32)isr23, 0x08, 0x8E);
	idt_set_gate(24, (uint32)isr24, 0x08, 0x8E);
	idt_set_gate(25, (uint32)isr25, 0x08, 0x8E);
	idt_set_gate(26, (uint32)isr26, 0x08, 0x8E);
	idt_set_gate(27, (uint32)isr27, 0x08, 0x8E);
	idt_set_gate(28, (uint32)isr28, 0x08, 0x8E);
	idt_set_gate(29, (uint32)isr29, 0x08, 0x8E);
	idt_set_gate(30, (uint32)isr30, 0x08, 0x8E);
	idt_set_gate(31, (uint32)isr31, 0x08, 0x8E);
	
	//实现系统调用的
	idt_set_gate(255, (uint32)isr255, 0x08, 0x8E);

	//更新设置中断描述符表
	idt_flush((uint32)&idt_ptr);
}

//设置中断描述符
static void idt_set_gate(uint8 num, uint32 base, uint16 sel, uint8 flags)
{
	idt_entries[num].base_low = base & 0xFFFF;
	idt_entries[num].base_high = (base >> 16) & 0xFFFF;

	idt_entries[num].segment  = sel;
	idt_entries[num].must_0 = 0;

	idt_entries[num].flag = flags; // | 0x60

}

//调用中断处理函数
void isr_handler(pt_regs_t *regs)
{
//	if (interrupt_handlers[regs->int_no]) {
//		interrupt_handlers[regs->int_no](regs);	
//	} else {
//		printk("uhanddled interuppt:%d\n",regs->int_no);
//	}
 	if (regs->int_no >= 40) {
		outb(0xA0, 0x20);
	}
	
	outb(0x20, 0x20);

	if (interrupt_handlers[regs->int_no]) {
		interrupt_handlers[regs->int_no](regs);
	}
}

//注册一个中断描述符函数
void registers_interrupt_handler(uint8 n, interrupt_handler_t h)
{
	interrupt_handlers[n] = h;
}
