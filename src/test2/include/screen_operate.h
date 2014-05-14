/*
 * =====================================================================================
 *
 *       Filename:  screen_operate.h
 *
 *    Description:  屏幕显示操作的一些头文件
 *
 *        Version:  1.0
 *        Created:  2014年04月24日 15时12分12秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef SCREEN_OPERATE_H
#define SCREEN_OPERATE_H

#include "types.h"


/* 字符的属性分为是前景色和背景色：
 * KRGBIRGB;
 * 前四个字符显示的是背景色，后四个字符表示的是前景色
 */
typedef enum {
	screen_black = 0x0, 	 //黑色
	screen_blue  = 0x1,      //蓝色
	screen_green = 0x2,      //绿色
	screen_cyan  = 0x3, 	 //青色
	screen_red   = 0x4, 	 //红色
	screen_magen = 0x5, 	 //品红
	screen_brown = 0x6, 	 //棕色
	screen_white = 0x7, 	 //白色
	screen_gray  = 0x8,  	 //灰色
	screen_lblue = 0x9, 	 //浅蓝
	screen_lgreen= 0x10, 	 //浅绿
	screen_lcyan = 0x11, 	 //浅青
	screen_lred  = 0x12, 	 //浅红
	screen_lmngen= 0x13, 	 //浅品红
	screen_lbrown= 0x14, 	 //黄色
	screen_lwhite= 0x15, 	 //亮白
}color;


/*清除电脑屏幕
 *实质就是将显示的字符显示为空
 *
 */
void screen_clear();


/*显示字符串
 *就是将要显示的字符显示为将要的显示的字符
 *
 */
void screen_string(char *string, color back_color, color fore_color);
void screen_char(char c, color back_color, color fore_color);
#endif //SCREEN_OPERATE_H
