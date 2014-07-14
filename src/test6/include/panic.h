/*
 * =====================================================================================
 *
 *       Filename:  panic.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014年05月23日 15时14分50秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef PANIC_H
#define PANIC_H

#include "elf.h"
#include "debug.h"
#include "screen_operate.h"

#define assert(x, info) 		\
	do { 				\
		if(!(x)){ 		\
			panic(info); 	\
		} 			\
	}while(0); 

#define static_assert(x) 		\
	switch(x) {case 0: case (x): ;} 

//初始化调试信息
void init_debug();

void panic(const char *msg);

void print_cur_status();


#endif //PANIC_H
