/*
 * =====================================================================================
 *
 *       Filename:  page_fault.c
 *
 *    Description:  当CPU进入分页模式的时候，发生内存访问错误，就会产生14号中断，下面是中断处理函数
 *
 *        Version:  1.0
 *        Created:  2014年07月13日 17时31分18秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "vmm.h"
#include "debug.h"

void page_fault(pt_regs_t *regs)
{
	//cr2是求出当前也请求的位置，
	uint32 cr2;
	asm volatile ("mov %%cr2, %0" : "=r"(cr2));

	printk("Page fault at 0x%x, virtual faulting address 0x%x\n", regs->eip, cr2);
	printk("Error code:%x\n", regs->err_code);

	// reg->err_code 这个结构是页表项的内容，可通过判断第一位是否为0,判断是否在内存中
	if (!(regs->err_code & 0x1)) {
		printk("Because the page wasnot present\n");
	} 

	//这个是判断读写位R/W位，这点有点出入。
	if (regs->err_code & 0x2) {
		printk("Write error!\n"); 
	} else  {
		printk("Read error\n");
	}
	// 1表示是在用户模式打断的，0是在内核模式下打断的
	if (regs->err_code & 0x4) {
		printk("In user mode.\n");
	} else {
		printk("in kernel mode.\n");
	}

	//1表示错误是有保留位覆盖造成的
	if (regs->err_code & 0x8) {
		printk("Reserved bits being overwritten.\n");
	}

	//为1的时候表示错误是发生在取指令的时候
	if (regs->err_code & 0x10) {
		printk("The fault occurred during an instrction fetch.\n");
	}
	
	while(1);
}
