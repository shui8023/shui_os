/*
 * =====================================================================================
 *
 *       Filename:  entry.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2014年04月20日 13时52分30秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef ENTRY_H
#define ENTRY_H

void clear_screen()
{
	int i = 0;
	unsigned char * show = (unsigned char *)0xb800;

	for (; i < 20000; i++) {
		*show++ = 'H';
		*show++ = 0x7c;
	}
}

#endif
