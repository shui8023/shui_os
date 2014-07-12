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

extern uint8 kernel_start[];
extern uint8 kernel_end[];
/*
 *打印出grub探测的内存的块
 *
 */
void show_memory_map();


#endif //PMM_H
