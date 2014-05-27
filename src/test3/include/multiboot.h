/*
 * =====================================================================================
 *
 *       Filename:  multiboot.h
 *
 *    Description:  multiboot的头文件，用来读取grub调用内核前和硬件信息和内核本身的信息
 *
 *        Version:  1.0
 *        Created:  2014年05月20日 20时35分09秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef MULTIBOOT_H
#define MULTIBOOT_H

#include "types.h"

typedef struct mulitboot_t {
	uint32 flags;
	uint32 mem_lower;
	uint32 mem_upper;
	uint32 boot_device;
	uint32 cmdline;
	uint32 mods_count;
	uint32 mods_addr;
	uint32 num;
	uint32 size;
	uint32 addr;
	uint32 shndx;
	uint32 mmap_length;
	uint32 mmap_addr;
	uint32 drives_length;
	uint32 config_tables;
	uint32 boot_loader_name;
	uint32 apm_table;
	uint32 vbe_control_info;
	uint32 vbe_mode_info;
	uint32 vbe_mode;
	uint32 vbe_interface_seg;
	uint32 vbe_interface_off;
	uint32 vbe_interface_len;

}__attribute__((packed)) multiboot_t;

typedef struct {
	uint32 size;
	uint32 base_addr_low;
	uint32 base_addr_high;
	uint32 length_low;
	uint32 length_high;
	uint32 type;

}__attribute__((packed)) mmap_entry_t;

extern multiboot_t  *glb_mboot_ptr;

#endif //MULITOOT_H
