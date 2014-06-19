/*
 * =====================================================================================
 *
 *       Filename:  elf.c
 *
 *    Description:  读取elf格式文件的信息
 *
 *        Version:  1.0
 *        Created:  2014年05月16日 18时38分37秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */


#include "elf.h"
#include "string.h"

/*@函数是找出段.strtab的地址和大小
 *@.strtab是字符串表,通常是符号表里的符号名所需要的字符串
 *@不明白mb->shndx的意思
 *
 */
elf_t elf_form_multiboot(multiboot_t *mb)
{
	int i;
	elf_t elf;
	//表示multiboot_t中的addr成员是指向elf文件中段的地址
	Elf32_Shar *sh = (Elf32_Shar *)mb->addr;
//	Elf32_Shar *sh = mb->addr;

	//sh_addr是段的起始地址,
	uint32 shstrtab = sh[mb->shndx].sh_addr;

	//mb->num是指ELF文件中有几个段，sh_name是段的名字
	for (i = 0; i < mb->num; i++) {
		const int8 *name = (const int8 *)(shstrtab + sh[i].sh_name);

		if (strcmp(name, ".strtab") == 0) {
			elf.strtab = (const char *)sh[i].sh_addr;
			//sh_size是段的大小
			elf.strtabsz = sh[i].sh_size;
		} 
		if (strcmp(name, ".symtab") == 0) {
			elf.symtab = (Elf32_Sym *)sh[i].sh_addr;
			elf.symtabsz = sh[i].sh_size;
		}
	}
	
	return elf;
}

const char *elf_look_symbol(uint32 addr, elf_t *elf)
{
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
			continue;
		}
		
		if ((addr >= elf->symtab[i].st_value) && 
				(addr < (elf->symtab[i].st_value + elf->symtab[i].st_size))) {
			return (const char *)((uint32)elf->strtab + elf->symtab[i].st_name); 
		}

	}

	return NULL;
}



