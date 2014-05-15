/*
 * =====================================================================================
 *
 *       Filename:  multiboot.h
 *
 *    Description:  grub读取系统的中的信息
 *
 *        Version:  1.0
 *        Created:  2014年05月14日 22时04分18秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef INCLUDE_MULTIBOOT_H
#define INCLUDE_MULTIBOOT_H

#include "types.h"

/*
 *@the multiboot header
 *
 */
typedef struct multiboot_header
{
	uint32 magic; 	
	uint32 flags;
	uint32 checksum;
	uint32 header_addr;
	uint32 load_addr;
	uint32 load_end_addr;
	uint32 bss_end_addr;
	uint32 entry_addr;

}multiboot_header_t;

/*
 *@the symbol table for a.out
 *
 */
typedef struct aout_symbol_table
{
	uint32 tabsize;
	uint32 strsize;
	uint32 add;
	uint32 reserved;

}aout_symbol_table_t;

/*
 *@the section header table for ELF
 *
 */

typedef struct elf_section_header_table 
{
	uint32 num;
	uint32 size;
	uint32 addr;
	uint32 shndx;
}elf_section_header_table_t;

/*
 *@the Multiboot information
 *
 */
typedef struct multiboot_info
{
	uint32 flags;  		//multiboot 的版本信息
	/*
	 *mem_lower 和mem_upper分别指出了低端和高端地址内存的大小，
	 *低端内存的首地址是0,高端内存的首地址是1M
	 *低端内存的最大可能值是640k
	 *高端的内存最大可能的值是最大的减去1M，但是并不保证是这个值
	 *
	 */
	uint32 mem_lower; 	
	uint32 mem_upper;
	uint32 boot_device;
	uint32 cmdline;
	uint32 mods_count;
	uint32 mods_addr;
	union {
		aout_symbol_table_t aout_sym;
		elf_section_header_table_t elf_sec;
	}u;
	uint32 mmap_length;
	uint32 mmap_addr;
}multiboot_info_t;

/*@the module structure
 *
 */
typedef struct module {
	uint32 mod_start;
	uint32 mod_end;
	uint32 string;
	uint32 reserved;
}module_t;

/*
 *@the memory map, be careful that the offset () is base_addr_low but no size
 */

typedef struct memory_map
{
	uint32 size;
	uint32 base_addr_low;
	uint32 base_addr_high;
	uint32 length_low;
	uint32 length_high;
	uint32 type;
}memory_map_t;


#endif 
