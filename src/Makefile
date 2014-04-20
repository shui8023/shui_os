#编译所有的文件
C_SOURCES=$(shell find -name  *.c)
#      $(patsubst <pattern>,<replacement>,<text>)
#       名称:模式字符串替换函数——patsubst。
#       功能:查找<text>中的单词(单词以“空格”、“Tab”或“回车”“换行”分隔)是否符合模式<pattern>
#       如果匹配的话则以<replacement>替换。这里,<pattern>可以包括通
#	配符“%”,
#	表示任意长度的字串。
#	如果<replacement>中也包含“%”,
#	那么,
#	<replacement>
#	中的这个“%”将是<pattern>中的那个“%”所代表的字串。
#	(可以用“\”来转义,
#	以“\%”
#	来表示真实含义的“%”字符)
#返回:函数返回被替换过后的字符串
C_OBJECTS=$(patsubst %.c, %.o, $(C_SOURCES)) 
S_SOURCES=$(shell find -name *.s)
S_OBJECTS=$(patsubst %.s, %.o, $(S_SOURCES))

CC=gcc
LD=ld
AS=nasm
RM=rm
#gcc的nostdlib：不要链接标准库文件，主要是C语言运行库
#gcc的-fno-builtin:禁止gcc编译器内置函数。
#m32是产生32位的代码
CC_FLAGS= -c -Wall -ggdb -I -nostdlib -fno-builtin -m32  -fno-stack-protector -gstabs+ 
#-m32是生成32位的代码
#-ggdb use the most expesssive format available ,include GDB extension if at all possible 
#-gstabs+ 是产生stabs格式的调试信息，gcc产生的调试信息格式有很多种stabs,coff xcoff,dwarf-2，这是其中之一，而且最常用
#-I是用来指定的头文件的目录
#-nostdlib是不主动的使用自己的内建函数，除非利用前缀__builtin__进行引用。
#-fno-builtin是不接受不是两个下划线开头的内建函数，
#-fno-stack-protector是关闭堆栈保护功能
LD_FLAGS= -T scripts/kernel.lds -m elf_i386 -nostdlib 
#-T指定链接脚本文件
#-m elf_i386是生成i386平台下的elf格式的可执行文件，
#nostdlib是不链接C语言的标准库
AS_FLAGS= -felf -g -F stabs
#-g是调试信息有效
#-F 该选项用来为输出文件选择一个调试格式，如stabs格式的
#-f指定输出文件的格式，缺省的情况下，输出格式总是bin
all : $(C_OBJECTS) $(S_OBJECTS) link update_image
#makefile 中的第一个目标会被作为其默认目标，由于依赖关系，有的命令会被决议的。
#all作为第一个命令，其依赖于下面的的两个目标。故可以make一个执行所有的编译链接。
#$@是表示的目标集
#$<是表示所有依赖目标集
.c.o:
	@echo 编译代码文件 $< ...
	$(CC) $(CC_FLAGS) $< -o $@
.s.o:
	@echo 编译汇编文件 $< ...
	$(AS) $(AS_FLAGS) $< 

link:
	@echo 链接内核文件
	$(LD) $(LD_FLAGS) $(S_OBJECTS) $(C_OBJECTS) -o shui  

.PHONY:update_image
update_image:
	sudo losetup -d /dev/loop0

.PHONY:umount_image
umount_image:
	sudo losetup -d /dev/loop0

TERMAINAL = gnome-terminal
.PNONY : debug
debug:
	qemu-system-i386  -fda floppy.img -boot a -m 32 -S -s  &
	sleep 1
#	$(TERMAINAL) -e "gdb -q -tui -x tool/gdbinit"
	cgdb -x tool/gdbinit
.PHONY : bochs
bochs:
	sudo  losetup /dev/loop0  floppy.img
	sudo mount /dev/loop0  /mnt
	sudo cp shui  /mnt
	sudo umount /mnt
	bochs  -f  tool/bochsrc.txt 
	losetup -d /dev/loop0


.PHONY :qemu
qemu :
	sudo  losetup /dev/loop0  floppy.img
	sudo mount /dev/loop0  /mnt
	sudo cp shui  /mnt
	sudo umount /mnt
	qemu-system-i386  -fda floppy.img -boot a -m 32
	losetup -d /dev/loop0
#-fda  floppy.img 使用文件floppy.img作为磁盘0的镜像
#-boot a 使用磁盘a启动
#-m使之内存大小


.PHONY :clean
clean:
	$(RM) $(C_OBJECTS) $(S_OBJECTS) shui
