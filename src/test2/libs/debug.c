/*
 * =====================================================================================
 *
 *       Filename:  debug.c
 *
 *    Description:  printk函数的实现
 *
 *        Version:  1.0
 *        Created:  2014年05月06日 20时00分06秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */


#include "debug.h"
#include "screen_operate.h"

static  void printchar(int8 str);
static  int  vprintk(const int8 * format, char * ap);
static  void printi(int number);
static void prints(char *);

void prints(char *s)
{
	screen_string(s, screen_black, screen_red);
}


void printchar(int8 str)
{
	screen_char(str, screen_black, screen_red);


}

void printi(int  number)
{
	char s[32];
	int sign;
	int i;

	i = 0;
	sign = number;

	if (sign < 0) {
		number = -number;
	}

	do {
		s[i++] = number % 10 + '0';
	}while ((number /= 10) > 0);


	if (sign < 0) {
		s[i++] = '-';
	}

	i = i -1;
	for (; i >= 0; i--) { 
		screen_char(s[i], screen_black, screen_red);
	}
}

int printk(const int8 * format, ...)
{
	int number;
	char * arg;

	va_start(arg, format);
	
	number = vprintk(format, arg);

	va_end(arg);
	
	return number;
}

int vprintk(const int8 * format, char * ap)
{
	int pc; 	//printf的返回值
	
	pc = 0;
	for (; *format != '\0'; ++format) {
		if (*format == '%') {
			++format;
			if ((*format) == 'c') {
				printchar(va_arg(ap, int));
				pc++;
			} else if (*format == 'd') {
				printi(va_arg(ap, int));
				pc++;
			} else if (*format == 's') {
				prints(&(va_arg(ap, char)));
				pc++;
			} else {
				printchar(*format);
				pc++;
				
			}
		} else {
			printchar(*format);
			pc++;
		}

	}

	return pc;

}

