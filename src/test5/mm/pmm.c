/*
 * =====================================================================================
 *
 *       Filename:  pmm.c
 *
 *    Description:  获取物理内存
 *
 *        Version:  1.0
 *        Created:  2014年07月12日 17时06分45秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "pmm.h"

void show_memory_map()
{
	/*
	 *获取glb_mboot_ptr中的缓冲区数组的首地址和长度
	 *
	 */
	uint32 mmap_addr = glb_mboot_ptr->mmap_addr;
	uint32 mmap_length = glb_mboot_ptr->mmap_length;

	printk("Memory map:\n");

	/*
	 *将mmap_addr强转为mmap_entry_t结构体的地址
	 *
	 */
	mmap_entry_t *mmap = (mmap_entry_t *)mmap_addr;
	for (mmap = (mmap_entry_t *)mmap_addr; (uint32) mmap < mmap_addr + mmap_length;  mmap++) {
		printk("base_addr = 0x%x%x, length = 0x%x%x, type = 0x%x\n",
					(uint32)mmap->base_addr_high, (uint32)mmap->base_addr_low,
					(uint32)mmap->length_high, (uint32)mmap->length_low,
					(uint32)mmap->type);
	}
}
