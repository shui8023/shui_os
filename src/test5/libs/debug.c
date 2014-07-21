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
#include "string.h"


static  void printchar(int8 str);

static  int  vprintk(const int8 * format, char * ap);

static  void printi(int number);

static void prints(char *);

static void printx(int number);


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

void printx(int number)
{
	char hex[16] = { '0','1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
	int i = 7;
	int value;

	while (i >= 0) {
		value = number >> 4*i;
		screen_char(hex[value&0xf], screen_black, screen_red);
		i--;

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
				prints((va_arg(ap, char*)));
				pc++;
			} else if (*format == 'x'){
				printx(va_arg(ap, int ));
				pc ++;
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

