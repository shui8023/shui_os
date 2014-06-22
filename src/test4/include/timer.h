/*
 * =====================================================================================
 *
 *       Filename:  timer.h
 *
 *    Description:  时钟中断函数的实现
 *
 *        Version:  1.0
 *        Created:  06/21/2014 06:56:32 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef TIMER_H
#define TIMER_H

#include "types.h"

//初始化时钟中断函数
void init_timer(uint32 frequency);

#endif //TIMER_H
