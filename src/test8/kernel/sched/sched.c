/*
 * =====================================================================================
 *
 *       Filename:  sched.c
 *
 *    Description:  进程调度函数的实现
 *
 *        Version:  1.0
 *        Created:  2014年07月21日 15时11分28秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "sched.h"
#include "debug.h"
#include "heap.h"
#include "pmm.h"

//可调度进程的链表
struct task_struct running_pro_head = NULL;

//等待进程链表
struct task_struct *wait_proc_head = NULL;

//当前运行的任务
struct task_struct *current = NULL;

void init_sched()
{
	//内核执行流没有结构来保存任务信息，故放在栈的最低处
	current = (struct task_struct *)(kernel_stack_top - STACK_SIZE);

	current->state = TASK_RUNNABLE;
	current->pid = now_pid++;
	current->stack = current;
	current->mm =  NULL; 	 //内核线程不需要4G的内存空间

	current->next = current;

	running_proc_head = current;

}

//任务调度
void schedule()
{
	if (current) {
		change_task_to(current->next);
	}
}

//调用另一个等待的任务
void change_task_to(struct task_struct *next)
{
	if (current != next) {
		struct task_struct *prev = current;
		current = next;
		switch_to(&(prev->context), &(current->context));
	}
}


