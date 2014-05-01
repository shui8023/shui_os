/*
 * =====================================================================================
 *
 *       Filename:  common.c
 *
 *    Description:  主要显示的一些的端口函数
 *
 *        Version:  1.0
 *        Created:  2014年04月21日 18时06分09秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "screen_port.h"

//端口写一个字节
inline void outb(uint16 port, uint8 value)
{
	asm volatile ( "outb %1, %0"::"dN"(port),"a"(value));
}

//端口读一个字节
inline uint8 inb(uint16 port)
{
	uint8 ret;
	asm volatile ("inb %1, %0":: "=a"(ret), "dN"(port));
	
	return ret;
}

//端口写一个字节
inline uint16 inw(uint16 port)
{
	uint16 ret;
	asm volatile ("inw %1, %0" :: "=a"(ret):"dN"(port) );
	
	return ret;
}



