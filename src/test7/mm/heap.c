/*
 * =====================================================================================
 *
 *       Filename:  heap.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014年07月17日 16时58分02秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "heap.h"
#include "debug.h"
#include "pmm.h"
#include "vmm.h"

//申请内核 块
static void alloc_chunk(uint32 start, uint32 len);

//释放内存块
static void free_chunk(uint32 start, uint32 len);

//切分内存块
static void split_chunk(heap_t * chunk, uint32 len);

//合并内存块
static void glue_chunk(heap_t *chunk);


//
static uint32 heap_max = HEAP_START;

//堆管理的头指针
static heap_t * heap_first;

//堆的初始化,说明头指针目前是空指针
void init_heap()
{
	heap_first = 0;
}

void *kmalloc(uint32 len)
{
	//申请的内存必须加上头指针，用于管理内存的空间
	len += sizeof(heap_t);
	
	heap_t * cur_head = heap_first;
	heap_t * prev_head = 0;

	while (cur_head) {
		if (cur_head->allocate == 0 && cur_head->len > len) {
			//切分len的长度的内存出来
			split_chunk(cur_head, len);
			//将这个内存头指针标示为1,标示已经使用
			cur_head->allocate = 1;
			/*
			 *这个目前不是很理解
			 */
			return (void *) ((uint32)cur_head + sizeof(heap_t));
		}
	}
}


void alloc_chunk(uint32 address, uint32 len)
{
	
}
