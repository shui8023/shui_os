/*
 * =====================================================================================
 *
 *       Filename:  gdt.c
 *
 *    Description:  全局描述符表
 *
 *        Version:  1.0
 *        Created:  2014年05月24日 21时21分54秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "gdt.h"
#include "string.h"

//定义了全局描述符表的长度
#define GDT_LENGTH 5

//全局描述符的定义
gdt_entry_t gdt_entries[GDT_LENGTH];

//全局描述符表的定义
gdt_ptr_t  gdt_ptr;

static void gdt_set_gate(int32, uint32, uint32 , uint8 ,uint8 );

//声明内核栈地址,在boot.s声明过这个符号变量
extern uint32 stack;


/*初始化段描述符表，并将GDT记载到GPTR寄存器中去
 *
 *
 *
 */
void init_gdt()
{
	//全局描述符表的界限从0开始标号，需要-1,base是基地址
	gdt_ptr.limit = sizeof(gdt_entry_t) * GDT_LENGTH - 1;
	gdt_ptr.base = (uint32)&gdt_entries;

	gdt_set_gate(0, 0, 0, 0, 0); //intel，第一个段描述符不可用，置为0
	gdt_set_gate(1, 0, 0xffffffff, 0x9a, 0xcf);  	//指令段
	gdt_set_gate(2, 0, 0xffffffff, 0x92, 0xcf);  	//数据段
	gdt_set_gate(3, 0, 0xffffffff, 0xfa, 0xcf);  	//用户态的代码段
	gdt_set_gate(4, 0, 0xffffffff, 0xf2, 0xcf);  	//用户态的数据段

	//加载全局描述符表到GPTR寄存器
	gdt_flush((uint32)&gdt_ptr);
}

/*给全局描述符赋值
 *@num 数组的下标
 *@base 基地址
 *@limit 段描述符的限制长度
 *@acces 访问的标志
 *@gran 其他的访问的标志
 */

static void gdt_set_gate(int32 num, uint32 base, uint32 limit, uint8 access, uint8 gran)
{
	gdt_entries[num].base_low    = (base & 0xffff);   	//取了base的低16位
	gdt_entries[num].base_middle = (base >> 16) & 0xff; 	//取了base的中8位
	gdt_entries[num].base_high   = (base >> 24) & 0xff; 	//取了base的高8位

	gdt_entries[num].limit_low   = (limit & 0xffff); 	//取了base的低16位
	gdt_entries[num].granularity = (limit >> 16 ) & 0x0f; 	//取了base的中4位，其余的置为0

	gdt_entries[num].granularity |=  gran & 0xf0; 
	gdt_entries[num].access      = access; 
}
