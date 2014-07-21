/*
 * =====================================================================================
 *
 *       Filename:  pmm.h
 *
 *    Description:  物理内存管理
 *
 *        Version:  1.0
 *        Created:  2014年07月12日 17时01分03秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

/*
 *物理内存的管理：
 *主要是获取物理内存的大小
 *采用什么的数据结构来存放和描述物理内存
 *申请和释放物理内存的算法如何实现
 */
#ifndef PMM_H
#define PMM_H

#include "multiboot.h"
#include "types.h"
#include "debug.h"


//为什么是8192,应该是内核的可用的空间
#define STACK_SIZE 8192

//支持的最大物理内存512M
#define PAM_MAX_SIZE  0x20000000

//物理内存叶框大小
#define PAM_PAGE_SIZE 0x1000


//最多支持的物理页面个数
#define PAGE_MAX_SIZE   (PAM_MAX_SIZE/PAM_PAGE_SIZE)

//页掩按照4096对齐地址
#define PHY_PAGE_MASK 0xFFFFF000

//动态分配物理内存页的总数
extern uint32 phy_page_count;

//初始化物理内存管理
void init_pmm();

//返回一个内存页的物理地址
uint32 pmm_alloc_page();

//释放申请的内存
void pmm_free_page(uint32 p);

/*kernel_start是内核加载到内存的起始位置
 *kernel_end 是内核加载到内存的末位置，在链接文件中定义的
 */
extern uint32 kernel_start[];
extern uint32 kernel_end[];


/*
 *打印出grub探测的内存的块
 *
 */
void show_memory_map();


#endif //PMM_H
