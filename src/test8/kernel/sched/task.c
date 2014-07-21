/*
 * =====================================================================================
 *
 *       Filename:  task.c
 *
 *    Description:  线程创建的函数的实现
 *
 *        Version:  1.0
 *        Created:  2014年07月21日 18时01分52秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "task.h"
#include "pmm.h"
#include "vmm.h"
#include "string.h"
#include "debug.h"
#include "sched.h"
#include "heap.h"
#include "gdt.h"

//全局的pid的值
pid_t new_pid = 0;

//内核创建线程
uint32 kernel_thread(int (*fn)(void *), void *arg)
{
	//创建一个新的进程描述符
	struct task_struct *new_task = (struct task_struct *)kmalloc(STACK_SIZE);

	bzer(new_task, sizeof(struct task_struct));
	//给进程描述符赋初值,
	new_tack->state = TASK_RUNNABLE;
	new_task->stack = current;
	new_task->pid = now_pid++;
	new_task->mm = NULL;

	uint32 *stack_top = (uint32 *)((uint32)new_task + STACK_SIZE);

	*(--stack_top) = (uint32)arg;
	*(--stack_top) = (uint32)kthread_exit;
	*(--stack_top) = (uint32)fn;

	new_task->context.esp = (uint32)new_task + STACK_SIZE - sizeof(uint32) * 3;

	new_task->context.eflags = 0x200;
	new_task->next = running_proc_head;

	struct task_struct *tail = running_proc_head;

	while (tail->next != running_proc_head) {
		tail = tail->next;
	}
	tail->next = new_task;

	return new_task->pid;
}
