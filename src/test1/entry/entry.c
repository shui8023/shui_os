/*
 * =====================================================================================
 *
 *       Filename:  entry.c
 *
 *    Description:  hurlex 内核的入口函数
 *
 *        Version:  1.0
 *        Created:  2013年10月31日 13时31分03秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Hurley (LiuHuan), liuhuan1992@gmail.com
 *        Company:  Class 1107 of Computer Science and Technology
 *
 * =====================================================================================
 */
int entry()
{
	unsigned char  *input = (unsigned char *)0xb8000;
	
	*input++ = 'H'; 
	*input++ = 0x07;
	
	int i = 0;
	for (i = 0; i < 80 * 25; i++) {
		*input++ = ' ';
		*input++ = 0x07;

	}
	

	return 0;
}

