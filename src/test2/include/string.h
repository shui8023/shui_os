#ifndef STRING_H
#define STRING_H


#include "types.h"

/*@内存拷贝函数
 *
 *
 */
void * memcpy(void * dest, const void * src, uint32 len);

/*@将字符串初始化为val的字符串
 *
 *
 */
void memset(void * dest, uint8 val, uint32 len);

/*
 *@将字符串置为0串
 *
 */
void bzer(void *dest, uint32 len);

/*@字符串比较函数
 *
 *
 */
int strcmp(const uint8 *dest, const uint8 *val);

/*@字符串的复制函数
 *
 *
 */

int8 * strcpy(char *dest, const char *val);

/*@字符串的连接函数
 *
 *
 */
uint8  *strcat(uint8 *dest, const uint8 *val);

/*@字符串的长度的计算
 *
 *
 */
int strlen(const uint8 *src);

#endif //STRING_H
