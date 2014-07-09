/*
 * =====================================================================================
 *
 *       Filename:  gdt.h
 *
 *    Description:  全局段描述符表
 *
 *        Version:  1.0
 *        Created:  2014年05月24日 20时15分34秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef GDT_H
#define GDT_H

#include "types.h"
//段描述符的数据结构
typedef struct  gdt_t{
	uint16 limit_low; 	//段的界限  0-15
	uint16 base_low; 	//段的基地址0-15
	uint8 base_middle; 	//段的基地址16-23
	uint8 access; 		//段的类型域，标志域，p，s标志          
	uint8 granularity; 	//段的界限，其他的标志
	uint8 base_high; 	//段的基地址 24-31
}__attribute__((packed)) gdt_entry_t;

//GDTR描述符表的数据结构，基地址加上偏移，是48位的寄存器
typedef struct gdt_ptr_t{
	uint16 limit;
	uint32 base;
}__attribute__((packed)) gdt_ptr_t;

//初始化全局描述符表
void init_gdt();

//从GDT加载到GDTR的函数汇编代码实现
extern void gdt_flush(uint32 );




#endif //GDT_H
