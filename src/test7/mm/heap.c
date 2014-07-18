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
static void free_chunk(heap_t *chunk);

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


//还是理解一下内核中的堆栈的到底是怎么一个概念，
void *kmalloc(uint32 len)
{
	//申请的内存必须加上头指针，用于管理内存的空间
	len += sizeof(heap_t);
	
	heap_t * cur_head = heap_first;
	heap_t * prev_head = 0;
	
	//第一次运行的时候为0,然后运行的时候，先判断已经使用过的内存中
	//有没有能用的，如果有能用的，则不用申请其他的内存使用
	while (cur_head) {
		if (cur_head->allocate == 0 && cur_head->length > len) {
			//切分len的长度的内存出来
			split_chunk(cur_head, len);
			//将这个内存头指针标示为1,标示已经使用
			cur_head->allocate = 1;
			/*
			 *这个目前不是很理解
			 */
			return (void *) ((uint32)cur_head + sizeof(heap_t));
		} 
		prev_head = cur_head;
		cur_head = cur_head->next;
	}

	uint32 chunk_start;

	//第一次执行，会执行else后面的代码，然后第二次初始化后执行正确的
	if (prev_head) {
		chunk_start = (uint32)prev_head + prev_head->length;
	} else {
		chunk_start = HEAP_START;
		heap_first = (heap_t *)chunk_start;
	}

	//就是把这个线性地址和物理地址形成映射
	alloc_chunk(chunk_start, len);
	//描述找个内存块的相关信息
	cur_head = (heap_t *) chunk_start;
	//连接到上一个已经藐视内存的结构体
	cur_head->prev = prev_head;
	cur_head->next = 0;
	cur_head->allocate = 1;
	cur_head->length = len;
	
	//将两个用过的内存块链接在一起
	if (prev_head) {
		prev_head->next = cur_head;
	}
	//申请的空间头部有heap_t这个结构体，只是描述这个内存块的信息
	//所以返回的地址必须是除去这个结构体的，由于内存向上增加
	return (void *)(chunk_start + sizeof(heap_t));

}


void alloc_chunk(uint32 address, uint32 len)
{
	while ((address + len) > heap_max) {
		//申请一个内核空间,也就是物理地址，是由于初始化了物理内存空间管理，有一个数组存放着内核的
		//物理空间的详细信息
		uint32 page = pmm_alloc_page(); 

		//将heap_max找个线性地址和page物理地址相对应的，形成映射关系
		map(pgd_kernel, heap_max, page, PAGE_PRESET | PAGE_WRITE);
		//由于循环建设一个线性地址和物理地址对应，线性地址必须相应的加一个页4KB;
		heap_max += PAGE_SIZE;
	}
}

void kfree(void *p)
{
	heap_t * header = (heap_t *)((uint32)p - sizeof(heap_t));

	header->allocate = 0;

	//粘合内存块
	glue_chunk(header);
}

void glue_chunk(heap_t *chunk)
{
	//当释放之后chunk，这段代码检查chunk后面是否有释放的空间
	if (chunk->next && chunk->next->allocate == 0) {
		chunk->length = chunk->length + chunk->next->length;
		if (chunk->next->next) {
			chunk->next->next->prev = chunk;
		}
		chunk->next = chunk->next->next;
	}

	
	//当释放之后chunk，这段代码检查chunk前面是否有释放的空间
	if (chunk->prev && chunk->prev->allocate == 0) {
		chunk->prev->length = chunk->prev->length + chunk->length;
		if (chunk->next) {
			chunk->next->prev = chunk->prev;
		}
		//why
		chunk = chunk->prev;
	}
	
	if (chunk->next == 0) {
		free_chunk(chunk);
	}
}

void free_chunk(heap_t *chunk) 
{
	if (chunk->prev == 0) {
		heap_first = 0;
	}else {
		//指向自己的指针指向0
		chunk->prev->next = 0;
	} 
	//heap_max 一直是指向申请内存的最上面，当释放掉上面的内存，内存大于4096字节，把这个内存释放掉，就是解除
	//映射，把页表的恢复成可用的选项
	while ((heap_max - PAGE_SIZE) >= (uint32)chunk) {
		heap_max -= PAGE_SIZE;
		uint32 page;
		//通过线性地址找到物理地址，然后赋值给page
		get_mapping(pgd_kernel, heap_max, &page);
		unmap(pgd_kernel, heap_max);
		//里面存在物理内存管理的数组
		pmm_free_page(page);
	}
}

//切分内存 就是将剩下的内存就内存管理的结构体就行标记，然后连接到整个内存管理的链表之中
void split_chunk(heap_t *chunk, uint32 len)
{
	//切分内存的之前必须保证剩余的内存必须能存下一个内管管理的结构体的大小
	if (chunk->length - len > sizeof(heap_t)) {
		heap_t *newchunk = (heap_t *)((uint32)chunk + chunk->length);
		newchunk->prev = chunk;
		newchunk->next = chunk->next;
		newchunk->allocate = 0;
		newchunk->length = chunk->length - len;

		chunk->next = newchunk;
		chunk->length = len;
	}
}
