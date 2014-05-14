/*
 * =====================================================================================
 *
 *       Filename:  string.c
 *
 *    Description:  字符串的处理函数的实现
 *
 *        Version:  1.0
 *        Created:  2014年05月05日 18时04分31秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#include "string.h"


/*@功能由src指向地址的连续的len个字节的数据复制到以dest指向地址为起始空间
 *@返回一个指向dest的指针
 *
 */
void *memcpy(void * dest, const void  * src, uint32 len)
{
	uint8 *str1 = dest;
	const uint8 *str2 = src;
	int i;
	
	i = 0;
	
	if (src == NULL || dest == NULL) {
		return dest;
	}

	for ( ; i < len; i++ ) {
		*str1++ = *str2++;
	}
	
	return dest;
}

/*@将字符串初始化为val的字符串
 *
 *
 */
void memset(void * dest, uint8 val, uint32 len)
{
	int number;
	int i;
	char *str = dest;

	number = 0;
	i = 0;

	if (dest == NULL ) {
		return ;
	}

	while (*str != '\0') {
		number++;
	}

	if (number <= len) {
		for ( ; i < len; i++) {
			*str++ = val;
		}
	}  else {
		for (i = 0; i < number; i++ ) {
			*str++ = val;
		}
	}

	*str++ = '\0';

}

/*
 *@将字符串置为0串
 *
 */
void bzer(void *dest, uint32 len)
{
	int number;
	int i;
	char *d = dest;
	number = 0;
	i = 0;

	if (dest == NULL) {
		return ;
	}

	while (*d != '\0') {
		number ++;
	}

	if (number >= len ) { 
		for ( ; i < len; i++) {
			*d++ = '\0';
		}
	} else {
		for (i = 0; i < number; i++) {
			*d++ = '\0';
		}
	}
}

/*@字符串比较函数
 *
 *
 */
int strcmp(const uint8 *dest, const uint8 *val)
{
	const uint8 *s1 = dest;	
	const uint8 *s2 = val;

	uint8 c1, c2;

	do {
		c1 = *s1++;
		c2 = *s2++;
		if (c1 == '\0') {
			return c1 -c2;
		}
	} while (c1 == c2);
	
	return c1 - c2;
}

/*@字符串的复制函数
 *
 *
 */

int8 * strcpy(char *dest, const char *val)
{
	int8 * d = dest;
	const int8 * s = val;

	if (dest == NULL || val == NULL ) {
		return dest;
	}

	do {
		*d++ = *s;
	} while (*s++ != '\0');

	return dest;

}

/*@字符串的连接函数
 *
 *
 */
uint8  *strcat(uint8 *dest, const uint8 *val)
{
	const uint8 *s1 = val;
	uint8 *d = dest;

	if (dest == NULL || val == NULL) {
		return NULL;
	}
	
	for ( ; *d++ != '\0'; ) {
		;
	}

	for (;*s1++ != '\0';  ) {
		*d++ = *s1;
	}

	return dest;
}

/*@字符串的长度的计算
 *
 *
 */
int strlen(const uint8 *src)
{
	int number ;
	
	number = 0;

	while (*src++ != '\0') {
		number++;
	}

	return number;
}

