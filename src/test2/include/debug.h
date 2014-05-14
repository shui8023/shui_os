/*
 * =====================================================================================
 *
 *       Filename:  debug.h
 *
 *    Description:  printk函数的实现
 *
 *        Version:  1.0
 *        Created:  2014年05月06日 11时49分48秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef DEBUG_H
#define DEBUG_H

#include "types.h"
#include "screen_operate.h"


#define  va_list  	char*

/*@由于栈的地址是原来越小的
 *@宏定义 求出下一个参数的地址
 *涉及到大端和小段模式的理解
 */
#define va_start(ap, first)  	\
		(ap = (va_list)&first + sizeof(first))   
/*@
 *这个是保持ap的增加。
 *
 */
#define va_arg(ap, next) 	\
		(*(next *)(( ap += sizeof(next)) - sizeof(next)))



/*
 *
 *
 */
#define va_end(p) 		\
		(p = (va_list)NULL)


int printk(const int8 * format, ...);
#endif //DEBUG_H
