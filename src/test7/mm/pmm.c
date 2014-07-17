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

/*
 *申请内存，从grub中读取的内存缓冲区中找到0x1的地址，除去内核加载的区域，就是可以使用的区域
 *这个区域用数组来标示，申请物理地址时，从该数组中得到地址
 */

//物理内存页面的数组
static uint32 pmm_stack[PAGE_MAX_SIZE];

//物理内存管理的指针
static uint32 pmm_stack_top;

//物理内存页的数量
uint32 phy_page_count;

uint32 pmm_alloc_page()
{
	uint32 page = pmm_stack[pmm_stack_top--];
	
	return page;
}

void pmm_free_page(uint32 p)
{
	pmm_stack[++pmm_stack_top] = p;
}
void init_pmm()
{
	/*
	 *获取内存的首地址和末地址
	 */
	mmap_entry_t * mmap_start_addr = (mmap_entry_t *)glb_mboot_ptr->mmap_addr;
	mmap_entry_t * mmap_end_addr = (mmap_entry_t *)glb_mboot_ptr->mmap_addr + glb_mboot_ptr->mmap_length;

	mmap_entry_t * map_entry;

	for (map_entry = mmap_start_addr; map_entry < mmap_end_addr; map_entry++) {
	
		/*找到可以使用的内存地址
		 */
		if(map_entry->type == 1 && map_entry->base_addr_low == 0x100000) {
			
			/*
			 *获取内存中除去内核模块加载的长度的首地址
			 */
			uint32 page_addr = map_entry->base_addr_low + (uint32)(kernel_end - kernel_start);
			uint32 length = map_entry->base_addr_low + map_entry->length_low;

			/*
			 *在不超过最大内存地址和可用的地址空间之外，剩余的物理地址就是可以申请的物理空间，
			 *并将它们复制给物理管理的数组
			 */
			while (page_addr < length && page_addr <= PAM_MAX_SIZE) {
				pmm_free_page(page_addr);
				page_addr += PAM_PAGE_SIZE;
				phy_page_count++;
			}
		}
	}
}
