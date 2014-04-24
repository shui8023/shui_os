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
	screen_black = 0, 	 //黑色
	screen_blue  = 1,      //蓝色
	screen_green = 2,      //绿色
	screen_cyan  = 3, 	 //青色
	screen_red   = 4, 	 //红色
	screen_magen = 5, 	 //品红
	screen_brown = 6, 	 //棕色
	screen_white = 7, 	 //白色
	screen_gray  = 8,  	 //灰色
	screen_lblue = 9, 	 //浅蓝
	screen_lgreen= 10, 	 //浅绿
	screen_lcyan = 11, 	 //浅青
	screen_lred  = 12, 	 //浅红
	screen_lmngen= 13, 	 //浅品红
	screen_lbrown= 14, 	 //黄色
	screen_lwhite= 15, 	 //亮白
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

#endif //SCREEN_OPERATE_H
