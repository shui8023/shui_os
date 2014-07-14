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



/*printf结束之后，让p指向NULL
 *为了安全起见
 *
 */
#define va_end(p) 		\
		(p = (va_list)NULL)



/*不定参函数的printf函数的声明
 *@返回值是输出字符的个数，字符的个数加上输出的参数的个数
 *@format 输出样式的字符串
 *
 */
int printk(const int8 * format, ...);


#endif //DEBUG_H
