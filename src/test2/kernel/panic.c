/*
 * =====================================================================================
 *
 *       Filename:  panic.c
 *
 *    Description:  打印函数的栈中的信息
 *
 *        Version:  1.0
 *        Created:  2014年05月23日 15时27分21秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "panic.h"

static void print_stack_trace();

static elf_t kernel_elf;


void init_debug()
{
	kernel_elf = elf_form_multiboot(glb_mboot_ptr);
}

void print_cur_status()
{
	static int round = 0;
	uint16 reg1, reg2, reg3, reg4;
	
	asm volatile ( "mov %%cs, %0;"
		       "mov %%ds, %1;"
		       "mov %%es, %2;"
		       "mov %%ss, %3;"
		       : "=m"(reg1),"=m"(reg2),"=m"(reg3),"=m"(reg4));

	printk("%d:@ring %d\n", round, reg1 &0x3);
	printk("%d: cs = %d\n", round, reg1);
	printk("%d: ds = %d\n", round, reg2);
	printk("%d: es = %d\n", round, reg3);
	printk("%d: ss = %d\n", round, reg4);
}

void panic(const char *msg) 
{
	printk("*******system panic:%s\n", msg);
	print_stack_trace();
	printk("****\n");

	while(1);
}


void print_stack_trace()
{
	uint32 *ebp, *eip;

	asm volatile ("mov %%ebp, %0": "=r"(ebp));

	while(ebp) {
		eip = ebp + 1;
		printk("     [0x%x] %s\n", *eip, elf_look_symbol(*eip, &kernel_elf));
		ebp = (uint32 *)*ebp;
	}
}


	
