/*
 * =====================================================================================
 *
 *       Filename:  heap.h
 *
 *    Description:  内核的堆管理的实现
 *
 *        Version:  1.0
 *        Created:  2014年07月17日 13时18分45秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef HEAP_H
#define HEAP_H

#include "types.h"

//堆的起始地址
#define HEAP_START 0xE0000000

//定义了堆管理的结构体
typedef struct heap {
	struct heap *next;
	struct heap *prev;
	uint32 allocate:1;
	uint32 length :31;
}heap_t;


//初始化堆
void init_heap();

//堆的申请
void *kmalloc(uint32 len);

//堆的释放
void kfree(void *address);

#endif //HEAP_H
