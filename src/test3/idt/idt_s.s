;所有的中断处理函数中，除了CPU本身保护的现场外，其他的寄存器的保存和恢复都是一样的
;所以每个中断处理函数实现一次显得沉余，而且易错。
;所以很自然的把原本的中断函数逻辑上拆分为三部分，第一部分的一致的现场保护操作
;第二部分是每个中断特有的的处理逻辑，第三部分又是一致的现场恢复。

;定义了两个构造中断处理函数的宏，一个有错误代码，一个没有错误代码
;用于没有错误的中断
%macro ISR_NOERRCODE 	1
[GLOBAL isr%1]
isr%1:
	cli  			;关闭中断
	push 0 			;push 无效的中断错误代码
	push %1 		;push中断号
	jmp isr_common_stub 	
%endmacro

;用于有错误的代码的中断
%macro ISR_NOERRCODE  1
[GLOBAL isr%1]
isr%1:
	cli 
	push %1
	jmp isr_common_stub 
%endmacro

;定义中断处理函数
ISR_NOERRCODE  	0
ISR_NOERRCODE  	1
ISR_NOERRCODE  	2
ISR_NOERRCODE  	3
ISR_NOERRCODE  	4
ISR_NOERRCODE  	5
ISR_NOERRCODE  	6
ISR_NOERRCODE  	10
ISR_NOERRCODE  	11
ISR_NOERRCODE  	12
ISR_NOERRCODE  	13
ISR_NOERRCODE  	14
ISR_NOERRCODE  	15
ISR_NOERRCODE  	16
ISR_NOERRCODE  	17
ISR_NOERRCODE  	18
ISR_NOERRCODE  	19

;intel保留的中断号
ISR_NOERRCODE  	20
ISR_NOERRCODE  	21
ISR_NOERRCODE  	22
ISR_NOERRCODE  	23
ISR_NOERRCODE  	24
ISR_NOERRCODE  	25
ISR_NOERRCODE  	26
ISR_NOERRCODE  	27
ISR_NOERRCODE  	28
ISR_NOERRCODE  	30
ISR_NOERRCODE  	31

;32 - 255用户自定义的
ISR_NOERRCODE   255

;下面的是保护现场的操作
[GLOBAL isr_common_stub]
[EXTERN isr_handler]
;中断服务
isr_common_stub:
	pusha 		;psuhes edi, esi, ebp, esp, ebx, edx, ecx, eax,
	mov ax, ds
	push eax 	;保存数据段描述符
 
	mov ax, 0x10 	;加载内核数据段描述表
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax
	mov ss, ax 

	push esp 	;此时esp寄存器的值等价于pt_regs结构体的指针
	call isr_handler;
	and esp, 4 	;清除压入的参数

	pop ebx
	mov ds, bx
	mov es, bx
	mov fs, bx
	mov gs, bx
	mov ss, bx

	popa
	and esp, 8
	iret

.end:

[GLOBAL idt_flush]
idt_flush:
	mov eax, [esp + 4] 	;参数存入eax寄存器
	lidt [eax] 		;加载到IDTR
	ret 
.end:
