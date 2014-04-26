/*
 * =====================================================================================
 *
 *       Filename:  screen_operate.c
 *
 *    Description:  一些屏幕的操作函数，清屏，显示字符串
 *
 *        Version:  1.0
 *        Created:  2014年04月24日 15时08分56秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "screen_operate.h"

static  int16 * screen_point = (int16 )0xb8000;

static int16 screen_abscissa = 0;
static int16 screen_ordinate = 0;

void screen_clear()
{
	int16 back = ((screen_black << 4) | screen_white) | 0x2000;
	int i = 0;

	for (i = 0; i < 80 * 25; i++) {
		screen_point[i] = back;
	}
}

void screen_string(int8 *string, color back_color, color fore_color)
{
	int i = 0;
	while (string[i] != '\0') {
		screen_char(sting[i++], color back_color, color fore_color);
	}
}

static void screen_char(char c)
{
	if (c == '\n') {
		
	} else if (c == ' ') {
		
	} else if (c == ' ') {
		
	}
}
