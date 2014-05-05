/*
 * =====================================================================================
 *
 *       Filename:  entry.c
 *
 *    Description:  shui 内核的入口函数
 *
 *        Version:  1.0
 *        Created:  2014年04月20日 13时31分03秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 * =====================================================================================
 */

#include "screen_operate.h"
#include "string.h"

int entry()
{

	char * str1 = "duubingyang";
	char *str2 = "dabendan";

	str1 = strcpy(str1, str2);

	screen_clear();
	screen_string(str1, screen_black, screen_red);
		
	

	return 0;
}

