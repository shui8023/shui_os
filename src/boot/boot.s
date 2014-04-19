;------------------------------------------------
;内核启动的文件，也就是内核从这个文件开始启动,包含多引导头
;-----------------------------------------------

MBOOT_HEADER_MAGIC  		equ 		0x1BADB002  ;magic是表示多重引导头的魔数，它的值必须是0x1BADB002
MBOOT_PAGE_ALIGN 		equ 		1 << 0 	    ;这个就是设置下面的flag的第0位，则所有和操作系统一起启动的    \
							    ;引导模块中必须在页边界4k对齐，

MBOOT_MEM_INFO 			equ 		1 << 1 	    ;这个就是设置下面的flag的第1位，表示结构值至少包含mem * 字段，\
							    ;如果boot loader 可以传递一个memory map， 			  \
						    	    ;那么它也可以被包含。也就是1号位被设置,                       \
				                            ;那么多重引导信息结构中表示内存容量的信息应该被包含。

							    
;flags表示了一个操作系统需要或者期望boot loader所具有的一些特性。
MBOOT_HEADER_FLAGS  		equ 		MBOOT_PAGE_ALIGN |MBOOT_MEM_INFO

;checksum是32位的无符号数，它加上其他的的magic字段（如magic和flags）的和必须是32位的无符号的0
MBOOT_CHECKSUM 			equ 		-(MBOOT_HEADER_MAGIC + MBOOT_HEADER_FLAGS)

;----------------------------------------------------
[BITS 32]  				;代码以32位编译

section  .text 				;代码段
	dd  MBOOT_HEADER_MAGIC 
	dd  MBOOT_HEADER_FLAGS
	dd  MBOOT_CHECKSUM
[GLOBAL start] 				;内核代码的入口，此处向ld链接器说明入口，与脚本中的声明一样的
[GLOBAL glb_mboot_ptr] 			;全局的struct multiboot  *变量
[EXTERN  entry] 			;声明C语言代码的入口
start :
	cli 				;关闭中断
;	mov esp, STACK_TOP
;	mov ebp, 0
;	and esp, 0FFFFFFF0H
	mov [glb_mboot_ptr], ebx
	call entry
	jmp $

section .bss
;stack :
;	resb 32768

glb_mboot_ptr :
	resb 4
;STACK_TOP equ  $-stack-1
