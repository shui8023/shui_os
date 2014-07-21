/*
 * =====================================================================================
 *
 *       Filename:  sched.h
 *
 *    Description:  进程调度的一些函数声明
 *
 *        Version:  1.0
 *        Created:  2014年07月21日 14时53分02秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef SCHED_H
#define SCHED_H

#include "task.h"
//可调度进程链表
extern struct task_struct *running_pro_head;

//等待的进程链表
extern struct task_struct *wait_proc_head;

//当前运行的任务
extern struct task_struct *current;

//初始化任务调度
void init_sched();

//任务调度
void schedule();

//任务切换准备
void change_task_to(struct task_struct *next);

//任务切换
void switch_to(struct context *prev, struct context *next);



#endif //SCHED_H
