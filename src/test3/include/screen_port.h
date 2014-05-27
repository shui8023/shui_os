/*
 * =====================================================================================
 *
 *       Filename:  common.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014年04月21日 18时06分20秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef INCLUDE_SCREEN_PORT_H
#define INCLUDE_SCREEN_PORT_H

#include "types.h"

//端口写一个字节
void outb(uint16 port, uint8 value);

//端口读一个字节
uint8 inb(uint16 port);

//端口写一个字节
uint16 inw(uint16 port);


#endif //COMMON_H
