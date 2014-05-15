/*
 * =====================================================================================
 *
 *       Filename:  elf.h
 *
 *    Description:  ELF的可执行文件的信息
 *
 *        Version:  1.0
 *        Created:  2014年05月15日 21时35分06秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */
#ifndef ELF_H
#define ELF_H

#include "types.h"
#include "multiboot.h"

/*@sh_name 给出节区名称，是节区头部字符串表节区的索引
 *@sh_type 为节区的内容和语义进行分类
 *@sh_flags 节区支持1位形式的标志，
 *@sh_addr
 */
typedef struct elf_head{
	
	uint32 sh_name;
	uint32 sh_type;
	uint32 sh_flags;
	uint32 sh_addr;
	uint32 sh_offset;
	uint32 sh_size;
	uint32 sh_link;
	uint32 sh_info;
	uint32 sh_addralign;
	uint32 sh_entsize;

}elf_head_t;

/*目标文件的符号表中包含用来定位，重定位程序中的符号的定义引用的信息
 *
 *符号表索引是对此数组的索引
 *@st_name 包含目标文件符号字符串的索引，其中包含符号名的字符串的表示
 *@st_value 此成员给出相关联的符号的取值。
 *@st_size 很多符号具有相关的尺寸大小，例如一个对象的大小中包含的的字节数
 *@st_info 此成员给出类型和绑定的属性，
 *@st_other 该成员当前包含0，没有定义
 *@st_shndx 每个符号表项都以和其他节区间的关系的方式给出定义，此成员给我相关
 *节区头部的表的索引
 */
typedef struct {
	uint32 st_name; 	
	uint32 st_value;
	uint32 st_size;
	uint32 st_info;
	uint32 st_other;
	uint32 st_shndx;
}elf_symbol_table;

#endif //ELF_H

