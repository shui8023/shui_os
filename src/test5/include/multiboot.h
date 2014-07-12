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

/*grub从BIOS中读取信息放在这个结构体中。
 *
 *
 *
 */
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
	/*以下的两项指出了保存由BIOS提供的内存分布的缓冲区的地址和长度。
	*mmap_addr 是缓冲区的地址，mmap_length 是缓冲区的总大小
	*缓冲区由一个或者多个下面的mmap_entry_t组成
	*grub将内存探测的结果按每个分段整理为mmap-entry_t结构体数组，mmap_addr是这结构体数组的首地址，mmap_length是整个数组的长度 
	*/
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


/*缓冲区是由这个组成的，结构体是缓冲区的描述
*size 是整个结构体的大小，单位是字节，它可能大于最小值20，它的值是除了size成员之外的成员的大小，不考虑对齐
*base_addr_low 是启动地址的大小，32位，base_addr_high是高32位，启动地址共有64位
*length_low是内存区域大小的低位，32位，length_hight 是高32位，共有64位
*type是相应地址区间的类型，1代表可用，所有其他的值都代表保留区域RAM
*/
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
