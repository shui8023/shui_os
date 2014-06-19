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

#define ELF32_ST_TYPE(i)  	\
	((i)&0xf)

/*@sh_name 给出节区名称，是节区头部字符串表节区的索引
 *@sh_type 为节区的内容和语义进行分类
 *@sh_flags 节区支持1位形式的标志，
 *@sh_addr 
 */
typedef struct {
	uint8 e_ident[16];
	uint16 e_type;
	uint16 e_machine;
	uint32 e_version;
	uint32 e_entry;
	uint32 e_phoff;
	uint32 e_shoff;
	uint32 e_flags;
	uint16 e_ehsize;
	uint16 e_phentsize;
	uint16 e_phnum;
	uint16 e_shentsize;
	uint16 e_shnum;
	uint16 e_shstrndx;
}__attribute__((packed)) Elf32_Ehdr;

/*elf32_shdr又被称为段描述符
 * 用readelf ——s 就可以查看信息
 */
typedef struct {
	uint32 sh_name;
	uint32 sh_typr;
	uint32 sh_flags;
	uint32 sh_addr;
	uint32 sh_offset;
	uint32 sh_size;
	uint32 sh_link;
	uint32 sh_info;
	uint32 sh_addralign;
	uint32 sh_entsize;
}__attribute__((packed)) Elf32_Shar;

/*ELF文件中的符号表是文件的一个段
 *符号表的结构很简单
 *
 */
typedef struct {
	uint32 st_name;
	uint32 st_value;
	uint32 st_size;
	uint8 st_info;
	uint8 st_other;
	uint16 st_shndx;
}__attribute__((packed)) Elf32_Sym;

typedef struct elf{
	Elf32_Sym *symtab;
	uint32 symtabsz;
	const char * strtab;
	uint32 strtabsz;
}elf_t;

//获取信息

elf_t elf_form_multiboot(multiboot_t *mb);

//查看ELF的符号的信息
const char *elf_look_symbol(uint32 addr, elf_t *elf);


#endif //ELF_H

