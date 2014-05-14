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

/*指针的大小都是四个字节的
 *指针的指向大小与指针的类型有关
 *理解错误了哈
 */
static  int16 * screen_point = (int16 *)0xb8000;


static int16 screen_abscissa = 0;
static int16 screen_ordinate = 0;

static void move_point()
{
	uint16 loction = screen_abscissa * 80 + screen_ordinate;

	outb(0x3D4, 14);
	outb(0x3D5, loction >> 8);
	outb(0x3D4, 15);
	outb(0x3D5, loction);
}



void screen_clear()
{
	/*大端模式和小端的模式
	 *小端模式：大大小小
	 *内存地址是地址小的地方
	 */
	int16 back_white = ((screen_black | screen_white) << 8) | 0x20;

	int i = 0;
	for (i = 0; i < 80 * 25; i++) {
		screen_point[i] = back_white;
	}

	screen_abscissa = 0;
	screen_ordinate = 0;

	move_point();
}



 void screen_char(char c, color back_color, color fore_color )
{
	int16 color_s = ((back_color | fore_color) << 8) | ((int16)c);


	if (c == '\n') {
		screen_abscissa ++; 		//换行
		screen_ordinate = 0; 		//重头开始
	} else if (c == 0x09) {
		screen_ordinate = screen_ordinate + 8;
	} else if (c == ' ') {
		screen_ordinate ++;
	}else {
		screen_point[screen_abscissa * 80 + screen_ordinate] = color_s;
		screen_ordinate ++;
	}
	
	if (screen_ordinate > 80) {
		screen_abscissa ++;
		screen_ordinate = 0;
	}

	move_point();
	
}



void screen_string(int8 *string, color back_color, color fore_color)
{
	int i = 0;
	while (string[i] != '\0') {
		screen_char(string[i++], back_color, fore_color);
	}
	
}

