/*
 * =====================================================================================
 *
 *       Filename:  task.h
 *
 *    Description:  内核线程的创建与切换
 *
 *        Version:  1.0
 *        Created:  2014年07月21日 14时00分53秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef TASK_H
#define TASK_H

#include "types.h"
#include "pmm.h"
#include "vmm.h"

//线程状态的描述符
typedef enum {
	TASK_UNINIT = 0;  	//未初始化
	TASK_SLEEPING = 1; 	//睡眠
	TASK_RUNNABLE = 2; 	//可运行也可能在队列中
	TASK_ZOMBLE = 3; 	//僵死
}task_state;

//线程切换的上下文保存的信息
typedef struct {
	uint32 esp; 		//这个指针指向堆栈中即将执行的地址
	uint32 ebp; 		//来保存堆栈中函数或过程的局部变量
	uint32 ebx; 		//通常作为内存偏移指针使用
	uint32 esi; 		//通常作为内存中源地址指针来使用
	uint32 edi; 		//通常作为内存中目的指针来使用
	uint32 eflage; 		
}context;

//线程内存地址页目录
struct mm_struct {
	pgd_t *pgd_dir;
};

//线程控制块，PCB通常是一个双向循环链表，现在实现了单链表
struct task_struct {
	volatile task_state state;  	//volatile 是避免编译器优化程序，用来修饰不同线程访问和修改的变量
	pid_t  	pid; 			//进程号
	void * stack; 			//进程的内核栈地址
	struct mm_struct *mm; 		//进程内存地址的页目录
	struct context context ; 	//进程切换需要的上下文的信息
	struct task_struct *next; 	//链表的指针
};

//全局的pid变量
extern pid_t now_pid;

//内核线程的创建
int32 kernel_thread(int (*fn)(void *), void *arg);

//线程退出函数
void kthread_exit();

#endif //TASK_H
