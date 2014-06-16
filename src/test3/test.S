
shui：     文件格式 elf32-i386


Disassembly of section .text:

00100000 <idt_flush>:
;
;---------------------------------------------------

[GLOBAL idt_flush]
idt_flush:
	mov eax, [esp+4]  ; 参数存入 eax 寄存器
  100000:	8b 44 24 04          	mov    0x4(%esp),%eax
	lidt [eax]        ; 加载到 IDTR
  100004:	0f 01 18             	lidtl  (%eax)
	ret
  100007:	c3                   	ret    

00100008 <isr0>:
	push %1                     ; push 中断号
	jmp isr_common_stub
%endmacro

; 定义中断处理函数
ISR_NOERRCODE  0 	; 0 #DE 除 0 异常
  100008:	fa                   	cli    
  100009:	6a 00                	push   $0x0
  10000b:	6a 00                	push   $0x0
  10000d:	e9 fc 00 00 00       	jmp    10010e <isr_common_stub>

00100012 <isr1>:
ISR_NOERRCODE  1 	; 1 #DB 调试异常
  100012:	fa                   	cli    
  100013:	6a 00                	push   $0x0
  100015:	6a 01                	push   $0x1
  100017:	e9 f2 00 00 00       	jmp    10010e <isr_common_stub>

0010001c <isr2>:
ISR_NOERRCODE  2 	; 2 NMI
  10001c:	fa                   	cli    
  10001d:	6a 00                	push   $0x0
  10001f:	6a 02                	push   $0x2
  100021:	e9 e8 00 00 00       	jmp    10010e <isr_common_stub>

00100026 <isr3>:
ISR_NOERRCODE  3 	; 3 BP 断点异常 
  100026:	fa                   	cli    
  100027:	6a 00                	push   $0x0
  100029:	6a 03                	push   $0x3
  10002b:	e9 de 00 00 00       	jmp    10010e <isr_common_stub>

00100030 <isr4>:
ISR_NOERRCODE  4 	; 4 #OF 溢出 
  100030:	fa                   	cli    
  100031:	6a 00                	push   $0x0
  100033:	6a 04                	push   $0x4
  100035:	e9 d4 00 00 00       	jmp    10010e <isr_common_stub>

0010003a <isr5>:
ISR_NOERRCODE  5 	; 5 #BR 对数组的引用超出边界 
  10003a:	fa                   	cli    
  10003b:	6a 00                	push   $0x0
  10003d:	6a 05                	push   $0x5
  10003f:	e9 ca 00 00 00       	jmp    10010e <isr_common_stub>

00100044 <isr6>:
ISR_NOERRCODE  6 	; 6 #UD 无效或未定义的操作码 
  100044:	fa                   	cli    
  100045:	6a 00                	push   $0x0
  100047:	6a 06                	push   $0x6
  100049:	e9 c0 00 00 00       	jmp    10010e <isr_common_stub>

0010004e <isr7>:
ISR_NOERRCODE  7 	; 7 #NM 设备不可用(无数学协处理器) 
  10004e:	fa                   	cli    
  10004f:	6a 00                	push   $0x0
  100051:	6a 07                	push   $0x7
  100053:	e9 b6 00 00 00       	jmp    10010e <isr_common_stub>

00100058 <isr8>:
ISR_ERRCODE    8 	; 8 #DF 双重故障(有错误代码) 
  100058:	fa                   	cli    
  100059:	6a 08                	push   $0x8
  10005b:	e9 ae 00 00 00       	jmp    10010e <isr_common_stub>

00100060 <isr9>:
ISR_NOERRCODE  9 	; 9 协处理器跨段操作
  100060:	fa                   	cli    
  100061:	6a 00                	push   $0x0
  100063:	6a 09                	push   $0x9
  100065:	e9 a4 00 00 00       	jmp    10010e <isr_common_stub>

0010006a <isr10>:
ISR_ERRCODE   10 	; 10 #TS 无效TSS(有错误代码) 
  10006a:	fa                   	cli    
  10006b:	6a 0a                	push   $0xa
  10006d:	e9 9c 00 00 00       	jmp    10010e <isr_common_stub>

00100072 <isr11>:
ISR_ERRCODE   11 	; 11 #NP 段不存在(有错误代码) 
  100072:	fa                   	cli    
  100073:	6a 0b                	push   $0xb
  100075:	e9 94 00 00 00       	jmp    10010e <isr_common_stub>

0010007a <isr12>:
ISR_ERRCODE   12 	; 12 #SS 栈错误(有错误代码) 
  10007a:	fa                   	cli    
  10007b:	6a 0c                	push   $0xc
  10007d:	e9 8c 00 00 00       	jmp    10010e <isr_common_stub>

00100082 <isr13>:
ISR_ERRCODE   13 	; 13 #GP 常规保护(有错误代码) 
  100082:	fa                   	cli    
  100083:	6a 0d                	push   $0xd
  100085:	e9 84 00 00 00       	jmp    10010e <isr_common_stub>

0010008a <isr14>:
ISR_ERRCODE   14 	; 14 #PF 页故障(有错误代码) 
  10008a:	fa                   	cli    
  10008b:	6a 0e                	push   $0xe
  10008d:	eb 7f                	jmp    10010e <isr_common_stub>

0010008f <isr15>:
ISR_NOERRCODE 15 	; 15 CPU 保留 
  10008f:	fa                   	cli    
  100090:	6a 00                	push   $0x0
  100092:	6a 0f                	push   $0xf
  100094:	eb 78                	jmp    10010e <isr_common_stub>

00100096 <isr16>:
ISR_NOERRCODE 16 	; 16 #MF 浮点处理单元错误 
  100096:	fa                   	cli    
  100097:	6a 00                	push   $0x0
  100099:	6a 10                	push   $0x10
  10009b:	eb 71                	jmp    10010e <isr_common_stub>

0010009d <isr17>:
ISR_ERRCODE   17 	; 17 #AC 对齐检查 
  10009d:	fa                   	cli    
  10009e:	6a 11                	push   $0x11
  1000a0:	eb 6c                	jmp    10010e <isr_common_stub>

001000a2 <isr18>:
ISR_NOERRCODE 18 	; 18 #MC 机器检查 
  1000a2:	fa                   	cli    
  1000a3:	6a 00                	push   $0x0
  1000a5:	6a 12                	push   $0x12
  1000a7:	eb 65                	jmp    10010e <isr_common_stub>

001000a9 <isr19>:
ISR_NOERRCODE 19 	; 19 #XM SIMD(单指令多数据)浮点异常
  1000a9:	fa                   	cli    
  1000aa:	6a 00                	push   $0x0
  1000ac:	6a 13                	push   $0x13
  1000ae:	eb 5e                	jmp    10010e <isr_common_stub>

001000b0 <isr20>:

; 20~31 Intel 保留
ISR_NOERRCODE 20
  1000b0:	fa                   	cli    
  1000b1:	6a 00                	push   $0x0
  1000b3:	6a 14                	push   $0x14
  1000b5:	eb 57                	jmp    10010e <isr_common_stub>

001000b7 <isr21>:
ISR_NOERRCODE 21
  1000b7:	fa                   	cli    
  1000b8:	6a 00                	push   $0x0
  1000ba:	6a 15                	push   $0x15
  1000bc:	eb 50                	jmp    10010e <isr_common_stub>

001000be <isr22>:
ISR_NOERRCODE 22
  1000be:	fa                   	cli    
  1000bf:	6a 00                	push   $0x0
  1000c1:	6a 16                	push   $0x16
  1000c3:	eb 49                	jmp    10010e <isr_common_stub>

001000c5 <isr23>:
ISR_NOERRCODE 23
  1000c5:	fa                   	cli    
  1000c6:	6a 00                	push   $0x0
  1000c8:	6a 17                	push   $0x17
  1000ca:	eb 42                	jmp    10010e <isr_common_stub>

001000cc <isr24>:
ISR_NOERRCODE 24
  1000cc:	fa                   	cli    
  1000cd:	6a 00                	push   $0x0
  1000cf:	6a 18                	push   $0x18
  1000d1:	eb 3b                	jmp    10010e <isr_common_stub>

001000d3 <isr25>:
ISR_NOERRCODE 25
  1000d3:	fa                   	cli    
  1000d4:	6a 00                	push   $0x0
  1000d6:	6a 19                	push   $0x19
  1000d8:	eb 34                	jmp    10010e <isr_common_stub>

001000da <isr26>:
ISR_NOERRCODE 26
  1000da:	fa                   	cli    
  1000db:	6a 00                	push   $0x0
  1000dd:	6a 1a                	push   $0x1a
  1000df:	eb 2d                	jmp    10010e <isr_common_stub>

001000e1 <isr27>:
ISR_NOERRCODE 27
  1000e1:	fa                   	cli    
  1000e2:	6a 00                	push   $0x0
  1000e4:	6a 1b                	push   $0x1b
  1000e6:	eb 26                	jmp    10010e <isr_common_stub>

001000e8 <isr28>:
ISR_NOERRCODE 28
  1000e8:	fa                   	cli    
  1000e9:	6a 00                	push   $0x0
  1000eb:	6a 1c                	push   $0x1c
  1000ed:	eb 1f                	jmp    10010e <isr_common_stub>

001000ef <isr29>:
ISR_NOERRCODE 29
  1000ef:	fa                   	cli    
  1000f0:	6a 00                	push   $0x0
  1000f2:	6a 1d                	push   $0x1d
  1000f4:	eb 18                	jmp    10010e <isr_common_stub>

001000f6 <isr30>:
ISR_NOERRCODE 30
  1000f6:	fa                   	cli    
  1000f7:	6a 00                	push   $0x0
  1000f9:	6a 1e                	push   $0x1e
  1000fb:	eb 11                	jmp    10010e <isr_common_stub>

001000fd <isr31>:
ISR_NOERRCODE 31
  1000fd:	fa                   	cli    
  1000fe:	6a 00                	push   $0x0
  100100:	6a 1f                	push   $0x1f
  100102:	eb 0a                	jmp    10010e <isr_common_stub>

00100104 <isr255>:
; 32～255 用户自定义
ISR_NOERRCODE 255
  100104:	fa                   	cli    
  100105:	6a 00                	push   $0x0
  100107:	68 ff 00 00 00       	push   $0xff
  10010c:	eb 00                	jmp    10010e <isr_common_stub>

0010010e <isr_common_stub>:

[GLOBAL isr_common_stub]
[EXTERN isr_handler]
; 中断服务程序
isr_common_stub:
	pusha                    ; Pushes edi, esi, ebp, esp, ebx, edx, ecx, eax
  10010e:	60                   	pusha  
	mov ax, ds
  10010f:	66 8c d8             	mov    %ds,%ax
	push eax                ; 保存数据段描述符
  100112:	50                   	push   %eax
	
	mov ax, 0x10            ; 加载内核数据段描述符表
  100113:	66 b8 10 00          	mov    $0x10,%ax
	mov ds, ax
  100117:	8e d8                	mov    %eax,%ds
	mov es, ax
  100119:	8e c0                	mov    %eax,%es
	mov fs, ax
  10011b:	8e e0                	mov    %eax,%fs
	mov gs, ax
  10011d:	8e e8                	mov    %eax,%gs
	mov ss, ax
  10011f:	8e d0                	mov    %eax,%ss
	
	push esp		; 此时的 esp 寄存器的值等价于 pt_regs 结构体的指针
  100121:	54                   	push   %esp
	call isr_handler        ; 在 C 语言代码里
  100122:	e8 e8 05 00 00       	call   10070f <isr_handler>
	add esp, 4 		; 清除压入的参数
  100127:	83 c4 04             	add    $0x4,%esp
	
	pop ebx                 ; 恢复原来的数据段描述符
  10012a:	5b                   	pop    %ebx
	mov ds, bx
  10012b:	8e db                	mov    %ebx,%ds
	mov es, bx
  10012d:	8e c3                	mov    %ebx,%es
	mov fs, bx
  10012f:	8e e3                	mov    %ebx,%fs
	mov gs, bx
  100131:	8e eb                	mov    %ebx,%gs
	mov ss, bx
  100133:	8e d3                	mov    %ebx,%ss
	
	popa                     ; Pops edi, esi, ebp, esp, ebx, edx, ecx, eax
  100135:	61                   	popa   
	add esp, 8               ; 清理栈里的 error code 和 ISR
  100136:	83 c4 08             	add    $0x8,%esp
	iret
  100139:	cf                   	iret   

0010013a <isr_common_stub.end>:
  10013a:	66 90                	xchg   %ax,%ax
  10013c:	66 90                	xchg   %ax,%ax
  10013e:	66 90                	xchg   %ax,%ax

;----------------------------------------------------
[BITS 32]  				;代码以32位编译

section  .text 				;代码段
	dd  MBOOT_HEADER_MAGIC 
  100140:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
	dd  MBOOT_HEADER_FLAGS
  100146:	00 00                	add    %al,(%eax)
	dd  MBOOT_CHECKSUM
  100148:	fb                   	sti    
  100149:	4f                   	dec    %edi
  10014a:	52                   	push   %edx
  10014b:	e4 fa                	in     $0xfa,%al

0010014c <start>:
[GLOBAL start] 				;内核代码的入口，此处向ld链接器说明入口，与脚本中的声明一样的
[GLOBAL glb_mboot_ptr]
[EXTERN  entry] 			;声明C语言代码的入口
start :
	cli 				;关闭中断
  10014c:	fa                   	cli    
	mov esp, STACK_TOP
  10014d:	bc 03 80 00 00       	mov    $0x8003,%esp
	mov ebp, 0
  100152:	bd 00 00 00 00       	mov    $0x0,%ebp
	and esp, 0FFFFFF0H
  100157:	81 e4 f0 ff ff 0f    	and    $0xffffff0,%esp
	mov [glb_mboot_ptr], ebx
  10015d:	89 1d 00 b0 10 00    	mov    %ebx,0x10b000
	call entry
  100163:	e8 04 12 00 00       	call   10136c <entry>

00100168 <stop>:
stop :
	hlt
  100168:	f4                   	hlt    
	jmp stop
  100169:	eb fd                	jmp    100168 <stop>
  10016b:	66 90                	xchg   %ax,%ax
  10016d:	66 90                	xchg   %ax,%ax
  10016f:	90                   	nop

00100170 <gdt_flush>:
[GLOBAL gdt_flush]

gdt_flush :
	mov eax, [esp + 4]
  100170:	8b 44 24 04          	mov    0x4(%esp),%eax
	lgdt [eax]
  100174:	0f 01 10             	lgdtl  (%eax)

	mov ax, 0x10
  100177:	66 b8 10 00          	mov    $0x10,%ax
	mov ds, ax
  10017b:	8e d8                	mov    %eax,%ds
	mov es, ax
  10017d:	8e c0                	mov    %eax,%es
	mov fs, ax
  10017f:	8e e0                	mov    %eax,%fs
	mov gs, ax
  100181:	8e e8                	mov    %eax,%gs
	mov ss, ax
  100183:	8e d0                	mov    %eax,%ss
	jmp 0x08:.flush
  100185:	ea 8c 01 10 00 08 00 	ljmp   $0x8,$0x10018c

0010018c <gdt_flush.flush>:

.flush:
	ret 
  10018c:	c3                   	ret    
  10018d:	66 90                	xchg   %ax,%ax
  10018f:	90                   	nop

00100190 <init_idt>:
//声明加载IDTR函数
extern void idt_flush(uint32);

//初始化中断描述符表
void init_idt()
{
  100190:	55                   	push   %ebp
  100191:	89 e5                	mov    %esp,%ebp
  100193:	83 ec 18             	sub    $0x18,%esp
	bzer((uint8*)&interrupt_handlers, sizeof(interrupt_handler_t) * 256);
  100196:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
  10019d:	00 
  10019e:	c7 04 24 20 c8 10 00 	movl   $0x10c820,(%esp)
  1001a5:	e8 6b 08 00 00       	call   100a15 <bzer>
	idt_ptr.limit = sizeof(idt_entry_t) * 256 - 1;
  1001aa:	66 c7 05 00 c0 10 00 	movw   $0x7ff,0x10c000
  1001b1:	ff 07 
	idt_ptr.base = (uint8)&idt_entries;
  1001b3:	b8 20 c0 10 00       	mov    $0x10c020,%eax
  1001b8:	0f b6 c0             	movzbl %al,%eax
  1001bb:	a3 02 c0 10 00       	mov    %eax,0x10c002

	bzer((uint8 *)&idt_entries, sizeof(idt_entry_t) * 256);
  1001c0:	c7 44 24 04 00 08 00 	movl   $0x800,0x4(%esp)
  1001c7:	00 
  1001c8:	c7 04 24 20 c0 10 00 	movl   $0x10c020,(%esp)
  1001cf:	e8 41 08 00 00       	call   100a15 <bzer>

	idt_set_gate( 0, (uint32)isr0,  0x08, 0x8E);
  1001d4:	b8 08 00 10 00       	mov    $0x100008,%eax
  1001d9:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1001e0:	00 
  1001e1:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1001e8:	00 
  1001e9:	89 44 24 04          	mov    %eax,0x4(%esp)
  1001ed:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1001f4:	e8 af 04 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 1, (uint32)isr1,  0x08, 0x8E);
  1001f9:	b8 12 00 10 00       	mov    $0x100012,%eax
  1001fe:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100205:	00 
  100206:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10020d:	00 
  10020e:	89 44 24 04          	mov    %eax,0x4(%esp)
  100212:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  100219:	e8 8a 04 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 2, (uint32)isr2,  0x08, 0x8E);
  10021e:	b8 1c 00 10 00       	mov    $0x10001c,%eax
  100223:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10022a:	00 
  10022b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100232:	00 
  100233:	89 44 24 04          	mov    %eax,0x4(%esp)
  100237:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  10023e:	e8 65 04 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 3, (uint32)isr3,  0x08, 0x8E);
  100243:	b8 26 00 10 00       	mov    $0x100026,%eax
  100248:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10024f:	00 
  100250:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100257:	00 
  100258:	89 44 24 04          	mov    %eax,0x4(%esp)
  10025c:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  100263:	e8 40 04 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 4, (uint32)isr4,  0x08, 0x8E);
  100268:	b8 30 00 10 00       	mov    $0x100030,%eax
  10026d:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100274:	00 
  100275:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10027c:	00 
  10027d:	89 44 24 04          	mov    %eax,0x4(%esp)
  100281:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  100288:	e8 1b 04 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 5, (uint32)isr5,  0x08, 0x8E);
  10028d:	b8 3a 00 10 00       	mov    $0x10003a,%eax
  100292:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100299:	00 
  10029a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1002a1:	00 
  1002a2:	89 44 24 04          	mov    %eax,0x4(%esp)
  1002a6:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  1002ad:	e8 f6 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 6, (uint32)isr6,  0x08, 0x8E);
  1002b2:	b8 44 00 10 00       	mov    $0x100044,%eax
  1002b7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1002be:	00 
  1002bf:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1002c6:	00 
  1002c7:	89 44 24 04          	mov    %eax,0x4(%esp)
  1002cb:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
  1002d2:	e8 d1 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 7, (uint32)isr7,  0x08, 0x8E);
  1002d7:	b8 4e 00 10 00       	mov    $0x10004e,%eax
  1002dc:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1002e3:	00 
  1002e4:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1002eb:	00 
  1002ec:	89 44 24 04          	mov    %eax,0x4(%esp)
  1002f0:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
  1002f7:	e8 ac 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 8, (uint32)isr8,  0x08, 0x8E);
  1002fc:	b8 58 00 10 00       	mov    $0x100058,%eax
  100301:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100308:	00 
  100309:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100310:	00 
  100311:	89 44 24 04          	mov    %eax,0x4(%esp)
  100315:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  10031c:	e8 87 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate( 9, (uint32)isr9,  0x08, 0x8E);
  100321:	b8 60 00 10 00       	mov    $0x100060,%eax
  100326:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10032d:	00 
  10032e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100335:	00 
  100336:	89 44 24 04          	mov    %eax,0x4(%esp)
  10033a:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  100341:	e8 62 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(10, (uint32)isr10, 0x08, 0x8E);
  100346:	b8 6a 00 10 00       	mov    $0x10006a,%eax
  10034b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100352:	00 
  100353:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10035a:	00 
  10035b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10035f:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
  100366:	e8 3d 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(11, (uint32)isr11, 0x08, 0x8E);
  10036b:	b8 72 00 10 00       	mov    $0x100072,%eax
  100370:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100377:	00 
  100378:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10037f:	00 
  100380:	89 44 24 04          	mov    %eax,0x4(%esp)
  100384:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  10038b:	e8 18 03 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(12, (uint32)isr12, 0x08, 0x8E);
  100390:	b8 7a 00 10 00       	mov    $0x10007a,%eax
  100395:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10039c:	00 
  10039d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1003a4:	00 
  1003a5:	89 44 24 04          	mov    %eax,0x4(%esp)
  1003a9:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  1003b0:	e8 f3 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(13, (uint32)isr13, 0x08, 0x8E);
  1003b5:	b8 82 00 10 00       	mov    $0x100082,%eax
  1003ba:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1003c1:	00 
  1003c2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1003c9:	00 
  1003ca:	89 44 24 04          	mov    %eax,0x4(%esp)
  1003ce:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
  1003d5:	e8 ce 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(14, (uint32)isr14, 0x08, 0x8E);
  1003da:	b8 8a 00 10 00       	mov    $0x10008a,%eax
  1003df:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1003e6:	00 
  1003e7:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1003ee:	00 
  1003ef:	89 44 24 04          	mov    %eax,0x4(%esp)
  1003f3:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
  1003fa:	e8 a9 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(15, (uint32)isr15, 0x08, 0x8E);
  1003ff:	b8 8f 00 10 00       	mov    $0x10008f,%eax
  100404:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10040b:	00 
  10040c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100413:	00 
  100414:	89 44 24 04          	mov    %eax,0x4(%esp)
  100418:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
  10041f:	e8 84 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(16, (uint32)isr16, 0x08, 0x8E);
  100424:	b8 96 00 10 00       	mov    $0x100096,%eax
  100429:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100430:	00 
  100431:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100438:	00 
  100439:	89 44 24 04          	mov    %eax,0x4(%esp)
  10043d:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  100444:	e8 5f 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(17, (uint32)isr17, 0x08, 0x8E);
  100449:	b8 9d 00 10 00       	mov    $0x10009d,%eax
  10044e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100455:	00 
  100456:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10045d:	00 
  10045e:	89 44 24 04          	mov    %eax,0x4(%esp)
  100462:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
  100469:	e8 3a 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(18, (uint32)isr18, 0x08, 0x8E);
  10046e:	b8 a2 00 10 00       	mov    $0x1000a2,%eax
  100473:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10047a:	00 
  10047b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100482:	00 
  100483:	89 44 24 04          	mov    %eax,0x4(%esp)
  100487:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
  10048e:	e8 15 02 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(19, (uint32)isr19, 0x08, 0x8E);
  100493:	b8 a9 00 10 00       	mov    $0x1000a9,%eax
  100498:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10049f:	00 
  1004a0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1004a7:	00 
  1004a8:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004ac:	c7 04 24 13 00 00 00 	movl   $0x13,(%esp)
  1004b3:	e8 f0 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(20, (uint32)isr20, 0x08, 0x8E);
  1004b8:	b8 b0 00 10 00       	mov    $0x1000b0,%eax
  1004bd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1004c4:	00 
  1004c5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1004cc:	00 
  1004cd:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004d1:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
  1004d8:	e8 cb 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(21, (uint32)isr21, 0x08, 0x8E);
  1004dd:	b8 b7 00 10 00       	mov    $0x1000b7,%eax
  1004e2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1004e9:	00 
  1004ea:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1004f1:	00 
  1004f2:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004f6:	c7 04 24 15 00 00 00 	movl   $0x15,(%esp)
  1004fd:	e8 a6 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(22, (uint32)isr22, 0x08, 0x8E);
  100502:	b8 be 00 10 00       	mov    $0x1000be,%eax
  100507:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10050e:	00 
  10050f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100516:	00 
  100517:	89 44 24 04          	mov    %eax,0x4(%esp)
  10051b:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
  100522:	e8 81 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(23, (uint32)isr23, 0x08, 0x8E);
  100527:	b8 c5 00 10 00       	mov    $0x1000c5,%eax
  10052c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100533:	00 
  100534:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10053b:	00 
  10053c:	89 44 24 04          	mov    %eax,0x4(%esp)
  100540:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
  100547:	e8 5c 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(24, (uint32)isr24, 0x08, 0x8E);
  10054c:	b8 cc 00 10 00       	mov    $0x1000cc,%eax
  100551:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100558:	00 
  100559:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100560:	00 
  100561:	89 44 24 04          	mov    %eax,0x4(%esp)
  100565:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  10056c:	e8 37 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(25, (uint32)isr25, 0x08, 0x8E);
  100571:	b8 d3 00 10 00       	mov    $0x1000d3,%eax
  100576:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10057d:	00 
  10057e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100585:	00 
  100586:	89 44 24 04          	mov    %eax,0x4(%esp)
  10058a:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
  100591:	e8 12 01 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(26, (uint32)isr26, 0x08, 0x8E);
  100596:	b8 da 00 10 00       	mov    $0x1000da,%eax
  10059b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1005a2:	00 
  1005a3:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1005aa:	00 
  1005ab:	89 44 24 04          	mov    %eax,0x4(%esp)
  1005af:	c7 04 24 1a 00 00 00 	movl   $0x1a,(%esp)
  1005b6:	e8 ed 00 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(27, (uint32)isr27, 0x08, 0x8E);
  1005bb:	b8 e1 00 10 00       	mov    $0x1000e1,%eax
  1005c0:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1005c7:	00 
  1005c8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1005cf:	00 
  1005d0:	89 44 24 04          	mov    %eax,0x4(%esp)
  1005d4:	c7 04 24 1b 00 00 00 	movl   $0x1b,(%esp)
  1005db:	e8 c8 00 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(28, (uint32)isr28, 0x08, 0x8E);
  1005e0:	b8 e8 00 10 00       	mov    $0x1000e8,%eax
  1005e5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1005ec:	00 
  1005ed:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1005f4:	00 
  1005f5:	89 44 24 04          	mov    %eax,0x4(%esp)
  1005f9:	c7 04 24 1c 00 00 00 	movl   $0x1c,(%esp)
  100600:	e8 a3 00 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(29, (uint32)isr29, 0x08, 0x8E);
  100605:	b8 ef 00 10 00       	mov    $0x1000ef,%eax
  10060a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100611:	00 
  100612:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100619:	00 
  10061a:	89 44 24 04          	mov    %eax,0x4(%esp)
  10061e:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
  100625:	e8 7e 00 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(30, (uint32)isr30, 0x08, 0x8E);
  10062a:	b8 f6 00 10 00       	mov    $0x1000f6,%eax
  10062f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100636:	00 
  100637:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10063e:	00 
  10063f:	89 44 24 04          	mov    %eax,0x4(%esp)
  100643:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
  10064a:	e8 59 00 00 00       	call   1006a8 <idt_set_gate>
	idt_set_gate(31, (uint32)isr31, 0x08, 0x8E);
  10064f:	b8 fd 00 10 00       	mov    $0x1000fd,%eax
  100654:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10065b:	00 
  10065c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100663:	00 
  100664:	89 44 24 04          	mov    %eax,0x4(%esp)
  100668:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
  10066f:	e8 34 00 00 00       	call   1006a8 <idt_set_gate>
	
	//实现系统调用的
	idt_set_gate(255, (uint32)isr255, 0x08, 0x8E);
  100674:	b8 04 01 10 00       	mov    $0x100104,%eax
  100679:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100680:	00 
  100681:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100688:	00 
  100689:	89 44 24 04          	mov    %eax,0x4(%esp)
  10068d:	c7 04 24 ff 00 00 00 	movl   $0xff,(%esp)
  100694:	e8 0f 00 00 00       	call   1006a8 <idt_set_gate>

	//更新设置中断描述符表
	idt_flush((uint32)&idt_ptr);
  100699:	b8 00 c0 10 00       	mov    $0x10c000,%eax
  10069e:	89 04 24             	mov    %eax,(%esp)
  1006a1:	e8 5a f9 ff ff       	call   100000 <idt_flush>
}
  1006a6:	c9                   	leave  
  1006a7:	c3                   	ret    

001006a8 <idt_set_gate>:

//设置中断描述符
static void idt_set_gate(uint8 num, uint32 base, uint16 sel, uint8 flags)
{
  1006a8:	55                   	push   %ebp
  1006a9:	89 e5                	mov    %esp,%ebp
  1006ab:	83 ec 0c             	sub    $0xc,%esp
  1006ae:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1006b1:	8b 55 10             	mov    0x10(%ebp),%edx
  1006b4:	8b 45 14             	mov    0x14(%ebp),%eax
  1006b7:	88 4d fc             	mov    %cl,-0x4(%ebp)
  1006ba:	66 89 55 f8          	mov    %dx,-0x8(%ebp)
  1006be:	88 45 f4             	mov    %al,-0xc(%ebp)
	idt_entries[num].base_low = base & 0xffff;
  1006c1:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006c5:	8b 55 0c             	mov    0xc(%ebp),%edx
  1006c8:	66 89 14 c5 20 c0 10 	mov    %dx,0x10c020(,%eax,8)
  1006cf:	00 
	idt_entries[num].base_high = (base >> 16) & 0xffff;
  1006d0:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006d4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1006d7:	c1 ea 10             	shr    $0x10,%edx
  1006da:	66 89 14 c5 26 c0 10 	mov    %dx,0x10c026(,%eax,8)
  1006e1:	00 

	idt_entries[num].segment  = sel;
  1006e2:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006e6:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
  1006ea:	66 89 14 c5 22 c0 10 	mov    %dx,0x10c022(,%eax,8)
  1006f1:	00 
	idt_entries[num].must_0 = 0;
  1006f2:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006f6:	c6 04 c5 24 c0 10 00 	movb   $0x0,0x10c024(,%eax,8)
  1006fd:	00 

	idt_entries[num].flag = flags; // | 0x60
  1006fe:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100702:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
  100706:	88 14 c5 25 c0 10 00 	mov    %dl,0x10c025(,%eax,8)

}
  10070d:	c9                   	leave  
  10070e:	c3                   	ret    

0010070f <isr_handler>:

//调用中断处理函数
void isr_handler(pt_regs_t *regs)
{
  10070f:	55                   	push   %ebp
  100710:	89 e5                	mov    %esp,%ebp
  100712:	83 ec 18             	sub    $0x18,%esp
	if (interrupt_handlers[regs->int_no]) {
  100715:	8b 45 08             	mov    0x8(%ebp),%eax
  100718:	8b 40 20             	mov    0x20(%eax),%eax
  10071b:	8b 04 85 20 c8 10 00 	mov    0x10c820(,%eax,4),%eax
  100722:	85 c0                	test   %eax,%eax
  100724:	74 17                	je     10073d <isr_handler+0x2e>
		interrupt_handlers[regs->int_no](regs);	
  100726:	8b 45 08             	mov    0x8(%ebp),%eax
  100729:	8b 40 20             	mov    0x20(%eax),%eax
  10072c:	8b 04 85 20 c8 10 00 	mov    0x10c820(,%eax,4),%eax
  100733:	8b 55 08             	mov    0x8(%ebp),%edx
  100736:	89 14 24             	mov    %edx,(%esp)
  100739:	ff d0                	call   *%eax
  10073b:	eb 16                	jmp    100753 <isr_handler+0x44>
	} else {
		printk("unhanddled interuppt %d\n", regs->int_no);
  10073d:	8b 45 08             	mov    0x8(%ebp),%eax
  100740:	8b 40 20             	mov    0x20(%eax),%eax
  100743:	89 44 24 04          	mov    %eax,0x4(%esp)
  100747:	c7 04 24 24 24 10 00 	movl   $0x102424,(%esp)
  10074e:	e8 f4 07 00 00       	call   100f47 <printk>
	}
}
  100753:	c9                   	leave  
  100754:	c3                   	ret    

00100755 <registers_interrupt_handler>:

//注册一个中断描述符函数
void registers_interrupt_handler(uint8 n, interrupt_handler_t h)
{
  100755:	55                   	push   %ebp
  100756:	89 e5                	mov    %esp,%ebp
  100758:	83 ec 04             	sub    $0x4,%esp
  10075b:	8b 45 08             	mov    0x8(%ebp),%eax
  10075e:	88 45 fc             	mov    %al,-0x4(%ebp)
	interrupt_handlers[n] = h;
  100761:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100765:	8b 55 0c             	mov    0xc(%ebp),%edx
  100768:	89 14 85 20 c8 10 00 	mov    %edx,0x10c820(,%eax,4)
}
  10076f:	c9                   	leave  
  100770:	c3                   	ret    
  100771:	66 90                	xchg   %ax,%ax
  100773:	90                   	nop

00100774 <elf_form_multiboot>:
 *@.strtab是字符串表,通常是符号表里的符号名所需要的字符串
 *@不明白mb->shndx的意思
 *
 */
elf_t elf_form_multiboot(multiboot_t *mb)
{
  100774:	55                   	push   %ebp
  100775:	89 e5                	mov    %esp,%ebp
  100777:	83 ec 38             	sub    $0x38,%esp
	int i;
	elf_t elf;
	//表示multiboot_t中的addr成员是指向elf文件中段的地址
	Elf32_Shar *sh = (Elf32_Shar *)mb->addr;
  10077a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10077d:	8b 40 24             	mov    0x24(%eax),%eax
  100780:	89 45 f0             	mov    %eax,-0x10(%ebp)
//	Elf32_Shar *sh = mb->addr;

	//sh_addr是段的起始地址,
	uint32 shstrtab = sh[mb->shndx].sh_addr;
  100783:	8b 45 0c             	mov    0xc(%ebp),%eax
  100786:	8b 50 28             	mov    0x28(%eax),%edx
  100789:	89 d0                	mov    %edx,%eax
  10078b:	c1 e0 02             	shl    $0x2,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	c1 e0 03             	shl    $0x3,%eax
  100793:	89 c2                	mov    %eax,%edx
  100795:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100798:	01 d0                	add    %edx,%eax
  10079a:	8b 40 0c             	mov    0xc(%eax),%eax
  10079d:	89 45 ec             	mov    %eax,-0x14(%ebp)

	//mb->num是指ELF文件中有几个段，sh_name是段的名字
	for (i = 0; i < mb->num; i++) {
  1007a0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007a7:	e9 b8 00 00 00       	jmp    100864 <elf_form_multiboot+0xf0>
		const int8 *name = (const int8 *)(shstrtab + sh[i].sh_name);
  1007ac:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007af:	89 d0                	mov    %edx,%eax
  1007b1:	c1 e0 02             	shl    $0x2,%eax
  1007b4:	01 d0                	add    %edx,%eax
  1007b6:	c1 e0 03             	shl    $0x3,%eax
  1007b9:	89 c2                	mov    %eax,%edx
  1007bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1007be:	01 d0                	add    %edx,%eax
  1007c0:	8b 10                	mov    (%eax),%edx
  1007c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1007c5:	01 d0                	add    %edx,%eax
  1007c7:	89 45 e8             	mov    %eax,-0x18(%ebp)

		if (strcmp(name, ".strtab") == 0) {
  1007ca:	c7 44 24 04 3d 24 10 	movl   $0x10243d,0x4(%esp)
  1007d1:	00 
  1007d2:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1007d5:	89 04 24             	mov    %eax,(%esp)
  1007d8:	e8 ae 02 00 00       	call   100a8b <strcmp>
  1007dd:	85 c0                	test   %eax,%eax
  1007df:	75 34                	jne    100815 <elf_form_multiboot+0xa1>
			elf.strtab = (const char *)sh[i].sh_addr;
  1007e1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007e4:	89 d0                	mov    %edx,%eax
  1007e6:	c1 e0 02             	shl    $0x2,%eax
  1007e9:	01 d0                	add    %edx,%eax
  1007eb:	c1 e0 03             	shl    $0x3,%eax
  1007ee:	89 c2                	mov    %eax,%edx
  1007f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1007f3:	01 d0                	add    %edx,%eax
  1007f5:	8b 40 0c             	mov    0xc(%eax),%eax
  1007f8:	89 45 e0             	mov    %eax,-0x20(%ebp)
			//sh_size是段的大小
			elf.strtabsz = sh[i].sh_size;
  1007fb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007fe:	89 d0                	mov    %edx,%eax
  100800:	c1 e0 02             	shl    $0x2,%eax
  100803:	01 d0                	add    %edx,%eax
  100805:	c1 e0 03             	shl    $0x3,%eax
  100808:	89 c2                	mov    %eax,%edx
  10080a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10080d:	01 d0                	add    %edx,%eax
  10080f:	8b 40 14             	mov    0x14(%eax),%eax
  100812:	89 45 e4             	mov    %eax,-0x1c(%ebp)
		} 
		if (strcmp(name, ".symtab") == 0) {
  100815:	c7 44 24 04 45 24 10 	movl   $0x102445,0x4(%esp)
  10081c:	00 
  10081d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100820:	89 04 24             	mov    %eax,(%esp)
  100823:	e8 63 02 00 00       	call   100a8b <strcmp>
  100828:	85 c0                	test   %eax,%eax
  10082a:	75 34                	jne    100860 <elf_form_multiboot+0xec>
			elf.symtab = (Elf32_Sym *)sh[i].sh_addr;
  10082c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10082f:	89 d0                	mov    %edx,%eax
  100831:	c1 e0 02             	shl    $0x2,%eax
  100834:	01 d0                	add    %edx,%eax
  100836:	c1 e0 03             	shl    $0x3,%eax
  100839:	89 c2                	mov    %eax,%edx
  10083b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10083e:	01 d0                	add    %edx,%eax
  100840:	8b 40 0c             	mov    0xc(%eax),%eax
  100843:	89 45 d8             	mov    %eax,-0x28(%ebp)
			elf.symtabsz = sh[i].sh_size;
  100846:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100849:	89 d0                	mov    %edx,%eax
  10084b:	c1 e0 02             	shl    $0x2,%eax
  10084e:	01 d0                	add    %edx,%eax
  100850:	c1 e0 03             	shl    $0x3,%eax
  100853:	89 c2                	mov    %eax,%edx
  100855:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100858:	01 d0                	add    %edx,%eax
  10085a:	8b 40 14             	mov    0x14(%eax),%eax
  10085d:	89 45 dc             	mov    %eax,-0x24(%ebp)

	//sh_addr是段的起始地址,
	uint32 shstrtab = sh[mb->shndx].sh_addr;

	//mb->num是指ELF文件中有几个段，sh_name是段的名字
	for (i = 0; i < mb->num; i++) {
  100860:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100864:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100867:	8b 45 0c             	mov    0xc(%ebp),%eax
  10086a:	8b 40 1c             	mov    0x1c(%eax),%eax
  10086d:	39 c2                	cmp    %eax,%edx
  10086f:	0f 82 37 ff ff ff    	jb     1007ac <elf_form_multiboot+0x38>
			elf.symtab = (Elf32_Sym *)sh[i].sh_addr;
			elf.symtabsz = sh[i].sh_size;
		}
	}
	
	return elf;
  100875:	8b 45 08             	mov    0x8(%ebp),%eax
  100878:	8b 55 d8             	mov    -0x28(%ebp),%edx
  10087b:	89 10                	mov    %edx,(%eax)
  10087d:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100880:	89 50 04             	mov    %edx,0x4(%eax)
  100883:	8b 55 e0             	mov    -0x20(%ebp),%edx
  100886:	89 50 08             	mov    %edx,0x8(%eax)
  100889:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10088c:	89 50 0c             	mov    %edx,0xc(%eax)
}
  10088f:	8b 45 08             	mov    0x8(%ebp),%eax
  100892:	c9                   	leave  
  100893:	c2 04 00             	ret    $0x4

00100896 <elf_look_symbol>:

const char *elf_look_symbol(uint32 addr, elf_t *elf)
{
  100896:	55                   	push   %ebp
  100897:	89 e5                	mov    %esp,%ebp
  100899:	83 ec 10             	sub    $0x10,%esp
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
  10089c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1008a3:	eb 78                	jmp    10091d <elf_look_symbol+0x87>
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
  1008a5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008a8:	8b 00                	mov    (%eax),%eax
  1008aa:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1008ad:	c1 e2 04             	shl    $0x4,%edx
  1008b0:	01 d0                	add    %edx,%eax
  1008b2:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
  1008b6:	0f b6 c0             	movzbl %al,%eax
  1008b9:	83 e0 0f             	and    $0xf,%eax
  1008bc:	83 f8 02             	cmp    $0x2,%eax
  1008bf:	75 57                	jne    100918 <elf_look_symbol+0x82>
			continue;
		}
		
		if ((addr >= elf->symtab[i].st_value) && 
  1008c1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008c4:	8b 00                	mov    (%eax),%eax
  1008c6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1008c9:	c1 e2 04             	shl    $0x4,%edx
  1008cc:	01 d0                	add    %edx,%eax
  1008ce:	8b 40 04             	mov    0x4(%eax),%eax
  1008d1:	3b 45 08             	cmp    0x8(%ebp),%eax
  1008d4:	77 43                	ja     100919 <elf_look_symbol+0x83>
				(addr < (elf->symtab[i].st_value + elf->symtab[i].st_size))) {
  1008d6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008d9:	8b 00                	mov    (%eax),%eax
  1008db:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1008de:	c1 e2 04             	shl    $0x4,%edx
  1008e1:	01 d0                	add    %edx,%eax
  1008e3:	8b 50 04             	mov    0x4(%eax),%edx
  1008e6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008e9:	8b 00                	mov    (%eax),%eax
  1008eb:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1008ee:	c1 e1 04             	shl    $0x4,%ecx
  1008f1:	01 c8                	add    %ecx,%eax
  1008f3:	8b 40 08             	mov    0x8(%eax),%eax
  1008f6:	01 d0                	add    %edx,%eax
	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
			continue;
		}
		
		if ((addr >= elf->symtab[i].st_value) && 
  1008f8:	3b 45 08             	cmp    0x8(%ebp),%eax
  1008fb:	76 1c                	jbe    100919 <elf_look_symbol+0x83>
				(addr < (elf->symtab[i].st_value + elf->symtab[i].st_size))) {
			return (const char *)((uint32)elf->strtab + elf->symtab[i].st_name); 
  1008fd:	8b 45 0c             	mov    0xc(%ebp),%eax
  100900:	8b 40 08             	mov    0x8(%eax),%eax
  100903:	89 c2                	mov    %eax,%edx
  100905:	8b 45 0c             	mov    0xc(%ebp),%eax
  100908:	8b 00                	mov    (%eax),%eax
  10090a:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10090d:	c1 e1 04             	shl    $0x4,%ecx
  100910:	01 c8                	add    %ecx,%eax
  100912:	8b 00                	mov    (%eax),%eax
  100914:	01 d0                	add    %edx,%eax
  100916:	eb 1e                	jmp    100936 <elf_look_symbol+0xa0>
{
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
			continue;
  100918:	90                   	nop

const char *elf_look_symbol(uint32 addr, elf_t *elf)
{
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
  100919:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10091d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100920:	8b 45 0c             	mov    0xc(%ebp),%eax
  100923:	8b 40 04             	mov    0x4(%eax),%eax
  100926:	c1 e8 04             	shr    $0x4,%eax
  100929:	39 c2                	cmp    %eax,%edx
  10092b:	0f 82 74 ff ff ff    	jb     1008a5 <elf_look_symbol+0xf>
			return (const char *)((uint32)elf->strtab + elf->symtab[i].st_name); 
		}

	}

	return NULL;
  100931:	b8 00 00 00 00       	mov    $0x0,%eax
}
  100936:	c9                   	leave  
  100937:	c3                   	ret    

00100938 <memcpy>:
/*@功能由src指向地址的连续的len个字节的数据复制到以dest指向地址为起始空间
 *@返回一个指向dest的指针
 *
 */
void *memcpy(void * dest, const void  * src, uint32 len)
{
  100938:	55                   	push   %ebp
  100939:	89 e5                	mov    %esp,%ebp
  10093b:	83 ec 10             	sub    $0x10,%esp
	int8 *str1 = dest;
  10093e:	8b 45 08             	mov    0x8(%ebp),%eax
  100941:	89 45 fc             	mov    %eax,-0x4(%ebp)
	const int8 *str2 = src;
  100944:	8b 45 0c             	mov    0xc(%ebp),%eax
  100947:	89 45 f8             	mov    %eax,-0x8(%ebp)
	int i;
	
	i = 0;
  10094a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	
	if (src == NULL || dest == NULL) {
  100951:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100955:	74 06                	je     10095d <memcpy+0x25>
  100957:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10095b:	75 1e                	jne    10097b <memcpy+0x43>
		return dest;
  10095d:	8b 45 08             	mov    0x8(%ebp),%eax
  100960:	eb 25                	jmp    100987 <memcpy+0x4f>
	}

	for ( ; i < len; i++ ) {
		*str1++ = *str2++;
  100962:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100965:	0f b6 10             	movzbl (%eax),%edx
  100968:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10096b:	88 10                	mov    %dl,(%eax)
  10096d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100971:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
	
	if (src == NULL || dest == NULL) {
		return dest;
	}

	for ( ; i < len; i++ ) {
  100975:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100979:	eb 01                	jmp    10097c <memcpy+0x44>
  10097b:	90                   	nop
  10097c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10097f:	3b 45 10             	cmp    0x10(%ebp),%eax
  100982:	72 de                	jb     100962 <memcpy+0x2a>
		*str1++ = *str2++;
	}
	
	return dest;
  100984:	8b 45 08             	mov    0x8(%ebp),%eax
}
  100987:	c9                   	leave  
  100988:	c3                   	ret    

00100989 <memset>:
/*@将字符串初始化为val的字符串
 *
 *
 */
void memset(void * dest, int8 val, uint32 len)
{
  100989:	55                   	push   %ebp
  10098a:	89 e5                	mov    %esp,%ebp
  10098c:	83 ec 14             	sub    $0x14,%esp
  10098f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100992:	88 45 ec             	mov    %al,-0x14(%ebp)
	int number;
	int i;
	char *str = dest;
  100995:	8b 45 08             	mov    0x8(%ebp),%eax
  100998:	89 45 f4             	mov    %eax,-0xc(%ebp)

	number = 0;
  10099b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
	i = 0;
  1009a2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)

	if (dest == NULL ) {
  1009a9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1009ad:	75 08                	jne    1009b7 <memset+0x2e>
		return ;
  1009af:	eb 62                	jmp    100a13 <memset+0x8a>
	}

	while (*str != '\0') {
		number++;
  1009b1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1009b5:	eb 01                	jmp    1009b8 <memset+0x2f>

	if (dest == NULL ) {
		return ;
	}

	while (*str != '\0') {
  1009b7:	90                   	nop
  1009b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009bb:	0f b6 00             	movzbl (%eax),%eax
  1009be:	84 c0                	test   %al,%al
  1009c0:	75 ef                	jne    1009b1 <memset+0x28>
		number++;
	}

	if (number <= len) {
  1009c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1009c5:	3b 45 10             	cmp    0x10(%ebp),%eax
  1009c8:	77 1d                	ja     1009e7 <memset+0x5e>
		for ( ; i < len; i++) {
  1009ca:	eb 11                	jmp    1009dd <memset+0x54>
			*str++ = val;
  1009cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009cf:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  1009d3:	88 10                	mov    %dl,(%eax)
  1009d5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	while (*str != '\0') {
		number++;
	}

	if (number <= len) {
		for ( ; i < len; i++) {
  1009d9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1009dd:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1009e0:	3b 45 10             	cmp    0x10(%ebp),%eax
  1009e3:	72 e7                	jb     1009cc <memset+0x43>
  1009e5:	eb 22                	jmp    100a09 <memset+0x80>
			*str++ = val;
		}
	}  else {
		for (i = 0; i < number; i++ ) {
  1009e7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1009ee:	eb 11                	jmp    100a01 <memset+0x78>
			*str++ = val;
  1009f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009f3:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  1009f7:	88 10                	mov    %dl,(%eax)
  1009f9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if (number <= len) {
		for ( ; i < len; i++) {
			*str++ = val;
		}
	}  else {
		for (i = 0; i < number; i++ ) {
  1009fd:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a01:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a04:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100a07:	7c e7                	jl     1009f0 <memset+0x67>
			*str++ = val;
		}
	}

	*str++ = '\0';
  100a09:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a0c:	c6 00 00             	movb   $0x0,(%eax)
  100a0f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)

}
  100a13:	c9                   	leave  
  100a14:	c3                   	ret    

00100a15 <bzer>:
/*
 *@将字符串置为0串
 *
 */
void bzer(void *dest, uint32 len)
{
  100a15:	55                   	push   %ebp
  100a16:	89 e5                	mov    %esp,%ebp
  100a18:	83 ec 10             	sub    $0x10,%esp
	int number;
	int i;
	char *d = dest;
  100a1b:	8b 45 08             	mov    0x8(%ebp),%eax
  100a1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
	number = 0;
  100a21:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
	i = 0;
  100a28:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)

	if (dest == NULL) {
  100a2f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100a33:	75 08                	jne    100a3d <bzer+0x28>
		return ;
  100a35:	eb 52                	jmp    100a89 <bzer+0x74>
	}

	while (*d != '\0') {
		number ++;
  100a37:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100a3b:	eb 01                	jmp    100a3e <bzer+0x29>

	if (dest == NULL) {
		return ;
	}

	while (*d != '\0') {
  100a3d:	90                   	nop
  100a3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a41:	0f b6 00             	movzbl (%eax),%eax
  100a44:	84 c0                	test   %al,%al
  100a46:	75 ef                	jne    100a37 <bzer+0x22>
		number ++;
	}

	if (number >= len ) { 
  100a48:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a4b:	3b 45 0c             	cmp    0xc(%ebp),%eax
  100a4e:	72 1a                	jb     100a6a <bzer+0x55>
		for ( ; i < len; i++) {
  100a50:	eb 0e                	jmp    100a60 <bzer+0x4b>
			*d++ = '\0';
  100a52:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a55:	c6 00 00             	movb   $0x0,(%eax)
  100a58:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	while (*d != '\0') {
		number ++;
	}

	if (number >= len ) { 
		for ( ; i < len; i++) {
  100a5c:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a60:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a63:	3b 45 0c             	cmp    0xc(%ebp),%eax
  100a66:	72 ea                	jb     100a52 <bzer+0x3d>
  100a68:	eb 1f                	jmp    100a89 <bzer+0x74>
			*d++ = '\0';
		}
	} else {
		for (i = 0; i < number; i++) {
  100a6a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a71:	eb 0e                	jmp    100a81 <bzer+0x6c>
			*d++ = '\0';
  100a73:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a76:	c6 00 00             	movb   $0x0,(%eax)
  100a79:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if (number >= len ) { 
		for ( ; i < len; i++) {
			*d++ = '\0';
		}
	} else {
		for (i = 0; i < number; i++) {
  100a7d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a81:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a84:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100a87:	7c ea                	jl     100a73 <bzer+0x5e>
			*d++ = '\0';
		}
	}
}
  100a89:	c9                   	leave  
  100a8a:	c3                   	ret    

00100a8b <strcmp>:
/*@字符串比较函数
 *
 *
 */
int strcmp(const int8 *dest, const int8 *val)
{
  100a8b:	55                   	push   %ebp
  100a8c:	89 e5                	mov    %esp,%ebp
  100a8e:	83 ec 10             	sub    $0x10,%esp
	const int8 *s1 = dest;	
  100a91:	8b 45 08             	mov    0x8(%ebp),%eax
  100a94:	89 45 fc             	mov    %eax,-0x4(%ebp)
	const int8 *s2 = val;
  100a97:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a9a:	89 45 f8             	mov    %eax,-0x8(%ebp)

	int8 c1, c2;

	do {
		c1 = *s1++;
  100a9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100aa0:	0f b6 00             	movzbl (%eax),%eax
  100aa3:	88 45 f7             	mov    %al,-0x9(%ebp)
  100aa6:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
		c2 = *s2++;
  100aaa:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100aad:	0f b6 00             	movzbl (%eax),%eax
  100ab0:	88 45 f6             	mov    %al,-0xa(%ebp)
  100ab3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
		if (c1 == '\0') {
  100ab7:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  100abb:	75 10                	jne    100acd <strcmp+0x42>
			return c1 -c2;
  100abd:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  100ac1:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  100ac5:	89 d1                	mov    %edx,%ecx
  100ac7:	29 c1                	sub    %eax,%ecx
  100ac9:	89 c8                	mov    %ecx,%eax
  100acb:	eb 17                	jmp    100ae4 <strcmp+0x59>
		}
	} while (c1 == c2);
  100acd:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100ad1:	3a 45 f6             	cmp    -0xa(%ebp),%al
  100ad4:	74 c7                	je     100a9d <strcmp+0x12>
	
	return c1 - c2;
  100ad6:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  100ada:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  100ade:	89 d1                	mov    %edx,%ecx
  100ae0:	29 c1                	sub    %eax,%ecx
  100ae2:	89 c8                	mov    %ecx,%eax
}
  100ae4:	c9                   	leave  
  100ae5:	c3                   	ret    

00100ae6 <strcpy>:
 *
 *
 */

int8 * strcpy(char *dest, const char *val)
{
  100ae6:	55                   	push   %ebp
  100ae7:	89 e5                	mov    %esp,%ebp
  100ae9:	83 ec 10             	sub    $0x10,%esp
	int8 * d = dest;
  100aec:	8b 45 08             	mov    0x8(%ebp),%eax
  100aef:	89 45 fc             	mov    %eax,-0x4(%ebp)
	const int8 * s = val;
  100af2:	8b 45 0c             	mov    0xc(%ebp),%eax
  100af5:	89 45 f8             	mov    %eax,-0x8(%ebp)

	if (dest == NULL || val == NULL ) {
  100af8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100afc:	74 06                	je     100b04 <strcpy+0x1e>
  100afe:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100b02:	75 05                	jne    100b09 <strcpy+0x23>
		return dest;
  100b04:	8b 45 08             	mov    0x8(%ebp),%eax
  100b07:	eb 25                	jmp    100b2e <strcpy+0x48>
	}

	do {
		*d++ = *s;
  100b09:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b0c:	0f b6 10             	movzbl (%eax),%edx
  100b0f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100b12:	88 10                	mov    %dl,(%eax)
  100b14:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
	} while (*s++ != '\0');
  100b18:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b1b:	0f b6 00             	movzbl (%eax),%eax
  100b1e:	84 c0                	test   %al,%al
  100b20:	0f 95 c0             	setne  %al
  100b23:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100b27:	84 c0                	test   %al,%al
  100b29:	75 de                	jne    100b09 <strcpy+0x23>

	return dest;
  100b2b:	8b 45 08             	mov    0x8(%ebp),%eax

}
  100b2e:	c9                   	leave  
  100b2f:	c3                   	ret    

00100b30 <strcat>:
/*@字符串的连接函数
 *
 *
 */
int8  *strcat(int8 *dest, const int8 *val)
{
  100b30:	55                   	push   %ebp
  100b31:	89 e5                	mov    %esp,%ebp
  100b33:	83 ec 10             	sub    $0x10,%esp
	const int8 *s1 = val;
  100b36:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b39:	89 45 fc             	mov    %eax,-0x4(%ebp)
	int8 *d = dest;
  100b3c:	8b 45 08             	mov    0x8(%ebp),%eax
  100b3f:	89 45 f8             	mov    %eax,-0x8(%ebp)

	if (dest == NULL || val == NULL) {
  100b42:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100b46:	74 06                	je     100b4e <strcat+0x1e>
  100b48:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100b4c:	75 07                	jne    100b55 <strcat+0x25>
		return NULL;
  100b4e:	b8 00 00 00 00       	mov    $0x0,%eax
  100b53:	eb 3b                	jmp    100b90 <strcat+0x60>
	}
	
	for ( ; *d++ != '\0'; ) {
  100b55:	90                   	nop
  100b56:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b59:	0f b6 00             	movzbl (%eax),%eax
  100b5c:	84 c0                	test   %al,%al
  100b5e:	0f 95 c0             	setne  %al
  100b61:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100b65:	84 c0                	test   %al,%al
  100b67:	75 ed                	jne    100b56 <strcat+0x26>
		;
	}

	for (;*s1++ != '\0';  ) {
  100b69:	eb 0f                	jmp    100b7a <strcat+0x4a>
		*d++ = *s1;
  100b6b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100b6e:	0f b6 10             	movzbl (%eax),%edx
  100b71:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b74:	88 10                	mov    %dl,(%eax)
  100b76:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
	
	for ( ; *d++ != '\0'; ) {
		;
	}

	for (;*s1++ != '\0';  ) {
  100b7a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100b7d:	0f b6 00             	movzbl (%eax),%eax
  100b80:	84 c0                	test   %al,%al
  100b82:	0f 95 c0             	setne  %al
  100b85:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100b89:	84 c0                	test   %al,%al
  100b8b:	75 de                	jne    100b6b <strcat+0x3b>
		*d++ = *s1;
	}

	return dest;
  100b8d:	8b 45 08             	mov    0x8(%ebp),%eax
}
  100b90:	c9                   	leave  
  100b91:	c3                   	ret    

00100b92 <strlen>:
/*@字符串的长度的计算
 *
 *
 */
int strlen(const int8 *src)
{
  100b92:	55                   	push   %ebp
  100b93:	89 e5                	mov    %esp,%ebp
  100b95:	83 ec 10             	sub    $0x10,%esp
	int number ;
	
	number = 0;
  100b98:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)

	while (*src++ != '\0') {
  100b9f:	eb 04                	jmp    100ba5 <strlen+0x13>
		number++;
  100ba1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
	int number ;
	
	number = 0;

	while (*src++ != '\0') {
  100ba5:	8b 45 08             	mov    0x8(%ebp),%eax
  100ba8:	0f b6 00             	movzbl (%eax),%eax
  100bab:	84 c0                	test   %al,%al
  100bad:	0f 95 c0             	setne  %al
  100bb0:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  100bb4:	84 c0                	test   %al,%al
  100bb6:	75 e9                	jne    100ba1 <strlen+0xf>
		number++;
	}

	return number;
  100bb8:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  100bbb:	c9                   	leave  
  100bbc:	c3                   	ret    
  100bbd:	66 90                	xchg   %ax,%ax
  100bbf:	90                   	nop

00100bc0 <move_point>:

static int16 screen_abscissa = 0;
static int16 screen_ordinate = 0;

static void move_point()
{
  100bc0:	55                   	push   %ebp
  100bc1:	89 e5                	mov    %esp,%ebp
  100bc3:	83 ec 28             	sub    $0x28,%esp
	uint16 loction = screen_abscissa * 80 + screen_ordinate;
  100bc6:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100bcd:	89 c2                	mov    %eax,%edx
  100bcf:	89 d0                	mov    %edx,%eax
  100bd1:	c1 e0 02             	shl    $0x2,%eax
  100bd4:	01 d0                	add    %edx,%eax
  100bd6:	c1 e0 04             	shl    $0x4,%eax
  100bd9:	89 c2                	mov    %eax,%edx
  100bdb:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100be2:	01 d0                	add    %edx,%eax
  100be4:	66 89 45 f6          	mov    %ax,-0xa(%ebp)

	outb(0x3D4, 14);
  100be8:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
  100bef:	00 
  100bf0:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  100bf7:	e8 c8 01 00 00       	call   100dc4 <outb>
	outb(0x3D5, loction >> 8);
  100bfc:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100c00:	66 c1 e8 08          	shr    $0x8,%ax
  100c04:	0f b7 c0             	movzwl %ax,%eax
  100c07:	89 44 24 04          	mov    %eax,0x4(%esp)
  100c0b:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  100c12:	e8 ad 01 00 00       	call   100dc4 <outb>
	outb(0x3D4, 15);
  100c17:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
  100c1e:	00 
  100c1f:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  100c26:	e8 99 01 00 00       	call   100dc4 <outb>
	outb(0x3D5, loction);
  100c2b:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100c2f:	89 44 24 04          	mov    %eax,0x4(%esp)
  100c33:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  100c3a:	e8 85 01 00 00       	call   100dc4 <outb>
}
  100c3f:	c9                   	leave  
  100c40:	c3                   	ret    

00100c41 <screen_clear>:



void screen_clear()
{
  100c41:	55                   	push   %ebp
  100c42:	89 e5                	mov    %esp,%ebp
  100c44:	83 ec 18             	sub    $0x18,%esp
	/*大端模式和小端的模式
	 *小端模式：大大小小
	 *内存地址是地址小的地方
	 */
	int16 back_white = ((screen_black | screen_white) << 8) | 0x20;
  100c47:	66 c7 45 f2 20 07    	movw   $0x720,-0xe(%ebp)

	int i = 0;
  100c4d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	for (i = 0; i < 80 * 25; i++) {
  100c54:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100c5b:	eb 17                	jmp    100c74 <screen_clear+0x33>
		screen_point[i] = back_white;
  100c5d:	a1 20 24 10 00       	mov    0x102420,%eax
  100c62:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100c65:	01 d2                	add    %edx,%edx
  100c67:	01 c2                	add    %eax,%edx
  100c69:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  100c6d:	66 89 02             	mov    %ax,(%edx)
	 *内存地址是地址小的地方
	 */
	int16 back_white = ((screen_black | screen_white) << 8) | 0x20;

	int i = 0;
	for (i = 0; i < 80 * 25; i++) {
  100c70:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100c74:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  100c7b:	7e e0                	jle    100c5d <screen_clear+0x1c>
		screen_point[i] = back_white;
	}

	screen_abscissa = 0;
  100c7d:	66 c7 05 04 b0 10 00 	movw   $0x0,0x10b004
  100c84:	00 00 
	screen_ordinate = 0;
  100c86:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100c8d:	00 00 

	move_point();
  100c8f:	e8 2c ff ff ff       	call   100bc0 <move_point>
}
  100c94:	c9                   	leave  
  100c95:	c3                   	ret    

00100c96 <screen_char>:



 void screen_char(char c, color back_color, color fore_color )
{
  100c96:	55                   	push   %ebp
  100c97:	89 e5                	mov    %esp,%ebp
  100c99:	83 ec 28             	sub    $0x28,%esp
  100c9c:	8b 45 08             	mov    0x8(%ebp),%eax
  100c9f:	88 45 e4             	mov    %al,-0x1c(%ebp)
	int16 color_s = ((back_color | fore_color) << 8) | ((int16)c);
  100ca2:	8b 45 0c             	mov    0xc(%ebp),%eax
  100ca5:	89 c2                	mov    %eax,%edx
  100ca7:	8b 45 10             	mov    0x10(%ebp),%eax
  100caa:	09 d0                	or     %edx,%eax
  100cac:	89 c2                	mov    %eax,%edx
  100cae:	c1 e2 08             	shl    $0x8,%edx
  100cb1:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
  100cb6:	09 d0                	or     %edx,%eax
  100cb8:	66 89 45 f6          	mov    %ax,-0xa(%ebp)


	if (c == '\n') {
  100cbc:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
  100cc0:	75 1b                	jne    100cdd <screen_char+0x47>
		screen_abscissa ++; 		//换行
  100cc2:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100cc9:	83 c0 01             	add    $0x1,%eax
  100ccc:	66 a3 04 b0 10 00    	mov    %ax,0x10b004
		screen_ordinate = 0; 		//重头开始
  100cd2:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100cd9:	00 00 
  100cdb:	eb 72                	jmp    100d4f <screen_char+0xb9>
	} else if (c == 0x09) {
  100cdd:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  100ce1:	75 12                	jne    100cf5 <screen_char+0x5f>
		screen_ordinate = screen_ordinate + 8;
  100ce3:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100cea:	83 c0 08             	add    $0x8,%eax
  100ced:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  100cf3:	eb 5a                	jmp    100d4f <screen_char+0xb9>
	} else if (c == ' ') {
  100cf5:	80 7d e4 20          	cmpb   $0x20,-0x1c(%ebp)
  100cf9:	75 12                	jne    100d0d <screen_char+0x77>
		screen_ordinate ++;
  100cfb:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d02:	83 c0 01             	add    $0x1,%eax
  100d05:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  100d0b:	eb 42                	jmp    100d4f <screen_char+0xb9>
	}else {
		screen_point[screen_abscissa * 80 + screen_ordinate] = color_s;
  100d0d:	8b 0d 20 24 10 00    	mov    0x102420,%ecx
  100d13:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100d1a:	0f bf d0             	movswl %ax,%edx
  100d1d:	89 d0                	mov    %edx,%eax
  100d1f:	c1 e0 02             	shl    $0x2,%eax
  100d22:	01 d0                	add    %edx,%eax
  100d24:	c1 e0 04             	shl    $0x4,%eax
  100d27:	89 c2                	mov    %eax,%edx
  100d29:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d30:	98                   	cwtl   
  100d31:	01 d0                	add    %edx,%eax
  100d33:	01 c0                	add    %eax,%eax
  100d35:	8d 14 01             	lea    (%ecx,%eax,1),%edx
  100d38:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100d3c:	66 89 02             	mov    %ax,(%edx)
		screen_ordinate ++;
  100d3f:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d46:	83 c0 01             	add    $0x1,%eax
  100d49:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
	}
	
	if (screen_ordinate > 80) {
  100d4f:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d56:	66 83 f8 50          	cmp    $0x50,%ax
  100d5a:	7e 19                	jle    100d75 <screen_char+0xdf>
		screen_abscissa ++;
  100d5c:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100d63:	83 c0 01             	add    $0x1,%eax
  100d66:	66 a3 04 b0 10 00    	mov    %ax,0x10b004
		screen_ordinate = 0;
  100d6c:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100d73:	00 00 
	}

	move_point();
  100d75:	e8 46 fe ff ff       	call   100bc0 <move_point>
	
}
  100d7a:	c9                   	leave  
  100d7b:	c3                   	ret    

00100d7c <screen_string>:



void screen_string(int8 *string, color back_color, color fore_color)
{
  100d7c:	55                   	push   %ebp
  100d7d:	89 e5                	mov    %esp,%ebp
  100d7f:	83 ec 28             	sub    $0x28,%esp
	int i = 0;
  100d82:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	while (string[i] != '\0') {
  100d89:	eb 28                	jmp    100db3 <screen_string+0x37>
		screen_char(string[i++], back_color, fore_color);
  100d8b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d8e:	8b 45 08             	mov    0x8(%ebp),%eax
  100d91:	01 d0                	add    %edx,%eax
  100d93:	0f b6 00             	movzbl (%eax),%eax
  100d96:	0f be c0             	movsbl %al,%eax
  100d99:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100d9d:	8b 55 10             	mov    0x10(%ebp),%edx
  100da0:	89 54 24 08          	mov    %edx,0x8(%esp)
  100da4:	8b 55 0c             	mov    0xc(%ebp),%edx
  100da7:	89 54 24 04          	mov    %edx,0x4(%esp)
  100dab:	89 04 24             	mov    %eax,(%esp)
  100dae:	e8 e3 fe ff ff       	call   100c96 <screen_char>


void screen_string(int8 *string, color back_color, color fore_color)
{
	int i = 0;
	while (string[i] != '\0') {
  100db3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100db6:	8b 45 08             	mov    0x8(%ebp),%eax
  100db9:	01 d0                	add    %edx,%eax
  100dbb:	0f b6 00             	movzbl (%eax),%eax
  100dbe:	84 c0                	test   %al,%al
  100dc0:	75 c9                	jne    100d8b <screen_string+0xf>
		screen_char(string[i++], back_color, fore_color);
	}
	
}
  100dc2:	c9                   	leave  
  100dc3:	c3                   	ret    

00100dc4 <outb>:

#include "screen_port.h"

//端口写一个字节
inline  void outb(uint16 port, uint8 value)
{
  100dc4:	55                   	push   %ebp
  100dc5:	89 e5                	mov    %esp,%ebp
  100dc7:	83 ec 08             	sub    $0x8,%esp
  100dca:	8b 55 08             	mov    0x8(%ebp),%edx
  100dcd:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dd0:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
  100dd4:	88 45 f8             	mov    %al,-0x8(%ebp)
	asm volatile ("outb %1, %0" :: "dN" (port), "a" (value));
  100dd7:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
  100ddb:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  100ddf:	ee                   	out    %al,(%dx)
}
  100de0:	c9                   	leave  
  100de1:	c3                   	ret    

00100de2 <inb>:

//端口读一个字节
inline uint8 inb(uint16 port)
{
  100de2:	55                   	push   %ebp
  100de3:	89 e5                	mov    %esp,%ebp
  100de5:	53                   	push   %ebx
  100de6:	83 ec 14             	sub    $0x14,%esp
  100de9:	8b 45 08             	mov    0x8(%ebp),%eax
  100dec:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
	uint8 ret;
	asm volatile ("inb %1, %0" : "=a" (ret) : "dN"(port));
  100df0:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  100df4:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  100df8:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100dfc:	ec                   	in     (%dx),%al
  100dfd:	89 c3                	mov    %eax,%ebx
  100dff:	88 5d fb             	mov    %bl,-0x5(%ebp)
	
	return ret;
  100e02:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
}
  100e06:	83 c4 14             	add    $0x14,%esp
  100e09:	5b                   	pop    %ebx
  100e0a:	5d                   	pop    %ebp
  100e0b:	c3                   	ret    

00100e0c <inw>:

//端口写一个字节
inline uint16 inw(uint16 port)
{
  100e0c:	55                   	push   %ebp
  100e0d:	89 e5                	mov    %esp,%ebp
  100e0f:	53                   	push   %ebx
  100e10:	83 ec 14             	sub    $0x14,%esp
  100e13:	8b 45 08             	mov    0x8(%ebp),%eax
  100e16:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
	uint16 ret;
	
	asm volatile ("inw %1, %0" : "=a"(ret):"dN"(port) );
  100e1a:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  100e1e:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  100e22:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100e26:	66 ed                	in     (%dx),%ax
  100e28:	89 c3                	mov    %eax,%ebx
  100e2a:	66 89 5d fa          	mov    %bx,-0x6(%ebp)
	
	return ret;
  100e2e:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
}
  100e32:	83 c4 14             	add    $0x14,%esp
  100e35:	5b                   	pop    %ebx
  100e36:	5d                   	pop    %ebp
  100e37:	c3                   	ret    

00100e38 <prints>:
static  int  vprintk(const int8 * format, char * ap);
static  void printi(int number);
static void prints(char *);

void prints(char *s)
{
  100e38:	55                   	push   %ebp
  100e39:	89 e5                	mov    %esp,%ebp
  100e3b:	83 ec 18             	sub    $0x18,%esp
	screen_string(s, screen_black, screen_red);
  100e3e:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100e45:	00 
  100e46:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100e4d:	00 
  100e4e:	8b 45 08             	mov    0x8(%ebp),%eax
  100e51:	89 04 24             	mov    %eax,(%esp)
  100e54:	e8 23 ff ff ff       	call   100d7c <screen_string>
}
  100e59:	c9                   	leave  
  100e5a:	c3                   	ret    

00100e5b <printchar>:


void printchar(int8 str)
{
  100e5b:	55                   	push   %ebp
  100e5c:	89 e5                	mov    %esp,%ebp
  100e5e:	83 ec 28             	sub    $0x28,%esp
  100e61:	8b 45 08             	mov    0x8(%ebp),%eax
  100e64:	88 45 f4             	mov    %al,-0xc(%ebp)
	screen_char(str, screen_black, screen_red);
  100e67:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  100e6b:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100e72:	00 
  100e73:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100e7a:	00 
  100e7b:	89 04 24             	mov    %eax,(%esp)
  100e7e:	e8 13 fe ff ff       	call   100c96 <screen_char>


}
  100e83:	c9                   	leave  
  100e84:	c3                   	ret    

00100e85 <printi>:

void printi(int  number)
{
  100e85:	55                   	push   %ebp
  100e86:	89 e5                	mov    %esp,%ebp
  100e88:	83 ec 48             	sub    $0x48,%esp
	char s[32];
	int sign;
	int i;

	i = 0;
  100e8b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	sign = number;
  100e92:	8b 45 08             	mov    0x8(%ebp),%eax
  100e95:	89 45 f0             	mov    %eax,-0x10(%ebp)

	if (sign < 0) {
  100e98:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100e9c:	79 03                	jns    100ea1 <printi+0x1c>
		number = -number;
  100e9e:	f7 5d 08             	negl   0x8(%ebp)
	}

	do {
		s[i++] = number % 10 + '0';
  100ea1:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100ea4:	ba 67 66 66 66       	mov    $0x66666667,%edx
  100ea9:	89 c8                	mov    %ecx,%eax
  100eab:	f7 ea                	imul   %edx
  100ead:	c1 fa 02             	sar    $0x2,%edx
  100eb0:	89 c8                	mov    %ecx,%eax
  100eb2:	c1 f8 1f             	sar    $0x1f,%eax
  100eb5:	29 c2                	sub    %eax,%edx
  100eb7:	89 d0                	mov    %edx,%eax
  100eb9:	c1 e0 02             	shl    $0x2,%eax
  100ebc:	01 d0                	add    %edx,%eax
  100ebe:	01 c0                	add    %eax,%eax
  100ec0:	89 ca                	mov    %ecx,%edx
  100ec2:	29 c2                	sub    %eax,%edx
  100ec4:	89 d0                	mov    %edx,%eax
  100ec6:	83 c0 30             	add    $0x30,%eax
  100ec9:	8d 4d d0             	lea    -0x30(%ebp),%ecx
  100ecc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecf:	01 ca                	add    %ecx,%edx
  100ed1:	88 02                	mov    %al,(%edx)
  100ed3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	}while ((number /= 10) > 0);
  100ed7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100eda:	ba 67 66 66 66       	mov    $0x66666667,%edx
  100edf:	89 c8                	mov    %ecx,%eax
  100ee1:	f7 ea                	imul   %edx
  100ee3:	c1 fa 02             	sar    $0x2,%edx
  100ee6:	89 c8                	mov    %ecx,%eax
  100ee8:	c1 f8 1f             	sar    $0x1f,%eax
  100eeb:	89 d1                	mov    %edx,%ecx
  100eed:	29 c1                	sub    %eax,%ecx
  100eef:	89 c8                	mov    %ecx,%eax
  100ef1:	89 45 08             	mov    %eax,0x8(%ebp)
  100ef4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100ef8:	7f a7                	jg     100ea1 <printi+0x1c>


	if (sign < 0) {
  100efa:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100efe:	79 0f                	jns    100f0f <printi+0x8a>
		s[i++] = '-';
  100f00:	8d 55 d0             	lea    -0x30(%ebp),%edx
  100f03:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f06:	01 d0                	add    %edx,%eax
  100f08:	c6 00 2d             	movb   $0x2d,(%eax)
  100f0b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	}

	i = i -1;
  100f0f:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
	for (; i >= 0; i--) { 
  100f13:	eb 2a                	jmp    100f3f <printi+0xba>
		screen_char(s[i], screen_black, screen_red);
  100f15:	8d 55 d0             	lea    -0x30(%ebp),%edx
  100f18:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f1b:	01 d0                	add    %edx,%eax
  100f1d:	0f b6 00             	movzbl (%eax),%eax
  100f20:	0f be c0             	movsbl %al,%eax
  100f23:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100f2a:	00 
  100f2b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100f32:	00 
  100f33:	89 04 24             	mov    %eax,(%esp)
  100f36:	e8 5b fd ff ff       	call   100c96 <screen_char>
	if (sign < 0) {
		s[i++] = '-';
	}

	i = i -1;
	for (; i >= 0; i--) { 
  100f3b:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  100f3f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100f43:	79 d0                	jns    100f15 <printi+0x90>
		screen_char(s[i], screen_black, screen_red);
	}
}
  100f45:	c9                   	leave  
  100f46:	c3                   	ret    

00100f47 <printk>:

int printk(const int8 * format, ...)
{
  100f47:	55                   	push   %ebp
  100f48:	89 e5                	mov    %esp,%ebp
  100f4a:	83 ec 28             	sub    $0x28,%esp
	int number;
	char * arg;

	va_start(arg, format);
  100f4d:	8d 45 0c             	lea    0xc(%ebp),%eax
  100f50:	89 45 f4             	mov    %eax,-0xc(%ebp)
	
	number = vprintk(format, arg);
  100f53:	8b 45 08             	mov    0x8(%ebp),%eax
  100f56:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f59:	89 54 24 04          	mov    %edx,0x4(%esp)
  100f5d:	89 04 24             	mov    %eax,(%esp)
  100f60:	e8 0f 00 00 00       	call   100f74 <vprintk>
  100f65:	89 45 f0             	mov    %eax,-0x10(%ebp)

	va_end(arg);
  100f68:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	
	return number;
  100f6f:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
  100f72:	c9                   	leave  
  100f73:	c3                   	ret    

00100f74 <vprintk>:

int vprintk(const int8 * format, char * ap)
{
  100f74:	55                   	push   %ebp
  100f75:	89 e5                	mov    %esp,%ebp
  100f77:	83 ec 28             	sub    $0x28,%esp
	int pc; 	//printf的返回值
	
	pc = 0;
  100f7a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	for (; *format != '\0'; ++format) {
  100f81:	e9 b1 00 00 00       	jmp    101037 <vprintk+0xc3>
		if (*format == '%') {
  100f86:	8b 45 08             	mov    0x8(%ebp),%eax
  100f89:	0f b6 00             	movzbl (%eax),%eax
  100f8c:	3c 25                	cmp    $0x25,%al
  100f8e:	0f 85 8a 00 00 00    	jne    10101e <vprintk+0xaa>
			++format;
  100f94:	83 45 08 01          	addl   $0x1,0x8(%ebp)
			if ((*format) == 'c') {
  100f98:	8b 45 08             	mov    0x8(%ebp),%eax
  100f9b:	0f b6 00             	movzbl (%eax),%eax
  100f9e:	3c 63                	cmp    $0x63,%al
  100fa0:	75 1d                	jne    100fbf <vprintk+0x4b>
				printchar(va_arg(ap, int));
  100fa2:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100fa6:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fa9:	83 e8 04             	sub    $0x4,%eax
  100fac:	8b 00                	mov    (%eax),%eax
  100fae:	0f be c0             	movsbl %al,%eax
  100fb1:	89 04 24             	mov    %eax,(%esp)
  100fb4:	e8 a2 fe ff ff       	call   100e5b <printchar>
				pc++;
  100fb9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100fbd:	eb 74                	jmp    101033 <vprintk+0xbf>
			} else if (*format == 'd') {
  100fbf:	8b 45 08             	mov    0x8(%ebp),%eax
  100fc2:	0f b6 00             	movzbl (%eax),%eax
  100fc5:	3c 64                	cmp    $0x64,%al
  100fc7:	75 1a                	jne    100fe3 <vprintk+0x6f>
				printi(va_arg(ap, int));
  100fc9:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100fcd:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fd0:	83 e8 04             	sub    $0x4,%eax
  100fd3:	8b 00                	mov    (%eax),%eax
  100fd5:	89 04 24             	mov    %eax,(%esp)
  100fd8:	e8 a8 fe ff ff       	call   100e85 <printi>
				pc++;
  100fdd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100fe1:	eb 50                	jmp    101033 <vprintk+0xbf>
			} else if (*format == 's') {
  100fe3:	8b 45 08             	mov    0x8(%ebp),%eax
  100fe6:	0f b6 00             	movzbl (%eax),%eax
  100fe9:	3c 73                	cmp    $0x73,%al
  100feb:	75 1a                	jne    101007 <vprintk+0x93>
				prints((va_arg(ap, char*)));
  100fed:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100ff1:	8b 45 0c             	mov    0xc(%ebp),%eax
  100ff4:	83 e8 04             	sub    $0x4,%eax
  100ff7:	8b 00                	mov    (%eax),%eax
  100ff9:	89 04 24             	mov    %eax,(%esp)
  100ffc:	e8 37 fe ff ff       	call   100e38 <prints>
				pc++;
  101001:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  101005:	eb 2c                	jmp    101033 <vprintk+0xbf>
			} else {
				printchar(*format);
  101007:	8b 45 08             	mov    0x8(%ebp),%eax
  10100a:	0f b6 00             	movzbl (%eax),%eax
  10100d:	0f be c0             	movsbl %al,%eax
  101010:	89 04 24             	mov    %eax,(%esp)
  101013:	e8 43 fe ff ff       	call   100e5b <printchar>
				pc++;
  101018:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10101c:	eb 15                	jmp    101033 <vprintk+0xbf>
				
			}
		} else {
			printchar(*format);
  10101e:	8b 45 08             	mov    0x8(%ebp),%eax
  101021:	0f b6 00             	movzbl (%eax),%eax
  101024:	0f be c0             	movsbl %al,%eax
  101027:	89 04 24             	mov    %eax,(%esp)
  10102a:	e8 2c fe ff ff       	call   100e5b <printchar>
			pc++;
  10102f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
int vprintk(const int8 * format, char * ap)
{
	int pc; 	//printf的返回值
	
	pc = 0;
	for (; *format != '\0'; ++format) {
  101033:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  101037:	8b 45 08             	mov    0x8(%ebp),%eax
  10103a:	0f b6 00             	movzbl (%eax),%eax
  10103d:	84 c0                	test   %al,%al
  10103f:	0f 85 41 ff ff ff    	jne    100f86 <vprintk+0x12>
			pc++;
		}

	}

	return pc;
  101045:	8b 45 f4             	mov    -0xc(%ebp),%eax

}
  101048:	c9                   	leave  
  101049:	c3                   	ret    
  10104a:	66 90                	xchg   %ax,%ax

0010104c <init_debug>:

static elf_t kernel_elf;


void init_debug()
{
  10104c:	55                   	push   %ebp
  10104d:	89 e5                	mov    %esp,%ebp
  10104f:	83 ec 28             	sub    $0x28,%esp
	kernel_elf = elf_form_multiboot(glb_mboot_ptr);
  101052:	8b 15 00 b0 10 00    	mov    0x10b000,%edx
  101058:	8d 45 e8             	lea    -0x18(%ebp),%eax
  10105b:	89 54 24 04          	mov    %edx,0x4(%esp)
  10105f:	89 04 24             	mov    %eax,(%esp)
  101062:	e8 0d f7 ff ff       	call   100774 <elf_form_multiboot>
  101067:	83 ec 04             	sub    $0x4,%esp
  10106a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10106d:	a3 08 b0 10 00       	mov    %eax,0x10b008
  101072:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101075:	a3 0c b0 10 00       	mov    %eax,0x10b00c
  10107a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10107d:	a3 10 b0 10 00       	mov    %eax,0x10b010
  101082:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101085:	a3 14 b0 10 00       	mov    %eax,0x10b014
}
  10108a:	c9                   	leave  
  10108b:	c3                   	ret    

0010108c <print_cur_status>:

void print_cur_status()
{
  10108c:	55                   	push   %ebp
  10108d:	89 e5                	mov    %esp,%ebp
  10108f:	83 ec 28             	sub    $0x28,%esp
	static int round = 0;
	uint16 reg1, reg2, reg3, reg4;
	
	asm volatile ( "mov %%cs, %0;"
  101092:	8c 4d f6             	mov    %cs,-0xa(%ebp)
  101095:	8c 5d f4             	mov    %ds,-0xc(%ebp)
  101098:	8c 45 f2             	mov    %es,-0xe(%ebp)
  10109b:	8c 55 f0             	mov    %ss,-0x10(%ebp)
		       "mov %%ds, %1;"
		       "mov %%es, %2;"
		       "mov %%ss, %3;"
		       : "=m"(reg1),"=m"(reg2),"=m"(reg3),"=m"(reg4));

	printk("%d:@ring %d\n", round, reg1 &0x3);
  10109e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  1010a2:	0f b7 c0             	movzwl %ax,%eax
  1010a5:	89 c2                	mov    %eax,%edx
  1010a7:	83 e2 03             	and    $0x3,%edx
  1010aa:	a1 18 b0 10 00       	mov    0x10b018,%eax
  1010af:	89 54 24 08          	mov    %edx,0x8(%esp)
  1010b3:	89 44 24 04          	mov    %eax,0x4(%esp)
  1010b7:	c7 04 24 4d 24 10 00 	movl   $0x10244d,(%esp)
  1010be:	e8 84 fe ff ff       	call   100f47 <printk>
	printk("%d: cs = %d\n", round, reg1);
  1010c3:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  1010c7:	0f b7 d0             	movzwl %ax,%edx
  1010ca:	a1 18 b0 10 00       	mov    0x10b018,%eax
  1010cf:	89 54 24 08          	mov    %edx,0x8(%esp)
  1010d3:	89 44 24 04          	mov    %eax,0x4(%esp)
  1010d7:	c7 04 24 5a 24 10 00 	movl   $0x10245a,(%esp)
  1010de:	e8 64 fe ff ff       	call   100f47 <printk>
	printk("%d: ds = %d\n", round, reg2);
  1010e3:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
  1010e7:	0f b7 d0             	movzwl %ax,%edx
  1010ea:	a1 18 b0 10 00       	mov    0x10b018,%eax
  1010ef:	89 54 24 08          	mov    %edx,0x8(%esp)
  1010f3:	89 44 24 04          	mov    %eax,0x4(%esp)
  1010f7:	c7 04 24 67 24 10 00 	movl   $0x102467,(%esp)
  1010fe:	e8 44 fe ff ff       	call   100f47 <printk>
	printk("%d: es = %d\n", round, reg3);
  101103:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  101107:	0f b7 d0             	movzwl %ax,%edx
  10110a:	a1 18 b0 10 00       	mov    0x10b018,%eax
  10110f:	89 54 24 08          	mov    %edx,0x8(%esp)
  101113:	89 44 24 04          	mov    %eax,0x4(%esp)
  101117:	c7 04 24 74 24 10 00 	movl   $0x102474,(%esp)
  10111e:	e8 24 fe ff ff       	call   100f47 <printk>
	printk("%d: ss = %d\n", round, reg4);
  101123:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
  101127:	0f b7 d0             	movzwl %ax,%edx
  10112a:	a1 18 b0 10 00       	mov    0x10b018,%eax
  10112f:	89 54 24 08          	mov    %edx,0x8(%esp)
  101133:	89 44 24 04          	mov    %eax,0x4(%esp)
  101137:	c7 04 24 81 24 10 00 	movl   $0x102481,(%esp)
  10113e:	e8 04 fe ff ff       	call   100f47 <printk>
}
  101143:	c9                   	leave  
  101144:	c3                   	ret    

00101145 <panic>:

void panic(const char *msg) 
{
  101145:	55                   	push   %ebp
  101146:	89 e5                	mov    %esp,%ebp
  101148:	83 ec 18             	sub    $0x18,%esp
	printk("*******system panic:%s\n", msg);
  10114b:	8b 45 08             	mov    0x8(%ebp),%eax
  10114e:	89 44 24 04          	mov    %eax,0x4(%esp)
  101152:	c7 04 24 8e 24 10 00 	movl   $0x10248e,(%esp)
  101159:	e8 e9 fd ff ff       	call   100f47 <printk>
	print_stack_trace();
  10115e:	e8 0e 00 00 00       	call   101171 <print_stack_trace>
	printk("****\n");
  101163:	c7 04 24 a6 24 10 00 	movl   $0x1024a6,(%esp)
  10116a:	e8 d8 fd ff ff       	call   100f47 <printk>

	while(1);
  10116f:	eb fe                	jmp    10116f <panic+0x2a>

00101171 <print_stack_trace>:
}


void print_stack_trace()
{
  101171:	55                   	push   %ebp
  101172:	89 e5                	mov    %esp,%ebp
  101174:	53                   	push   %ebx
  101175:	83 ec 24             	sub    $0x24,%esp
	uint32 *ebp, *eip;

	asm volatile ("mov %%ebp, %0": "=r"(ebp));
  101178:	89 eb                	mov    %ebp,%ebx
  10117a:	89 5d f4             	mov    %ebx,-0xc(%ebp)

	while(ebp) {
  10117d:	eb 3f                	jmp    1011be <print_stack_trace+0x4d>
		eip = ebp + 1;
  10117f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101182:	83 c0 04             	add    $0x4,%eax
  101185:	89 45 f0             	mov    %eax,-0x10(%ebp)
		printk("     [0x%d] %s\n", *eip, elf_look_symbol(*eip, &kernel_elf));
  101188:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10118b:	8b 00                	mov    (%eax),%eax
  10118d:	c7 44 24 04 08 b0 10 	movl   $0x10b008,0x4(%esp)
  101194:	00 
  101195:	89 04 24             	mov    %eax,(%esp)
  101198:	e8 f9 f6 ff ff       	call   100896 <elf_look_symbol>
  10119d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1011a0:	8b 12                	mov    (%edx),%edx
  1011a2:	89 44 24 08          	mov    %eax,0x8(%esp)
  1011a6:	89 54 24 04          	mov    %edx,0x4(%esp)
  1011aa:	c7 04 24 ac 24 10 00 	movl   $0x1024ac,(%esp)
  1011b1:	e8 91 fd ff ff       	call   100f47 <printk>
		ebp = (uint32 *)*ebp;
  1011b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011b9:	8b 00                	mov    (%eax),%eax
  1011bb:	89 45 f4             	mov    %eax,-0xc(%ebp)
{
	uint32 *ebp, *eip;

	asm volatile ("mov %%ebp, %0": "=r"(ebp));

	while(ebp) {
  1011be:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1011c2:	75 bb                	jne    10117f <print_stack_trace+0xe>
		eip = ebp + 1;
		printk("     [0x%d] %s\n", *eip, elf_look_symbol(*eip, &kernel_elf));
		ebp = (uint32 *)*ebp;
	}
}
  1011c4:	83 c4 24             	add    $0x24,%esp
  1011c7:	5b                   	pop    %ebx
  1011c8:	5d                   	pop    %ebp
  1011c9:	c3                   	ret    
  1011ca:	66 90                	xchg   %ax,%ax

001011cc <init_gdt>:
 *
 *
 *
 */
void init_gdt()
{
  1011cc:	55                   	push   %ebp
  1011cd:	89 e5                	mov    %esp,%ebp
  1011cf:	83 ec 28             	sub    $0x28,%esp
	//全局描述符表的界限从0开始标号，需要-1,base是基地址
	gdt_ptr.limit = sizeof(gdt_entry_t) * GDT_LENGTH - 1;
  1011d2:	66 c7 05 48 cc 10 00 	movw   $0x27,0x10cc48
  1011d9:	27 00 
	gdt_ptr.base = (uint32)&gdt_entries;
  1011db:	b8 20 cc 10 00       	mov    $0x10cc20,%eax
  1011e0:	a3 4a cc 10 00       	mov    %eax,0x10cc4a

	gdt_set_gate(0, 0, 0, 0, 0); //intel，第一个段描述符不可用，置为0
  1011e5:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  1011ec:	00 
  1011ed:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  1011f4:	00 
  1011f5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1011fc:	00 
  1011fd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101204:	00 
  101205:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10120c:	e8 bf 00 00 00       	call   1012d0 <gdt_set_gate>
	gdt_set_gate(1, 0, 0xffffffff, 0x9a, 0xcf);  	//指令段
  101211:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  101218:	00 
  101219:	c7 44 24 0c 9a 00 00 	movl   $0x9a,0xc(%esp)
  101220:	00 
  101221:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  101228:	ff 
  101229:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101230:	00 
  101231:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  101238:	e8 93 00 00 00       	call   1012d0 <gdt_set_gate>
	gdt_set_gate(2, 0, 0xffffffff, 0x92, 0xcf);  	//数据段
  10123d:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  101244:	00 
  101245:	c7 44 24 0c 92 00 00 	movl   $0x92,0xc(%esp)
  10124c:	00 
  10124d:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  101254:	ff 
  101255:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  10125c:	00 
  10125d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  101264:	e8 67 00 00 00       	call   1012d0 <gdt_set_gate>
	gdt_set_gate(3, 0, 0xffffffff, 0xfa, 0xcf);  	//用户态的代码段
  101269:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  101270:	00 
  101271:	c7 44 24 0c fa 00 00 	movl   $0xfa,0xc(%esp)
  101278:	00 
  101279:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  101280:	ff 
  101281:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101288:	00 
  101289:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  101290:	e8 3b 00 00 00       	call   1012d0 <gdt_set_gate>
	gdt_set_gate(4, 0, 0xffffffff, 0xf2, 0xcf);  	//用户态的数据段
  101295:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  10129c:	00 
  10129d:	c7 44 24 0c f2 00 00 	movl   $0xf2,0xc(%esp)
  1012a4:	00 
  1012a5:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  1012ac:	ff 
  1012ad:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1012b4:	00 
  1012b5:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  1012bc:	e8 0f 00 00 00       	call   1012d0 <gdt_set_gate>

	//加载全局描述符表到GPTR寄存器
	gdt_flush((uint32)&gdt_ptr);
  1012c1:	b8 48 cc 10 00       	mov    $0x10cc48,%eax
  1012c6:	89 04 24             	mov    %eax,(%esp)
  1012c9:	e8 a2 ee ff ff       	call   100170 <gdt_flush>
}
  1012ce:	c9                   	leave  
  1012cf:	c3                   	ret    

001012d0 <gdt_set_gate>:
 *@acces 访问的标志
 *@gran 其他的访问的标志
 */

static void gdt_set_gate(int32 num, uint32 base, uint32 limit, uint8 access, uint8 gran)
{
  1012d0:	55                   	push   %ebp
  1012d1:	89 e5                	mov    %esp,%ebp
  1012d3:	83 ec 08             	sub    $0x8,%esp
  1012d6:	8b 55 14             	mov    0x14(%ebp),%edx
  1012d9:	8b 45 18             	mov    0x18(%ebp),%eax
  1012dc:	88 55 fc             	mov    %dl,-0x4(%ebp)
  1012df:	88 45 f8             	mov    %al,-0x8(%ebp)
	gdt_entries[num].base_low    = (base & 0xffff);   	//取了base的低16位
  1012e2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012e5:	89 c2                	mov    %eax,%edx
  1012e7:	8b 45 08             	mov    0x8(%ebp),%eax
  1012ea:	66 89 14 c5 22 cc 10 	mov    %dx,0x10cc22(,%eax,8)
  1012f1:	00 
	gdt_entries[num].base_middle = (base >> 16) & 0xff; 	//取了base的中8位
  1012f2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012f5:	c1 e8 10             	shr    $0x10,%eax
  1012f8:	89 c2                	mov    %eax,%edx
  1012fa:	8b 45 08             	mov    0x8(%ebp),%eax
  1012fd:	88 14 c5 24 cc 10 00 	mov    %dl,0x10cc24(,%eax,8)
	gdt_entries[num].base_high   = (base >> 24) & 0xff; 	//取了base的高8位
  101304:	8b 45 0c             	mov    0xc(%ebp),%eax
  101307:	c1 e8 18             	shr    $0x18,%eax
  10130a:	89 c2                	mov    %eax,%edx
  10130c:	8b 45 08             	mov    0x8(%ebp),%eax
  10130f:	88 14 c5 27 cc 10 00 	mov    %dl,0x10cc27(,%eax,8)

	gdt_entries[num].limit_low   = (limit & 0xffff); 	//取了base的低16位
  101316:	8b 45 10             	mov    0x10(%ebp),%eax
  101319:	89 c2                	mov    %eax,%edx
  10131b:	8b 45 08             	mov    0x8(%ebp),%eax
  10131e:	66 89 14 c5 20 cc 10 	mov    %dx,0x10cc20(,%eax,8)
  101325:	00 
	gdt_entries[num].granularity = (limit >> 16 ) & 0x0f; 	//取了base的中4位，其余的置为0
  101326:	8b 45 10             	mov    0x10(%ebp),%eax
  101329:	c1 e8 10             	shr    $0x10,%eax
  10132c:	89 c2                	mov    %eax,%edx
  10132e:	83 e2 0f             	and    $0xf,%edx
  101331:	8b 45 08             	mov    0x8(%ebp),%eax
  101334:	88 14 c5 26 cc 10 00 	mov    %dl,0x10cc26(,%eax,8)

	gdt_entries[num].granularity |=  gran & 0xf0; 
  10133b:	8b 45 08             	mov    0x8(%ebp),%eax
  10133e:	0f b6 04 c5 26 cc 10 	movzbl 0x10cc26(,%eax,8),%eax
  101345:	00 
  101346:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
  10134a:	83 e2 f0             	and    $0xfffffff0,%edx
  10134d:	09 d0                	or     %edx,%eax
  10134f:	89 c2                	mov    %eax,%edx
  101351:	8b 45 08             	mov    0x8(%ebp),%eax
  101354:	88 14 c5 26 cc 10 00 	mov    %dl,0x10cc26(,%eax,8)
	gdt_entries[num].access      = access; 
  10135b:	8b 45 08             	mov    0x8(%ebp),%eax
  10135e:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  101362:	88 14 c5 25 cc 10 00 	mov    %dl,0x10cc25(,%eax,8)
}
  101369:	c9                   	leave  
  10136a:	c3                   	ret    
  10136b:	90                   	nop

0010136c <entry>:
#include "elf.h"
#include "idt.h"
#include "gdt.h"

int entry()
{
  10136c:	55                   	push   %ebp
  10136d:	89 e5                	mov    %esp,%ebp
  10136f:	83 ec 08             	sub    $0x8,%esp
	
	init_debug();
  101372:	e8 d5 fc ff ff       	call   10104c <init_debug>
	init_gdt();
  101377:	e8 50 fe ff ff       	call   1011cc <init_gdt>
	init_idt();
  10137c:	e8 0f ee ff ff       	call   100190 <init_idt>

//	screen_clear();
//	printk("%s\n", string);
      	
//	panic("test");
      
  	asm volatile ("int $0x3");
  101381:	cc                   	int3   
//	asm volatile ("int $0x4");
//	while (1);
	return 0;
  101382:	b8 00 00 00 00       	mov    $0x0,%eax
}
  101387:	c9                   	leave  
  101388:	c3                   	ret    
  101389:	66 90                	xchg   %ax,%ax
  10138b:	66 90                	xchg   %ax,%ax
  10138d:	66 90                	xchg   %ax,%ax
  10138f:	66 90                	xchg   %ax,%ax
  101391:	66 90                	xchg   %ax,%ax
  101393:	66 90                	xchg   %ax,%ax
  101395:	66 90                	xchg   %ax,%ax
  101397:	66 90                	xchg   %ax,%ax
  101399:	66 90                	xchg   %ax,%ax
  10139b:	66 90                	xchg   %ax,%ax
  10139d:	66 90                	xchg   %ax,%ax
  10139f:	66 90                	xchg   %ax,%ax
  1013a1:	66 90                	xchg   %ax,%ax
  1013a3:	66 90                	xchg   %ax,%ax
  1013a5:	66 90                	xchg   %ax,%ax
  1013a7:	66 90                	xchg   %ax,%ax
  1013a9:	66 90                	xchg   %ax,%ax
  1013ab:	66 90                	xchg   %ax,%ax
  1013ad:	66 90                	xchg   %ax,%ax
  1013af:	66 90                	xchg   %ax,%ax
  1013b1:	66 90                	xchg   %ax,%ax
  1013b3:	66 90                	xchg   %ax,%ax
  1013b5:	66 90                	xchg   %ax,%ax
  1013b7:	66 90                	xchg   %ax,%ax
  1013b9:	66 90                	xchg   %ax,%ax
  1013bb:	66 90                	xchg   %ax,%ax
  1013bd:	66 90                	xchg   %ax,%ax
  1013bf:	66 90                	xchg   %ax,%ax
  1013c1:	66 90                	xchg   %ax,%ax
  1013c3:	66 90                	xchg   %ax,%ax
  1013c5:	66 90                	xchg   %ax,%ax
  1013c7:	66 90                	xchg   %ax,%ax
  1013c9:	66 90                	xchg   %ax,%ax
  1013cb:	66 90                	xchg   %ax,%ax
  1013cd:	66 90                	xchg   %ax,%ax
  1013cf:	66 90                	xchg   %ax,%ax
  1013d1:	66 90                	xchg   %ax,%ax
  1013d3:	66 90                	xchg   %ax,%ax
  1013d5:	66 90                	xchg   %ax,%ax
  1013d7:	66 90                	xchg   %ax,%ax
  1013d9:	66 90                	xchg   %ax,%ax
  1013db:	66 90                	xchg   %ax,%ax
  1013dd:	66 90                	xchg   %ax,%ax
  1013df:	66 90                	xchg   %ax,%ax
  1013e1:	66 90                	xchg   %ax,%ax
  1013e3:	66 90                	xchg   %ax,%ax
  1013e5:	66 90                	xchg   %ax,%ax
  1013e7:	66 90                	xchg   %ax,%ax
  1013e9:	66 90                	xchg   %ax,%ax
  1013eb:	66 90                	xchg   %ax,%ax
  1013ed:	66 90                	xchg   %ax,%ax
  1013ef:	66 90                	xchg   %ax,%ax
  1013f1:	66 90                	xchg   %ax,%ax
  1013f3:	66 90                	xchg   %ax,%ax
  1013f5:	66 90                	xchg   %ax,%ax
  1013f7:	66 90                	xchg   %ax,%ax
  1013f9:	66 90                	xchg   %ax,%ax
  1013fb:	66 90                	xchg   %ax,%ax
  1013fd:	66 90                	xchg   %ax,%ax
  1013ff:	66 90                	xchg   %ax,%ax
  101401:	66 90                	xchg   %ax,%ax
  101403:	66 90                	xchg   %ax,%ax
  101405:	66 90                	xchg   %ax,%ax
  101407:	66 90                	xchg   %ax,%ax
  101409:	66 90                	xchg   %ax,%ax
  10140b:	66 90                	xchg   %ax,%ax
  10140d:	66 90                	xchg   %ax,%ax
  10140f:	66 90                	xchg   %ax,%ax
  101411:	66 90                	xchg   %ax,%ax
  101413:	66 90                	xchg   %ax,%ax
  101415:	66 90                	xchg   %ax,%ax
  101417:	66 90                	xchg   %ax,%ax
  101419:	66 90                	xchg   %ax,%ax
  10141b:	66 90                	xchg   %ax,%ax
  10141d:	66 90                	xchg   %ax,%ax
  10141f:	66 90                	xchg   %ax,%ax
  101421:	66 90                	xchg   %ax,%ax
  101423:	66 90                	xchg   %ax,%ax
  101425:	66 90                	xchg   %ax,%ax
  101427:	66 90                	xchg   %ax,%ax
  101429:	66 90                	xchg   %ax,%ax
  10142b:	66 90                	xchg   %ax,%ax
  10142d:	66 90                	xchg   %ax,%ax
  10142f:	66 90                	xchg   %ax,%ax
  101431:	66 90                	xchg   %ax,%ax
  101433:	66 90                	xchg   %ax,%ax
  101435:	66 90                	xchg   %ax,%ax
  101437:	66 90                	xchg   %ax,%ax
  101439:	66 90                	xchg   %ax,%ax
  10143b:	66 90                	xchg   %ax,%ax
  10143d:	66 90                	xchg   %ax,%ax
  10143f:	66 90                	xchg   %ax,%ax
  101441:	66 90                	xchg   %ax,%ax
  101443:	66 90                	xchg   %ax,%ax
  101445:	66 90                	xchg   %ax,%ax
  101447:	66 90                	xchg   %ax,%ax
  101449:	66 90                	xchg   %ax,%ax
  10144b:	66 90                	xchg   %ax,%ax
  10144d:	66 90                	xchg   %ax,%ax
  10144f:	66 90                	xchg   %ax,%ax
  101451:	66 90                	xchg   %ax,%ax
  101453:	66 90                	xchg   %ax,%ax
  101455:	66 90                	xchg   %ax,%ax
  101457:	66 90                	xchg   %ax,%ax
  101459:	66 90                	xchg   %ax,%ax
  10145b:	66 90                	xchg   %ax,%ax
  10145d:	66 90                	xchg   %ax,%ax
  10145f:	66 90                	xchg   %ax,%ax
  101461:	66 90                	xchg   %ax,%ax
  101463:	66 90                	xchg   %ax,%ax
  101465:	66 90                	xchg   %ax,%ax
  101467:	66 90                	xchg   %ax,%ax
  101469:	66 90                	xchg   %ax,%ax
  10146b:	66 90                	xchg   %ax,%ax
  10146d:	66 90                	xchg   %ax,%ax
  10146f:	66 90                	xchg   %ax,%ax
  101471:	66 90                	xchg   %ax,%ax
  101473:	66 90                	xchg   %ax,%ax
  101475:	66 90                	xchg   %ax,%ax
  101477:	66 90                	xchg   %ax,%ax
  101479:	66 90                	xchg   %ax,%ax
  10147b:	66 90                	xchg   %ax,%ax
  10147d:	66 90                	xchg   %ax,%ax
  10147f:	66 90                	xchg   %ax,%ax
  101481:	66 90                	xchg   %ax,%ax
  101483:	66 90                	xchg   %ax,%ax
  101485:	66 90                	xchg   %ax,%ax
  101487:	66 90                	xchg   %ax,%ax
  101489:	66 90                	xchg   %ax,%ax
  10148b:	66 90                	xchg   %ax,%ax
  10148d:	66 90                	xchg   %ax,%ax
  10148f:	66 90                	xchg   %ax,%ax
  101491:	66 90                	xchg   %ax,%ax
  101493:	66 90                	xchg   %ax,%ax
  101495:	66 90                	xchg   %ax,%ax
  101497:	66 90                	xchg   %ax,%ax
  101499:	66 90                	xchg   %ax,%ax
  10149b:	66 90                	xchg   %ax,%ax
  10149d:	66 90                	xchg   %ax,%ax
  10149f:	66 90                	xchg   %ax,%ax
  1014a1:	66 90                	xchg   %ax,%ax
  1014a3:	66 90                	xchg   %ax,%ax
  1014a5:	66 90                	xchg   %ax,%ax
  1014a7:	66 90                	xchg   %ax,%ax
  1014a9:	66 90                	xchg   %ax,%ax
  1014ab:	66 90                	xchg   %ax,%ax
  1014ad:	66 90                	xchg   %ax,%ax
  1014af:	66 90                	xchg   %ax,%ax
  1014b1:	66 90                	xchg   %ax,%ax
  1014b3:	66 90                	xchg   %ax,%ax
  1014b5:	66 90                	xchg   %ax,%ax
  1014b7:	66 90                	xchg   %ax,%ax
  1014b9:	66 90                	xchg   %ax,%ax
  1014bb:	66 90                	xchg   %ax,%ax
  1014bd:	66 90                	xchg   %ax,%ax
  1014bf:	66 90                	xchg   %ax,%ax
  1014c1:	66 90                	xchg   %ax,%ax
  1014c3:	66 90                	xchg   %ax,%ax
  1014c5:	66 90                	xchg   %ax,%ax
  1014c7:	66 90                	xchg   %ax,%ax
  1014c9:	66 90                	xchg   %ax,%ax
  1014cb:	66 90                	xchg   %ax,%ax
  1014cd:	66 90                	xchg   %ax,%ax
  1014cf:	66 90                	xchg   %ax,%ax
  1014d1:	66 90                	xchg   %ax,%ax
  1014d3:	66 90                	xchg   %ax,%ax
  1014d5:	66 90                	xchg   %ax,%ax
  1014d7:	66 90                	xchg   %ax,%ax
  1014d9:	66 90                	xchg   %ax,%ax
  1014db:	66 90                	xchg   %ax,%ax
  1014dd:	66 90                	xchg   %ax,%ax
  1014df:	66 90                	xchg   %ax,%ax
  1014e1:	66 90                	xchg   %ax,%ax
  1014e3:	66 90                	xchg   %ax,%ax
  1014e5:	66 90                	xchg   %ax,%ax
  1014e7:	66 90                	xchg   %ax,%ax
  1014e9:	66 90                	xchg   %ax,%ax
  1014eb:	66 90                	xchg   %ax,%ax
  1014ed:	66 90                	xchg   %ax,%ax
  1014ef:	66 90                	xchg   %ax,%ax
  1014f1:	66 90                	xchg   %ax,%ax
  1014f3:	66 90                	xchg   %ax,%ax
  1014f5:	66 90                	xchg   %ax,%ax
  1014f7:	66 90                	xchg   %ax,%ax
  1014f9:	66 90                	xchg   %ax,%ax
  1014fb:	66 90                	xchg   %ax,%ax
  1014fd:	66 90                	xchg   %ax,%ax
  1014ff:	66 90                	xchg   %ax,%ax
  101501:	66 90                	xchg   %ax,%ax
  101503:	66 90                	xchg   %ax,%ax
  101505:	66 90                	xchg   %ax,%ax
  101507:	66 90                	xchg   %ax,%ax
  101509:	66 90                	xchg   %ax,%ax
  10150b:	66 90                	xchg   %ax,%ax
  10150d:	66 90                	xchg   %ax,%ax
  10150f:	66 90                	xchg   %ax,%ax
  101511:	66 90                	xchg   %ax,%ax
  101513:	66 90                	xchg   %ax,%ax
  101515:	66 90                	xchg   %ax,%ax
  101517:	66 90                	xchg   %ax,%ax
  101519:	66 90                	xchg   %ax,%ax
  10151b:	66 90                	xchg   %ax,%ax
  10151d:	66 90                	xchg   %ax,%ax
  10151f:	66 90                	xchg   %ax,%ax
  101521:	66 90                	xchg   %ax,%ax
  101523:	66 90                	xchg   %ax,%ax
  101525:	66 90                	xchg   %ax,%ax
  101527:	66 90                	xchg   %ax,%ax
  101529:	66 90                	xchg   %ax,%ax
  10152b:	66 90                	xchg   %ax,%ax
  10152d:	66 90                	xchg   %ax,%ax
  10152f:	66 90                	xchg   %ax,%ax
  101531:	66 90                	xchg   %ax,%ax
  101533:	66 90                	xchg   %ax,%ax
  101535:	66 90                	xchg   %ax,%ax
  101537:	66 90                	xchg   %ax,%ax
  101539:	66 90                	xchg   %ax,%ax
  10153b:	66 90                	xchg   %ax,%ax
  10153d:	66 90                	xchg   %ax,%ax
  10153f:	66 90                	xchg   %ax,%ax
  101541:	66 90                	xchg   %ax,%ax
  101543:	66 90                	xchg   %ax,%ax
  101545:	66 90                	xchg   %ax,%ax
  101547:	66 90                	xchg   %ax,%ax
  101549:	66 90                	xchg   %ax,%ax
  10154b:	66 90                	xchg   %ax,%ax
  10154d:	66 90                	xchg   %ax,%ax
  10154f:	66 90                	xchg   %ax,%ax
  101551:	66 90                	xchg   %ax,%ax
  101553:	66 90                	xchg   %ax,%ax
  101555:	66 90                	xchg   %ax,%ax
  101557:	66 90                	xchg   %ax,%ax
  101559:	66 90                	xchg   %ax,%ax
  10155b:	66 90                	xchg   %ax,%ax
  10155d:	66 90                	xchg   %ax,%ax
  10155f:	66 90                	xchg   %ax,%ax
  101561:	66 90                	xchg   %ax,%ax
  101563:	66 90                	xchg   %ax,%ax
  101565:	66 90                	xchg   %ax,%ax
  101567:	66 90                	xchg   %ax,%ax
  101569:	66 90                	xchg   %ax,%ax
  10156b:	66 90                	xchg   %ax,%ax
  10156d:	66 90                	xchg   %ax,%ax
  10156f:	66 90                	xchg   %ax,%ax
  101571:	66 90                	xchg   %ax,%ax
  101573:	66 90                	xchg   %ax,%ax
  101575:	66 90                	xchg   %ax,%ax
  101577:	66 90                	xchg   %ax,%ax
  101579:	66 90                	xchg   %ax,%ax
  10157b:	66 90                	xchg   %ax,%ax
  10157d:	66 90                	xchg   %ax,%ax
  10157f:	66 90                	xchg   %ax,%ax
  101581:	66 90                	xchg   %ax,%ax
  101583:	66 90                	xchg   %ax,%ax
  101585:	66 90                	xchg   %ax,%ax
  101587:	66 90                	xchg   %ax,%ax
  101589:	66 90                	xchg   %ax,%ax
  10158b:	66 90                	xchg   %ax,%ax
  10158d:	66 90                	xchg   %ax,%ax
  10158f:	66 90                	xchg   %ax,%ax
  101591:	66 90                	xchg   %ax,%ax
  101593:	66 90                	xchg   %ax,%ax
  101595:	66 90                	xchg   %ax,%ax
  101597:	66 90                	xchg   %ax,%ax
  101599:	66 90                	xchg   %ax,%ax
  10159b:	66 90                	xchg   %ax,%ax
  10159d:	66 90                	xchg   %ax,%ax
  10159f:	66 90                	xchg   %ax,%ax
  1015a1:	66 90                	xchg   %ax,%ax
  1015a3:	66 90                	xchg   %ax,%ax
  1015a5:	66 90                	xchg   %ax,%ax
  1015a7:	66 90                	xchg   %ax,%ax
  1015a9:	66 90                	xchg   %ax,%ax
  1015ab:	66 90                	xchg   %ax,%ax
  1015ad:	66 90                	xchg   %ax,%ax
  1015af:	66 90                	xchg   %ax,%ax
  1015b1:	66 90                	xchg   %ax,%ax
  1015b3:	66 90                	xchg   %ax,%ax
  1015b5:	66 90                	xchg   %ax,%ax
  1015b7:	66 90                	xchg   %ax,%ax
  1015b9:	66 90                	xchg   %ax,%ax
  1015bb:	66 90                	xchg   %ax,%ax
  1015bd:	66 90                	xchg   %ax,%ax
  1015bf:	66 90                	xchg   %ax,%ax
  1015c1:	66 90                	xchg   %ax,%ax
  1015c3:	66 90                	xchg   %ax,%ax
  1015c5:	66 90                	xchg   %ax,%ax
  1015c7:	66 90                	xchg   %ax,%ax
  1015c9:	66 90                	xchg   %ax,%ax
  1015cb:	66 90                	xchg   %ax,%ax
  1015cd:	66 90                	xchg   %ax,%ax
  1015cf:	66 90                	xchg   %ax,%ax
  1015d1:	66 90                	xchg   %ax,%ax
  1015d3:	66 90                	xchg   %ax,%ax
  1015d5:	66 90                	xchg   %ax,%ax
  1015d7:	66 90                	xchg   %ax,%ax
  1015d9:	66 90                	xchg   %ax,%ax
  1015db:	66 90                	xchg   %ax,%ax
  1015dd:	66 90                	xchg   %ax,%ax
  1015df:	66 90                	xchg   %ax,%ax
  1015e1:	66 90                	xchg   %ax,%ax
  1015e3:	66 90                	xchg   %ax,%ax
  1015e5:	66 90                	xchg   %ax,%ax
  1015e7:	66 90                	xchg   %ax,%ax
  1015e9:	66 90                	xchg   %ax,%ax
  1015eb:	66 90                	xchg   %ax,%ax
  1015ed:	66 90                	xchg   %ax,%ax
  1015ef:	66 90                	xchg   %ax,%ax
  1015f1:	66 90                	xchg   %ax,%ax
  1015f3:	66 90                	xchg   %ax,%ax
  1015f5:	66 90                	xchg   %ax,%ax
  1015f7:	66 90                	xchg   %ax,%ax
  1015f9:	66 90                	xchg   %ax,%ax
  1015fb:	66 90                	xchg   %ax,%ax
  1015fd:	66 90                	xchg   %ax,%ax
  1015ff:	66 90                	xchg   %ax,%ax
  101601:	66 90                	xchg   %ax,%ax
  101603:	66 90                	xchg   %ax,%ax
  101605:	66 90                	xchg   %ax,%ax
  101607:	66 90                	xchg   %ax,%ax
  101609:	66 90                	xchg   %ax,%ax
  10160b:	66 90                	xchg   %ax,%ax
  10160d:	66 90                	xchg   %ax,%ax
  10160f:	66 90                	xchg   %ax,%ax
  101611:	66 90                	xchg   %ax,%ax
  101613:	66 90                	xchg   %ax,%ax
  101615:	66 90                	xchg   %ax,%ax
  101617:	66 90                	xchg   %ax,%ax
  101619:	66 90                	xchg   %ax,%ax
  10161b:	66 90                	xchg   %ax,%ax
  10161d:	66 90                	xchg   %ax,%ax
  10161f:	66 90                	xchg   %ax,%ax
  101621:	66 90                	xchg   %ax,%ax
  101623:	66 90                	xchg   %ax,%ax
  101625:	66 90                	xchg   %ax,%ax
  101627:	66 90                	xchg   %ax,%ax
  101629:	66 90                	xchg   %ax,%ax
  10162b:	66 90                	xchg   %ax,%ax
  10162d:	66 90                	xchg   %ax,%ax
  10162f:	66 90                	xchg   %ax,%ax
  101631:	66 90                	xchg   %ax,%ax
  101633:	66 90                	xchg   %ax,%ax
  101635:	66 90                	xchg   %ax,%ax
  101637:	66 90                	xchg   %ax,%ax
  101639:	66 90                	xchg   %ax,%ax
  10163b:	66 90                	xchg   %ax,%ax
  10163d:	66 90                	xchg   %ax,%ax
  10163f:	66 90                	xchg   %ax,%ax
  101641:	66 90                	xchg   %ax,%ax
  101643:	66 90                	xchg   %ax,%ax
  101645:	66 90                	xchg   %ax,%ax
  101647:	66 90                	xchg   %ax,%ax
  101649:	66 90                	xchg   %ax,%ax
  10164b:	66 90                	xchg   %ax,%ax
  10164d:	66 90                	xchg   %ax,%ax
  10164f:	66 90                	xchg   %ax,%ax
  101651:	66 90                	xchg   %ax,%ax
  101653:	66 90                	xchg   %ax,%ax
  101655:	66 90                	xchg   %ax,%ax
  101657:	66 90                	xchg   %ax,%ax
  101659:	66 90                	xchg   %ax,%ax
  10165b:	66 90                	xchg   %ax,%ax
  10165d:	66 90                	xchg   %ax,%ax
  10165f:	66 90                	xchg   %ax,%ax
  101661:	66 90                	xchg   %ax,%ax
  101663:	66 90                	xchg   %ax,%ax
  101665:	66 90                	xchg   %ax,%ax
  101667:	66 90                	xchg   %ax,%ax
  101669:	66 90                	xchg   %ax,%ax
  10166b:	66 90                	xchg   %ax,%ax
  10166d:	66 90                	xchg   %ax,%ax
  10166f:	66 90                	xchg   %ax,%ax
  101671:	66 90                	xchg   %ax,%ax
  101673:	66 90                	xchg   %ax,%ax
  101675:	66 90                	xchg   %ax,%ax
  101677:	66 90                	xchg   %ax,%ax
  101679:	66 90                	xchg   %ax,%ax
  10167b:	66 90                	xchg   %ax,%ax
  10167d:	66 90                	xchg   %ax,%ax
  10167f:	66 90                	xchg   %ax,%ax
  101681:	66 90                	xchg   %ax,%ax
  101683:	66 90                	xchg   %ax,%ax
  101685:	66 90                	xchg   %ax,%ax
  101687:	66 90                	xchg   %ax,%ax
  101689:	66 90                	xchg   %ax,%ax
  10168b:	66 90                	xchg   %ax,%ax
  10168d:	66 90                	xchg   %ax,%ax
  10168f:	66 90                	xchg   %ax,%ax
  101691:	66 90                	xchg   %ax,%ax
  101693:	66 90                	xchg   %ax,%ax
  101695:	66 90                	xchg   %ax,%ax
  101697:	66 90                	xchg   %ax,%ax
  101699:	66 90                	xchg   %ax,%ax
  10169b:	66 90                	xchg   %ax,%ax
  10169d:	66 90                	xchg   %ax,%ax
  10169f:	66 90                	xchg   %ax,%ax
  1016a1:	66 90                	xchg   %ax,%ax
  1016a3:	66 90                	xchg   %ax,%ax
  1016a5:	66 90                	xchg   %ax,%ax
  1016a7:	66 90                	xchg   %ax,%ax
  1016a9:	66 90                	xchg   %ax,%ax
  1016ab:	66 90                	xchg   %ax,%ax
  1016ad:	66 90                	xchg   %ax,%ax
  1016af:	66 90                	xchg   %ax,%ax
  1016b1:	66 90                	xchg   %ax,%ax
  1016b3:	66 90                	xchg   %ax,%ax
  1016b5:	66 90                	xchg   %ax,%ax
  1016b7:	66 90                	xchg   %ax,%ax
  1016b9:	66 90                	xchg   %ax,%ax
  1016bb:	66 90                	xchg   %ax,%ax
  1016bd:	66 90                	xchg   %ax,%ax
  1016bf:	66 90                	xchg   %ax,%ax
  1016c1:	66 90                	xchg   %ax,%ax
  1016c3:	66 90                	xchg   %ax,%ax
  1016c5:	66 90                	xchg   %ax,%ax
  1016c7:	66 90                	xchg   %ax,%ax
  1016c9:	66 90                	xchg   %ax,%ax
  1016cb:	66 90                	xchg   %ax,%ax
  1016cd:	66 90                	xchg   %ax,%ax
  1016cf:	66 90                	xchg   %ax,%ax
  1016d1:	66 90                	xchg   %ax,%ax
  1016d3:	66 90                	xchg   %ax,%ax
  1016d5:	66 90                	xchg   %ax,%ax
  1016d7:	66 90                	xchg   %ax,%ax
  1016d9:	66 90                	xchg   %ax,%ax
  1016db:	66 90                	xchg   %ax,%ax
  1016dd:	66 90                	xchg   %ax,%ax
  1016df:	66 90                	xchg   %ax,%ax
  1016e1:	66 90                	xchg   %ax,%ax
  1016e3:	66 90                	xchg   %ax,%ax
  1016e5:	66 90                	xchg   %ax,%ax
  1016e7:	66 90                	xchg   %ax,%ax
  1016e9:	66 90                	xchg   %ax,%ax
  1016eb:	66 90                	xchg   %ax,%ax
  1016ed:	66 90                	xchg   %ax,%ax
  1016ef:	66 90                	xchg   %ax,%ax
  1016f1:	66 90                	xchg   %ax,%ax
  1016f3:	66 90                	xchg   %ax,%ax
  1016f5:	66 90                	xchg   %ax,%ax
  1016f7:	66 90                	xchg   %ax,%ax
  1016f9:	66 90                	xchg   %ax,%ax
  1016fb:	66 90                	xchg   %ax,%ax
  1016fd:	66 90                	xchg   %ax,%ax
  1016ff:	66 90                	xchg   %ax,%ax
  101701:	66 90                	xchg   %ax,%ax
  101703:	66 90                	xchg   %ax,%ax
  101705:	66 90                	xchg   %ax,%ax
  101707:	66 90                	xchg   %ax,%ax
  101709:	66 90                	xchg   %ax,%ax
  10170b:	66 90                	xchg   %ax,%ax
  10170d:	66 90                	xchg   %ax,%ax
  10170f:	66 90                	xchg   %ax,%ax
  101711:	66 90                	xchg   %ax,%ax
  101713:	66 90                	xchg   %ax,%ax
  101715:	66 90                	xchg   %ax,%ax
  101717:	66 90                	xchg   %ax,%ax
  101719:	66 90                	xchg   %ax,%ax
  10171b:	66 90                	xchg   %ax,%ax
  10171d:	66 90                	xchg   %ax,%ax
  10171f:	66 90                	xchg   %ax,%ax
  101721:	66 90                	xchg   %ax,%ax
  101723:	66 90                	xchg   %ax,%ax
  101725:	66 90                	xchg   %ax,%ax
  101727:	66 90                	xchg   %ax,%ax
  101729:	66 90                	xchg   %ax,%ax
  10172b:	66 90                	xchg   %ax,%ax
  10172d:	66 90                	xchg   %ax,%ax
  10172f:	66 90                	xchg   %ax,%ax
  101731:	66 90                	xchg   %ax,%ax
  101733:	66 90                	xchg   %ax,%ax
  101735:	66 90                	xchg   %ax,%ax
  101737:	66 90                	xchg   %ax,%ax
  101739:	66 90                	xchg   %ax,%ax
  10173b:	66 90                	xchg   %ax,%ax
  10173d:	66 90                	xchg   %ax,%ax
  10173f:	66 90                	xchg   %ax,%ax
  101741:	66 90                	xchg   %ax,%ax
  101743:	66 90                	xchg   %ax,%ax
  101745:	66 90                	xchg   %ax,%ax
  101747:	66 90                	xchg   %ax,%ax
  101749:	66 90                	xchg   %ax,%ax
  10174b:	66 90                	xchg   %ax,%ax
  10174d:	66 90                	xchg   %ax,%ax
  10174f:	66 90                	xchg   %ax,%ax
  101751:	66 90                	xchg   %ax,%ax
  101753:	66 90                	xchg   %ax,%ax
  101755:	66 90                	xchg   %ax,%ax
  101757:	66 90                	xchg   %ax,%ax
  101759:	66 90                	xchg   %ax,%ax
  10175b:	66 90                	xchg   %ax,%ax
  10175d:	66 90                	xchg   %ax,%ax
  10175f:	66 90                	xchg   %ax,%ax
  101761:	66 90                	xchg   %ax,%ax
  101763:	66 90                	xchg   %ax,%ax
  101765:	66 90                	xchg   %ax,%ax
  101767:	66 90                	xchg   %ax,%ax
  101769:	66 90                	xchg   %ax,%ax
  10176b:	66 90                	xchg   %ax,%ax
  10176d:	66 90                	xchg   %ax,%ax
  10176f:	66 90                	xchg   %ax,%ax
  101771:	66 90                	xchg   %ax,%ax
  101773:	66 90                	xchg   %ax,%ax
  101775:	66 90                	xchg   %ax,%ax
  101777:	66 90                	xchg   %ax,%ax
  101779:	66 90                	xchg   %ax,%ax
  10177b:	66 90                	xchg   %ax,%ax
  10177d:	66 90                	xchg   %ax,%ax
  10177f:	66 90                	xchg   %ax,%ax
  101781:	66 90                	xchg   %ax,%ax
  101783:	66 90                	xchg   %ax,%ax
  101785:	66 90                	xchg   %ax,%ax
  101787:	66 90                	xchg   %ax,%ax
  101789:	66 90                	xchg   %ax,%ax
  10178b:	66 90                	xchg   %ax,%ax
  10178d:	66 90                	xchg   %ax,%ax
  10178f:	66 90                	xchg   %ax,%ax
  101791:	66 90                	xchg   %ax,%ax
  101793:	66 90                	xchg   %ax,%ax
  101795:	66 90                	xchg   %ax,%ax
  101797:	66 90                	xchg   %ax,%ax
  101799:	66 90                	xchg   %ax,%ax
  10179b:	66 90                	xchg   %ax,%ax
  10179d:	66 90                	xchg   %ax,%ax
  10179f:	66 90                	xchg   %ax,%ax
  1017a1:	66 90                	xchg   %ax,%ax
  1017a3:	66 90                	xchg   %ax,%ax
  1017a5:	66 90                	xchg   %ax,%ax
  1017a7:	66 90                	xchg   %ax,%ax
  1017a9:	66 90                	xchg   %ax,%ax
  1017ab:	66 90                	xchg   %ax,%ax
  1017ad:	66 90                	xchg   %ax,%ax
  1017af:	66 90                	xchg   %ax,%ax
  1017b1:	66 90                	xchg   %ax,%ax
  1017b3:	66 90                	xchg   %ax,%ax
  1017b5:	66 90                	xchg   %ax,%ax
  1017b7:	66 90                	xchg   %ax,%ax
  1017b9:	66 90                	xchg   %ax,%ax
  1017bb:	66 90                	xchg   %ax,%ax
  1017bd:	66 90                	xchg   %ax,%ax
  1017bf:	66 90                	xchg   %ax,%ax
  1017c1:	66 90                	xchg   %ax,%ax
  1017c3:	66 90                	xchg   %ax,%ax
  1017c5:	66 90                	xchg   %ax,%ax
  1017c7:	66 90                	xchg   %ax,%ax
  1017c9:	66 90                	xchg   %ax,%ax
  1017cb:	66 90                	xchg   %ax,%ax
  1017cd:	66 90                	xchg   %ax,%ax
  1017cf:	66 90                	xchg   %ax,%ax
  1017d1:	66 90                	xchg   %ax,%ax
  1017d3:	66 90                	xchg   %ax,%ax
  1017d5:	66 90                	xchg   %ax,%ax
  1017d7:	66 90                	xchg   %ax,%ax
  1017d9:	66 90                	xchg   %ax,%ax
  1017db:	66 90                	xchg   %ax,%ax
  1017dd:	66 90                	xchg   %ax,%ax
  1017df:	66 90                	xchg   %ax,%ax
  1017e1:	66 90                	xchg   %ax,%ax
  1017e3:	66 90                	xchg   %ax,%ax
  1017e5:	66 90                	xchg   %ax,%ax
  1017e7:	66 90                	xchg   %ax,%ax
  1017e9:	66 90                	xchg   %ax,%ax
  1017eb:	66 90                	xchg   %ax,%ax
  1017ed:	66 90                	xchg   %ax,%ax
  1017ef:	66 90                	xchg   %ax,%ax
  1017f1:	66 90                	xchg   %ax,%ax
  1017f3:	66 90                	xchg   %ax,%ax
  1017f5:	66 90                	xchg   %ax,%ax
  1017f7:	66 90                	xchg   %ax,%ax
  1017f9:	66 90                	xchg   %ax,%ax
  1017fb:	66 90                	xchg   %ax,%ax
  1017fd:	66 90                	xchg   %ax,%ax
  1017ff:	66 90                	xchg   %ax,%ax
  101801:	66 90                	xchg   %ax,%ax
  101803:	66 90                	xchg   %ax,%ax
  101805:	66 90                	xchg   %ax,%ax
  101807:	66 90                	xchg   %ax,%ax
  101809:	66 90                	xchg   %ax,%ax
  10180b:	66 90                	xchg   %ax,%ax
  10180d:	66 90                	xchg   %ax,%ax
  10180f:	66 90                	xchg   %ax,%ax
  101811:	66 90                	xchg   %ax,%ax
  101813:	66 90                	xchg   %ax,%ax
  101815:	66 90                	xchg   %ax,%ax
  101817:	66 90                	xchg   %ax,%ax
  101819:	66 90                	xchg   %ax,%ax
  10181b:	66 90                	xchg   %ax,%ax
  10181d:	66 90                	xchg   %ax,%ax
  10181f:	66 90                	xchg   %ax,%ax
  101821:	66 90                	xchg   %ax,%ax
  101823:	66 90                	xchg   %ax,%ax
  101825:	66 90                	xchg   %ax,%ax
  101827:	66 90                	xchg   %ax,%ax
  101829:	66 90                	xchg   %ax,%ax
  10182b:	66 90                	xchg   %ax,%ax
  10182d:	66 90                	xchg   %ax,%ax
  10182f:	66 90                	xchg   %ax,%ax
  101831:	66 90                	xchg   %ax,%ax
  101833:	66 90                	xchg   %ax,%ax
  101835:	66 90                	xchg   %ax,%ax
  101837:	66 90                	xchg   %ax,%ax
  101839:	66 90                	xchg   %ax,%ax
  10183b:	66 90                	xchg   %ax,%ax
  10183d:	66 90                	xchg   %ax,%ax
  10183f:	66 90                	xchg   %ax,%ax
  101841:	66 90                	xchg   %ax,%ax
  101843:	66 90                	xchg   %ax,%ax
  101845:	66 90                	xchg   %ax,%ax
  101847:	66 90                	xchg   %ax,%ax
  101849:	66 90                	xchg   %ax,%ax
  10184b:	66 90                	xchg   %ax,%ax
  10184d:	66 90                	xchg   %ax,%ax
  10184f:	66 90                	xchg   %ax,%ax
  101851:	66 90                	xchg   %ax,%ax
  101853:	66 90                	xchg   %ax,%ax
  101855:	66 90                	xchg   %ax,%ax
  101857:	66 90                	xchg   %ax,%ax
  101859:	66 90                	xchg   %ax,%ax
  10185b:	66 90                	xchg   %ax,%ax
  10185d:	66 90                	xchg   %ax,%ax
  10185f:	66 90                	xchg   %ax,%ax
  101861:	66 90                	xchg   %ax,%ax
  101863:	66 90                	xchg   %ax,%ax
  101865:	66 90                	xchg   %ax,%ax
  101867:	66 90                	xchg   %ax,%ax
  101869:	66 90                	xchg   %ax,%ax
  10186b:	66 90                	xchg   %ax,%ax
  10186d:	66 90                	xchg   %ax,%ax
  10186f:	66 90                	xchg   %ax,%ax
  101871:	66 90                	xchg   %ax,%ax
  101873:	66 90                	xchg   %ax,%ax
  101875:	66 90                	xchg   %ax,%ax
  101877:	66 90                	xchg   %ax,%ax
  101879:	66 90                	xchg   %ax,%ax
  10187b:	66 90                	xchg   %ax,%ax
  10187d:	66 90                	xchg   %ax,%ax
  10187f:	66 90                	xchg   %ax,%ax
  101881:	66 90                	xchg   %ax,%ax
  101883:	66 90                	xchg   %ax,%ax
  101885:	66 90                	xchg   %ax,%ax
  101887:	66 90                	xchg   %ax,%ax
  101889:	66 90                	xchg   %ax,%ax
  10188b:	66 90                	xchg   %ax,%ax
  10188d:	66 90                	xchg   %ax,%ax
  10188f:	66 90                	xchg   %ax,%ax
  101891:	66 90                	xchg   %ax,%ax
  101893:	66 90                	xchg   %ax,%ax
  101895:	66 90                	xchg   %ax,%ax
  101897:	66 90                	xchg   %ax,%ax
  101899:	66 90                	xchg   %ax,%ax
  10189b:	66 90                	xchg   %ax,%ax
  10189d:	66 90                	xchg   %ax,%ax
  10189f:	66 90                	xchg   %ax,%ax
  1018a1:	66 90                	xchg   %ax,%ax
  1018a3:	66 90                	xchg   %ax,%ax
  1018a5:	66 90                	xchg   %ax,%ax
  1018a7:	66 90                	xchg   %ax,%ax
  1018a9:	66 90                	xchg   %ax,%ax
  1018ab:	66 90                	xchg   %ax,%ax
  1018ad:	66 90                	xchg   %ax,%ax
  1018af:	66 90                	xchg   %ax,%ax
  1018b1:	66 90                	xchg   %ax,%ax
  1018b3:	66 90                	xchg   %ax,%ax
  1018b5:	66 90                	xchg   %ax,%ax
  1018b7:	66 90                	xchg   %ax,%ax
  1018b9:	66 90                	xchg   %ax,%ax
  1018bb:	66 90                	xchg   %ax,%ax
  1018bd:	66 90                	xchg   %ax,%ax
  1018bf:	66 90                	xchg   %ax,%ax
  1018c1:	66 90                	xchg   %ax,%ax
  1018c3:	66 90                	xchg   %ax,%ax
  1018c5:	66 90                	xchg   %ax,%ax
  1018c7:	66 90                	xchg   %ax,%ax
  1018c9:	66 90                	xchg   %ax,%ax
  1018cb:	66 90                	xchg   %ax,%ax
  1018cd:	66 90                	xchg   %ax,%ax
  1018cf:	66 90                	xchg   %ax,%ax
  1018d1:	66 90                	xchg   %ax,%ax
  1018d3:	66 90                	xchg   %ax,%ax
  1018d5:	66 90                	xchg   %ax,%ax
  1018d7:	66 90                	xchg   %ax,%ax
  1018d9:	66 90                	xchg   %ax,%ax
  1018db:	66 90                	xchg   %ax,%ax
  1018dd:	66 90                	xchg   %ax,%ax
  1018df:	66 90                	xchg   %ax,%ax
  1018e1:	66 90                	xchg   %ax,%ax
  1018e3:	66 90                	xchg   %ax,%ax
  1018e5:	66 90                	xchg   %ax,%ax
  1018e7:	66 90                	xchg   %ax,%ax
  1018e9:	66 90                	xchg   %ax,%ax
  1018eb:	66 90                	xchg   %ax,%ax
  1018ed:	66 90                	xchg   %ax,%ax
  1018ef:	66 90                	xchg   %ax,%ax
  1018f1:	66 90                	xchg   %ax,%ax
  1018f3:	66 90                	xchg   %ax,%ax
  1018f5:	66 90                	xchg   %ax,%ax
  1018f7:	66 90                	xchg   %ax,%ax
  1018f9:	66 90                	xchg   %ax,%ax
  1018fb:	66 90                	xchg   %ax,%ax
  1018fd:	66 90                	xchg   %ax,%ax
  1018ff:	66 90                	xchg   %ax,%ax
  101901:	66 90                	xchg   %ax,%ax
  101903:	66 90                	xchg   %ax,%ax
  101905:	66 90                	xchg   %ax,%ax
  101907:	66 90                	xchg   %ax,%ax
  101909:	66 90                	xchg   %ax,%ax
  10190b:	66 90                	xchg   %ax,%ax
  10190d:	66 90                	xchg   %ax,%ax
  10190f:	66 90                	xchg   %ax,%ax
  101911:	66 90                	xchg   %ax,%ax
  101913:	66 90                	xchg   %ax,%ax
  101915:	66 90                	xchg   %ax,%ax
  101917:	66 90                	xchg   %ax,%ax
  101919:	66 90                	xchg   %ax,%ax
  10191b:	66 90                	xchg   %ax,%ax
  10191d:	66 90                	xchg   %ax,%ax
  10191f:	66 90                	xchg   %ax,%ax
  101921:	66 90                	xchg   %ax,%ax
  101923:	66 90                	xchg   %ax,%ax
  101925:	66 90                	xchg   %ax,%ax
  101927:	66 90                	xchg   %ax,%ax
  101929:	66 90                	xchg   %ax,%ax
  10192b:	66 90                	xchg   %ax,%ax
  10192d:	66 90                	xchg   %ax,%ax
  10192f:	66 90                	xchg   %ax,%ax
  101931:	66 90                	xchg   %ax,%ax
  101933:	66 90                	xchg   %ax,%ax
  101935:	66 90                	xchg   %ax,%ax
  101937:	66 90                	xchg   %ax,%ax
  101939:	66 90                	xchg   %ax,%ax
  10193b:	66 90                	xchg   %ax,%ax
  10193d:	66 90                	xchg   %ax,%ax
  10193f:	66 90                	xchg   %ax,%ax
  101941:	66 90                	xchg   %ax,%ax
  101943:	66 90                	xchg   %ax,%ax
  101945:	66 90                	xchg   %ax,%ax
  101947:	66 90                	xchg   %ax,%ax
  101949:	66 90                	xchg   %ax,%ax
  10194b:	66 90                	xchg   %ax,%ax
  10194d:	66 90                	xchg   %ax,%ax
  10194f:	66 90                	xchg   %ax,%ax
  101951:	66 90                	xchg   %ax,%ax
  101953:	66 90                	xchg   %ax,%ax
  101955:	66 90                	xchg   %ax,%ax
  101957:	66 90                	xchg   %ax,%ax
  101959:	66 90                	xchg   %ax,%ax
  10195b:	66 90                	xchg   %ax,%ax
  10195d:	66 90                	xchg   %ax,%ax
  10195f:	66 90                	xchg   %ax,%ax
  101961:	66 90                	xchg   %ax,%ax
  101963:	66 90                	xchg   %ax,%ax
  101965:	66 90                	xchg   %ax,%ax
  101967:	66 90                	xchg   %ax,%ax
  101969:	66 90                	xchg   %ax,%ax
  10196b:	66 90                	xchg   %ax,%ax
  10196d:	66 90                	xchg   %ax,%ax
  10196f:	66 90                	xchg   %ax,%ax
  101971:	66 90                	xchg   %ax,%ax
  101973:	66 90                	xchg   %ax,%ax
  101975:	66 90                	xchg   %ax,%ax
  101977:	66 90                	xchg   %ax,%ax
  101979:	66 90                	xchg   %ax,%ax
  10197b:	66 90                	xchg   %ax,%ax
  10197d:	66 90                	xchg   %ax,%ax
  10197f:	66 90                	xchg   %ax,%ax
  101981:	66 90                	xchg   %ax,%ax
  101983:	66 90                	xchg   %ax,%ax
  101985:	66 90                	xchg   %ax,%ax
  101987:	66 90                	xchg   %ax,%ax
  101989:	66 90                	xchg   %ax,%ax
  10198b:	66 90                	xchg   %ax,%ax
  10198d:	66 90                	xchg   %ax,%ax
  10198f:	66 90                	xchg   %ax,%ax
  101991:	66 90                	xchg   %ax,%ax
  101993:	66 90                	xchg   %ax,%ax
  101995:	66 90                	xchg   %ax,%ax
  101997:	66 90                	xchg   %ax,%ax
  101999:	66 90                	xchg   %ax,%ax
  10199b:	66 90                	xchg   %ax,%ax
  10199d:	66 90                	xchg   %ax,%ax
  10199f:	66 90                	xchg   %ax,%ax
  1019a1:	66 90                	xchg   %ax,%ax
  1019a3:	66 90                	xchg   %ax,%ax
  1019a5:	66 90                	xchg   %ax,%ax
  1019a7:	66 90                	xchg   %ax,%ax
  1019a9:	66 90                	xchg   %ax,%ax
  1019ab:	66 90                	xchg   %ax,%ax
  1019ad:	66 90                	xchg   %ax,%ax
  1019af:	66 90                	xchg   %ax,%ax
  1019b1:	66 90                	xchg   %ax,%ax
  1019b3:	66 90                	xchg   %ax,%ax
  1019b5:	66 90                	xchg   %ax,%ax
  1019b7:	66 90                	xchg   %ax,%ax
  1019b9:	66 90                	xchg   %ax,%ax
  1019bb:	66 90                	xchg   %ax,%ax
  1019bd:	66 90                	xchg   %ax,%ax
  1019bf:	66 90                	xchg   %ax,%ax
  1019c1:	66 90                	xchg   %ax,%ax
  1019c3:	66 90                	xchg   %ax,%ax
  1019c5:	66 90                	xchg   %ax,%ax
  1019c7:	66 90                	xchg   %ax,%ax
  1019c9:	66 90                	xchg   %ax,%ax
  1019cb:	66 90                	xchg   %ax,%ax
  1019cd:	66 90                	xchg   %ax,%ax
  1019cf:	66 90                	xchg   %ax,%ax
  1019d1:	66 90                	xchg   %ax,%ax
  1019d3:	66 90                	xchg   %ax,%ax
  1019d5:	66 90                	xchg   %ax,%ax
  1019d7:	66 90                	xchg   %ax,%ax
  1019d9:	66 90                	xchg   %ax,%ax
  1019db:	66 90                	xchg   %ax,%ax
  1019dd:	66 90                	xchg   %ax,%ax
  1019df:	66 90                	xchg   %ax,%ax
  1019e1:	66 90                	xchg   %ax,%ax
  1019e3:	66 90                	xchg   %ax,%ax
  1019e5:	66 90                	xchg   %ax,%ax
  1019e7:	66 90                	xchg   %ax,%ax
  1019e9:	66 90                	xchg   %ax,%ax
  1019eb:	66 90                	xchg   %ax,%ax
  1019ed:	66 90                	xchg   %ax,%ax
  1019ef:	66 90                	xchg   %ax,%ax
  1019f1:	66 90                	xchg   %ax,%ax
  1019f3:	66 90                	xchg   %ax,%ax
  1019f5:	66 90                	xchg   %ax,%ax
  1019f7:	66 90                	xchg   %ax,%ax
  1019f9:	66 90                	xchg   %ax,%ax
  1019fb:	66 90                	xchg   %ax,%ax
  1019fd:	66 90                	xchg   %ax,%ax
  1019ff:	66 90                	xchg   %ax,%ax
  101a01:	66 90                	xchg   %ax,%ax
  101a03:	66 90                	xchg   %ax,%ax
  101a05:	66 90                	xchg   %ax,%ax
  101a07:	66 90                	xchg   %ax,%ax
  101a09:	66 90                	xchg   %ax,%ax
  101a0b:	66 90                	xchg   %ax,%ax
  101a0d:	66 90                	xchg   %ax,%ax
  101a0f:	66 90                	xchg   %ax,%ax
  101a11:	66 90                	xchg   %ax,%ax
  101a13:	66 90                	xchg   %ax,%ax
  101a15:	66 90                	xchg   %ax,%ax
  101a17:	66 90                	xchg   %ax,%ax
  101a19:	66 90                	xchg   %ax,%ax
  101a1b:	66 90                	xchg   %ax,%ax
  101a1d:	66 90                	xchg   %ax,%ax
  101a1f:	66 90                	xchg   %ax,%ax
  101a21:	66 90                	xchg   %ax,%ax
  101a23:	66 90                	xchg   %ax,%ax
  101a25:	66 90                	xchg   %ax,%ax
  101a27:	66 90                	xchg   %ax,%ax
  101a29:	66 90                	xchg   %ax,%ax
  101a2b:	66 90                	xchg   %ax,%ax
  101a2d:	66 90                	xchg   %ax,%ax
  101a2f:	66 90                	xchg   %ax,%ax
  101a31:	66 90                	xchg   %ax,%ax
  101a33:	66 90                	xchg   %ax,%ax
  101a35:	66 90                	xchg   %ax,%ax
  101a37:	66 90                	xchg   %ax,%ax
  101a39:	66 90                	xchg   %ax,%ax
  101a3b:	66 90                	xchg   %ax,%ax
  101a3d:	66 90                	xchg   %ax,%ax
  101a3f:	66 90                	xchg   %ax,%ax
  101a41:	66 90                	xchg   %ax,%ax
  101a43:	66 90                	xchg   %ax,%ax
  101a45:	66 90                	xchg   %ax,%ax
  101a47:	66 90                	xchg   %ax,%ax
  101a49:	66 90                	xchg   %ax,%ax
  101a4b:	66 90                	xchg   %ax,%ax
  101a4d:	66 90                	xchg   %ax,%ax
  101a4f:	66 90                	xchg   %ax,%ax
  101a51:	66 90                	xchg   %ax,%ax
  101a53:	66 90                	xchg   %ax,%ax
  101a55:	66 90                	xchg   %ax,%ax
  101a57:	66 90                	xchg   %ax,%ax
  101a59:	66 90                	xchg   %ax,%ax
  101a5b:	66 90                	xchg   %ax,%ax
  101a5d:	66 90                	xchg   %ax,%ax
  101a5f:	66 90                	xchg   %ax,%ax
  101a61:	66 90                	xchg   %ax,%ax
  101a63:	66 90                	xchg   %ax,%ax
  101a65:	66 90                	xchg   %ax,%ax
  101a67:	66 90                	xchg   %ax,%ax
  101a69:	66 90                	xchg   %ax,%ax
  101a6b:	66 90                	xchg   %ax,%ax
  101a6d:	66 90                	xchg   %ax,%ax
  101a6f:	66 90                	xchg   %ax,%ax
  101a71:	66 90                	xchg   %ax,%ax
  101a73:	66 90                	xchg   %ax,%ax
  101a75:	66 90                	xchg   %ax,%ax
  101a77:	66 90                	xchg   %ax,%ax
  101a79:	66 90                	xchg   %ax,%ax
  101a7b:	66 90                	xchg   %ax,%ax
  101a7d:	66 90                	xchg   %ax,%ax
  101a7f:	66 90                	xchg   %ax,%ax
  101a81:	66 90                	xchg   %ax,%ax
  101a83:	66 90                	xchg   %ax,%ax
  101a85:	66 90                	xchg   %ax,%ax
  101a87:	66 90                	xchg   %ax,%ax
  101a89:	66 90                	xchg   %ax,%ax
  101a8b:	66 90                	xchg   %ax,%ax
  101a8d:	66 90                	xchg   %ax,%ax
  101a8f:	66 90                	xchg   %ax,%ax
  101a91:	66 90                	xchg   %ax,%ax
  101a93:	66 90                	xchg   %ax,%ax
  101a95:	66 90                	xchg   %ax,%ax
  101a97:	66 90                	xchg   %ax,%ax
  101a99:	66 90                	xchg   %ax,%ax
  101a9b:	66 90                	xchg   %ax,%ax
  101a9d:	66 90                	xchg   %ax,%ax
  101a9f:	66 90                	xchg   %ax,%ax
  101aa1:	66 90                	xchg   %ax,%ax
  101aa3:	66 90                	xchg   %ax,%ax
  101aa5:	66 90                	xchg   %ax,%ax
  101aa7:	66 90                	xchg   %ax,%ax
  101aa9:	66 90                	xchg   %ax,%ax
  101aab:	66 90                	xchg   %ax,%ax
  101aad:	66 90                	xchg   %ax,%ax
  101aaf:	66 90                	xchg   %ax,%ax
  101ab1:	66 90                	xchg   %ax,%ax
  101ab3:	66 90                	xchg   %ax,%ax
  101ab5:	66 90                	xchg   %ax,%ax
  101ab7:	66 90                	xchg   %ax,%ax
  101ab9:	66 90                	xchg   %ax,%ax
  101abb:	66 90                	xchg   %ax,%ax
  101abd:	66 90                	xchg   %ax,%ax
  101abf:	66 90                	xchg   %ax,%ax
  101ac1:	66 90                	xchg   %ax,%ax
  101ac3:	66 90                	xchg   %ax,%ax
  101ac5:	66 90                	xchg   %ax,%ax
  101ac7:	66 90                	xchg   %ax,%ax
  101ac9:	66 90                	xchg   %ax,%ax
  101acb:	66 90                	xchg   %ax,%ax
  101acd:	66 90                	xchg   %ax,%ax
  101acf:	66 90                	xchg   %ax,%ax
  101ad1:	66 90                	xchg   %ax,%ax
  101ad3:	66 90                	xchg   %ax,%ax
  101ad5:	66 90                	xchg   %ax,%ax
  101ad7:	66 90                	xchg   %ax,%ax
  101ad9:	66 90                	xchg   %ax,%ax
  101adb:	66 90                	xchg   %ax,%ax
  101add:	66 90                	xchg   %ax,%ax
  101adf:	66 90                	xchg   %ax,%ax
  101ae1:	66 90                	xchg   %ax,%ax
  101ae3:	66 90                	xchg   %ax,%ax
  101ae5:	66 90                	xchg   %ax,%ax
  101ae7:	66 90                	xchg   %ax,%ax
  101ae9:	66 90                	xchg   %ax,%ax
  101aeb:	66 90                	xchg   %ax,%ax
  101aed:	66 90                	xchg   %ax,%ax
  101aef:	66 90                	xchg   %ax,%ax
  101af1:	66 90                	xchg   %ax,%ax
  101af3:	66 90                	xchg   %ax,%ax
  101af5:	66 90                	xchg   %ax,%ax
  101af7:	66 90                	xchg   %ax,%ax
  101af9:	66 90                	xchg   %ax,%ax
  101afb:	66 90                	xchg   %ax,%ax
  101afd:	66 90                	xchg   %ax,%ax
  101aff:	66 90                	xchg   %ax,%ax
  101b01:	66 90                	xchg   %ax,%ax
  101b03:	66 90                	xchg   %ax,%ax
  101b05:	66 90                	xchg   %ax,%ax
  101b07:	66 90                	xchg   %ax,%ax
  101b09:	66 90                	xchg   %ax,%ax
  101b0b:	66 90                	xchg   %ax,%ax
  101b0d:	66 90                	xchg   %ax,%ax
  101b0f:	66 90                	xchg   %ax,%ax
  101b11:	66 90                	xchg   %ax,%ax
  101b13:	66 90                	xchg   %ax,%ax
  101b15:	66 90                	xchg   %ax,%ax
  101b17:	66 90                	xchg   %ax,%ax
  101b19:	66 90                	xchg   %ax,%ax
  101b1b:	66 90                	xchg   %ax,%ax
  101b1d:	66 90                	xchg   %ax,%ax
  101b1f:	66 90                	xchg   %ax,%ax
  101b21:	66 90                	xchg   %ax,%ax
  101b23:	66 90                	xchg   %ax,%ax
  101b25:	66 90                	xchg   %ax,%ax
  101b27:	66 90                	xchg   %ax,%ax
  101b29:	66 90                	xchg   %ax,%ax
  101b2b:	66 90                	xchg   %ax,%ax
  101b2d:	66 90                	xchg   %ax,%ax
  101b2f:	66 90                	xchg   %ax,%ax
  101b31:	66 90                	xchg   %ax,%ax
  101b33:	66 90                	xchg   %ax,%ax
  101b35:	66 90                	xchg   %ax,%ax
  101b37:	66 90                	xchg   %ax,%ax
  101b39:	66 90                	xchg   %ax,%ax
  101b3b:	66 90                	xchg   %ax,%ax
  101b3d:	66 90                	xchg   %ax,%ax
  101b3f:	66 90                	xchg   %ax,%ax
  101b41:	66 90                	xchg   %ax,%ax
  101b43:	66 90                	xchg   %ax,%ax
  101b45:	66 90                	xchg   %ax,%ax
  101b47:	66 90                	xchg   %ax,%ax
  101b49:	66 90                	xchg   %ax,%ax
  101b4b:	66 90                	xchg   %ax,%ax
  101b4d:	66 90                	xchg   %ax,%ax
  101b4f:	66 90                	xchg   %ax,%ax
  101b51:	66 90                	xchg   %ax,%ax
  101b53:	66 90                	xchg   %ax,%ax
  101b55:	66 90                	xchg   %ax,%ax
  101b57:	66 90                	xchg   %ax,%ax
  101b59:	66 90                	xchg   %ax,%ax
  101b5b:	66 90                	xchg   %ax,%ax
  101b5d:	66 90                	xchg   %ax,%ax
  101b5f:	66 90                	xchg   %ax,%ax
  101b61:	66 90                	xchg   %ax,%ax
  101b63:	66 90                	xchg   %ax,%ax
  101b65:	66 90                	xchg   %ax,%ax
  101b67:	66 90                	xchg   %ax,%ax
  101b69:	66 90                	xchg   %ax,%ax
  101b6b:	66 90                	xchg   %ax,%ax
  101b6d:	66 90                	xchg   %ax,%ax
  101b6f:	66 90                	xchg   %ax,%ax
  101b71:	66 90                	xchg   %ax,%ax
  101b73:	66 90                	xchg   %ax,%ax
  101b75:	66 90                	xchg   %ax,%ax
  101b77:	66 90                	xchg   %ax,%ax
  101b79:	66 90                	xchg   %ax,%ax
  101b7b:	66 90                	xchg   %ax,%ax
  101b7d:	66 90                	xchg   %ax,%ax
  101b7f:	66 90                	xchg   %ax,%ax
  101b81:	66 90                	xchg   %ax,%ax
  101b83:	66 90                	xchg   %ax,%ax
  101b85:	66 90                	xchg   %ax,%ax
  101b87:	66 90                	xchg   %ax,%ax
  101b89:	66 90                	xchg   %ax,%ax
  101b8b:	66 90                	xchg   %ax,%ax
  101b8d:	66 90                	xchg   %ax,%ax
  101b8f:	66 90                	xchg   %ax,%ax
  101b91:	66 90                	xchg   %ax,%ax
  101b93:	66 90                	xchg   %ax,%ax
  101b95:	66 90                	xchg   %ax,%ax
  101b97:	66 90                	xchg   %ax,%ax
  101b99:	66 90                	xchg   %ax,%ax
  101b9b:	66 90                	xchg   %ax,%ax
  101b9d:	66 90                	xchg   %ax,%ax
  101b9f:	66 90                	xchg   %ax,%ax
  101ba1:	66 90                	xchg   %ax,%ax
  101ba3:	66 90                	xchg   %ax,%ax
  101ba5:	66 90                	xchg   %ax,%ax
  101ba7:	66 90                	xchg   %ax,%ax
  101ba9:	66 90                	xchg   %ax,%ax
  101bab:	66 90                	xchg   %ax,%ax
  101bad:	66 90                	xchg   %ax,%ax
  101baf:	66 90                	xchg   %ax,%ax
  101bb1:	66 90                	xchg   %ax,%ax
  101bb3:	66 90                	xchg   %ax,%ax
  101bb5:	66 90                	xchg   %ax,%ax
  101bb7:	66 90                	xchg   %ax,%ax
  101bb9:	66 90                	xchg   %ax,%ax
  101bbb:	66 90                	xchg   %ax,%ax
  101bbd:	66 90                	xchg   %ax,%ax
  101bbf:	66 90                	xchg   %ax,%ax
  101bc1:	66 90                	xchg   %ax,%ax
  101bc3:	66 90                	xchg   %ax,%ax
  101bc5:	66 90                	xchg   %ax,%ax
  101bc7:	66 90                	xchg   %ax,%ax
  101bc9:	66 90                	xchg   %ax,%ax
  101bcb:	66 90                	xchg   %ax,%ax
  101bcd:	66 90                	xchg   %ax,%ax
  101bcf:	66 90                	xchg   %ax,%ax
  101bd1:	66 90                	xchg   %ax,%ax
  101bd3:	66 90                	xchg   %ax,%ax
  101bd5:	66 90                	xchg   %ax,%ax
  101bd7:	66 90                	xchg   %ax,%ax
  101bd9:	66 90                	xchg   %ax,%ax
  101bdb:	66 90                	xchg   %ax,%ax
  101bdd:	66 90                	xchg   %ax,%ax
  101bdf:	66 90                	xchg   %ax,%ax
  101be1:	66 90                	xchg   %ax,%ax
  101be3:	66 90                	xchg   %ax,%ax
  101be5:	66 90                	xchg   %ax,%ax
  101be7:	66 90                	xchg   %ax,%ax
  101be9:	66 90                	xchg   %ax,%ax
  101beb:	66 90                	xchg   %ax,%ax
  101bed:	66 90                	xchg   %ax,%ax
  101bef:	66 90                	xchg   %ax,%ax
  101bf1:	66 90                	xchg   %ax,%ax
  101bf3:	66 90                	xchg   %ax,%ax
  101bf5:	66 90                	xchg   %ax,%ax
  101bf7:	66 90                	xchg   %ax,%ax
  101bf9:	66 90                	xchg   %ax,%ax
  101bfb:	66 90                	xchg   %ax,%ax
  101bfd:	66 90                	xchg   %ax,%ax
  101bff:	66 90                	xchg   %ax,%ax
  101c01:	66 90                	xchg   %ax,%ax
  101c03:	66 90                	xchg   %ax,%ax
  101c05:	66 90                	xchg   %ax,%ax
  101c07:	66 90                	xchg   %ax,%ax
  101c09:	66 90                	xchg   %ax,%ax
  101c0b:	66 90                	xchg   %ax,%ax
  101c0d:	66 90                	xchg   %ax,%ax
  101c0f:	66 90                	xchg   %ax,%ax
  101c11:	66 90                	xchg   %ax,%ax
  101c13:	66 90                	xchg   %ax,%ax
  101c15:	66 90                	xchg   %ax,%ax
  101c17:	66 90                	xchg   %ax,%ax
  101c19:	66 90                	xchg   %ax,%ax
  101c1b:	66 90                	xchg   %ax,%ax
  101c1d:	66 90                	xchg   %ax,%ax
  101c1f:	66 90                	xchg   %ax,%ax
  101c21:	66 90                	xchg   %ax,%ax
  101c23:	66 90                	xchg   %ax,%ax
  101c25:	66 90                	xchg   %ax,%ax
  101c27:	66 90                	xchg   %ax,%ax
  101c29:	66 90                	xchg   %ax,%ax
  101c2b:	66 90                	xchg   %ax,%ax
  101c2d:	66 90                	xchg   %ax,%ax
  101c2f:	66 90                	xchg   %ax,%ax
  101c31:	66 90                	xchg   %ax,%ax
  101c33:	66 90                	xchg   %ax,%ax
  101c35:	66 90                	xchg   %ax,%ax
  101c37:	66 90                	xchg   %ax,%ax
  101c39:	66 90                	xchg   %ax,%ax
  101c3b:	66 90                	xchg   %ax,%ax
  101c3d:	66 90                	xchg   %ax,%ax
  101c3f:	66 90                	xchg   %ax,%ax
  101c41:	66 90                	xchg   %ax,%ax
  101c43:	66 90                	xchg   %ax,%ax
  101c45:	66 90                	xchg   %ax,%ax
  101c47:	66 90                	xchg   %ax,%ax
  101c49:	66 90                	xchg   %ax,%ax
  101c4b:	66 90                	xchg   %ax,%ax
  101c4d:	66 90                	xchg   %ax,%ax
  101c4f:	66 90                	xchg   %ax,%ax
  101c51:	66 90                	xchg   %ax,%ax
  101c53:	66 90                	xchg   %ax,%ax
  101c55:	66 90                	xchg   %ax,%ax
  101c57:	66 90                	xchg   %ax,%ax
  101c59:	66 90                	xchg   %ax,%ax
  101c5b:	66 90                	xchg   %ax,%ax
  101c5d:	66 90                	xchg   %ax,%ax
  101c5f:	66 90                	xchg   %ax,%ax
  101c61:	66 90                	xchg   %ax,%ax
  101c63:	66 90                	xchg   %ax,%ax
  101c65:	66 90                	xchg   %ax,%ax
  101c67:	66 90                	xchg   %ax,%ax
  101c69:	66 90                	xchg   %ax,%ax
  101c6b:	66 90                	xchg   %ax,%ax
  101c6d:	66 90                	xchg   %ax,%ax
  101c6f:	66 90                	xchg   %ax,%ax
  101c71:	66 90                	xchg   %ax,%ax
  101c73:	66 90                	xchg   %ax,%ax
  101c75:	66 90                	xchg   %ax,%ax
  101c77:	66 90                	xchg   %ax,%ax
  101c79:	66 90                	xchg   %ax,%ax
  101c7b:	66 90                	xchg   %ax,%ax
  101c7d:	66 90                	xchg   %ax,%ax
  101c7f:	66 90                	xchg   %ax,%ax
  101c81:	66 90                	xchg   %ax,%ax
  101c83:	66 90                	xchg   %ax,%ax
  101c85:	66 90                	xchg   %ax,%ax
  101c87:	66 90                	xchg   %ax,%ax
  101c89:	66 90                	xchg   %ax,%ax
  101c8b:	66 90                	xchg   %ax,%ax
  101c8d:	66 90                	xchg   %ax,%ax
  101c8f:	66 90                	xchg   %ax,%ax
  101c91:	66 90                	xchg   %ax,%ax
  101c93:	66 90                	xchg   %ax,%ax
  101c95:	66 90                	xchg   %ax,%ax
  101c97:	66 90                	xchg   %ax,%ax
  101c99:	66 90                	xchg   %ax,%ax
  101c9b:	66 90                	xchg   %ax,%ax
  101c9d:	66 90                	xchg   %ax,%ax
  101c9f:	66 90                	xchg   %ax,%ax
  101ca1:	66 90                	xchg   %ax,%ax
  101ca3:	66 90                	xchg   %ax,%ax
  101ca5:	66 90                	xchg   %ax,%ax
  101ca7:	66 90                	xchg   %ax,%ax
  101ca9:	66 90                	xchg   %ax,%ax
  101cab:	66 90                	xchg   %ax,%ax
  101cad:	66 90                	xchg   %ax,%ax
  101caf:	66 90                	xchg   %ax,%ax
  101cb1:	66 90                	xchg   %ax,%ax
  101cb3:	66 90                	xchg   %ax,%ax
  101cb5:	66 90                	xchg   %ax,%ax
  101cb7:	66 90                	xchg   %ax,%ax
  101cb9:	66 90                	xchg   %ax,%ax
  101cbb:	66 90                	xchg   %ax,%ax
  101cbd:	66 90                	xchg   %ax,%ax
  101cbf:	66 90                	xchg   %ax,%ax
  101cc1:	66 90                	xchg   %ax,%ax
  101cc3:	66 90                	xchg   %ax,%ax
  101cc5:	66 90                	xchg   %ax,%ax
  101cc7:	66 90                	xchg   %ax,%ax
  101cc9:	66 90                	xchg   %ax,%ax
  101ccb:	66 90                	xchg   %ax,%ax
  101ccd:	66 90                	xchg   %ax,%ax
  101ccf:	66 90                	xchg   %ax,%ax
  101cd1:	66 90                	xchg   %ax,%ax
  101cd3:	66 90                	xchg   %ax,%ax
  101cd5:	66 90                	xchg   %ax,%ax
  101cd7:	66 90                	xchg   %ax,%ax
  101cd9:	66 90                	xchg   %ax,%ax
  101cdb:	66 90                	xchg   %ax,%ax
  101cdd:	66 90                	xchg   %ax,%ax
  101cdf:	66 90                	xchg   %ax,%ax
  101ce1:	66 90                	xchg   %ax,%ax
  101ce3:	66 90                	xchg   %ax,%ax
  101ce5:	66 90                	xchg   %ax,%ax
  101ce7:	66 90                	xchg   %ax,%ax
  101ce9:	66 90                	xchg   %ax,%ax
  101ceb:	66 90                	xchg   %ax,%ax
  101ced:	66 90                	xchg   %ax,%ax
  101cef:	66 90                	xchg   %ax,%ax
  101cf1:	66 90                	xchg   %ax,%ax
  101cf3:	66 90                	xchg   %ax,%ax
  101cf5:	66 90                	xchg   %ax,%ax
  101cf7:	66 90                	xchg   %ax,%ax
  101cf9:	66 90                	xchg   %ax,%ax
  101cfb:	66 90                	xchg   %ax,%ax
  101cfd:	66 90                	xchg   %ax,%ax
  101cff:	66 90                	xchg   %ax,%ax
  101d01:	66 90                	xchg   %ax,%ax
  101d03:	66 90                	xchg   %ax,%ax
  101d05:	66 90                	xchg   %ax,%ax
  101d07:	66 90                	xchg   %ax,%ax
  101d09:	66 90                	xchg   %ax,%ax
  101d0b:	66 90                	xchg   %ax,%ax
  101d0d:	66 90                	xchg   %ax,%ax
  101d0f:	66 90                	xchg   %ax,%ax
  101d11:	66 90                	xchg   %ax,%ax
  101d13:	66 90                	xchg   %ax,%ax
  101d15:	66 90                	xchg   %ax,%ax
  101d17:	66 90                	xchg   %ax,%ax
  101d19:	66 90                	xchg   %ax,%ax
  101d1b:	66 90                	xchg   %ax,%ax
  101d1d:	66 90                	xchg   %ax,%ax
  101d1f:	66 90                	xchg   %ax,%ax
  101d21:	66 90                	xchg   %ax,%ax
  101d23:	66 90                	xchg   %ax,%ax
  101d25:	66 90                	xchg   %ax,%ax
  101d27:	66 90                	xchg   %ax,%ax
  101d29:	66 90                	xchg   %ax,%ax
  101d2b:	66 90                	xchg   %ax,%ax
  101d2d:	66 90                	xchg   %ax,%ax
  101d2f:	66 90                	xchg   %ax,%ax
  101d31:	66 90                	xchg   %ax,%ax
  101d33:	66 90                	xchg   %ax,%ax
  101d35:	66 90                	xchg   %ax,%ax
  101d37:	66 90                	xchg   %ax,%ax
  101d39:	66 90                	xchg   %ax,%ax
  101d3b:	66 90                	xchg   %ax,%ax
  101d3d:	66 90                	xchg   %ax,%ax
  101d3f:	66 90                	xchg   %ax,%ax
  101d41:	66 90                	xchg   %ax,%ax
  101d43:	66 90                	xchg   %ax,%ax
  101d45:	66 90                	xchg   %ax,%ax
  101d47:	66 90                	xchg   %ax,%ax
  101d49:	66 90                	xchg   %ax,%ax
  101d4b:	66 90                	xchg   %ax,%ax
  101d4d:	66 90                	xchg   %ax,%ax
  101d4f:	66 90                	xchg   %ax,%ax
  101d51:	66 90                	xchg   %ax,%ax
  101d53:	66 90                	xchg   %ax,%ax
  101d55:	66 90                	xchg   %ax,%ax
  101d57:	66 90                	xchg   %ax,%ax
  101d59:	66 90                	xchg   %ax,%ax
  101d5b:	66 90                	xchg   %ax,%ax
  101d5d:	66 90                	xchg   %ax,%ax
  101d5f:	66 90                	xchg   %ax,%ax
  101d61:	66 90                	xchg   %ax,%ax
  101d63:	66 90                	xchg   %ax,%ax
  101d65:	66 90                	xchg   %ax,%ax
  101d67:	66 90                	xchg   %ax,%ax
  101d69:	66 90                	xchg   %ax,%ax
  101d6b:	66 90                	xchg   %ax,%ax
  101d6d:	66 90                	xchg   %ax,%ax
  101d6f:	66 90                	xchg   %ax,%ax
  101d71:	66 90                	xchg   %ax,%ax
  101d73:	66 90                	xchg   %ax,%ax
  101d75:	66 90                	xchg   %ax,%ax
  101d77:	66 90                	xchg   %ax,%ax
  101d79:	66 90                	xchg   %ax,%ax
  101d7b:	66 90                	xchg   %ax,%ax
  101d7d:	66 90                	xchg   %ax,%ax
  101d7f:	66 90                	xchg   %ax,%ax
  101d81:	66 90                	xchg   %ax,%ax
  101d83:	66 90                	xchg   %ax,%ax
  101d85:	66 90                	xchg   %ax,%ax
  101d87:	66 90                	xchg   %ax,%ax
  101d89:	66 90                	xchg   %ax,%ax
  101d8b:	66 90                	xchg   %ax,%ax
  101d8d:	66 90                	xchg   %ax,%ax
  101d8f:	66 90                	xchg   %ax,%ax
  101d91:	66 90                	xchg   %ax,%ax
  101d93:	66 90                	xchg   %ax,%ax
  101d95:	66 90                	xchg   %ax,%ax
  101d97:	66 90                	xchg   %ax,%ax
  101d99:	66 90                	xchg   %ax,%ax
  101d9b:	66 90                	xchg   %ax,%ax
  101d9d:	66 90                	xchg   %ax,%ax
  101d9f:	66 90                	xchg   %ax,%ax
  101da1:	66 90                	xchg   %ax,%ax
  101da3:	66 90                	xchg   %ax,%ax
  101da5:	66 90                	xchg   %ax,%ax
  101da7:	66 90                	xchg   %ax,%ax
  101da9:	66 90                	xchg   %ax,%ax
  101dab:	66 90                	xchg   %ax,%ax
  101dad:	66 90                	xchg   %ax,%ax
  101daf:	66 90                	xchg   %ax,%ax
  101db1:	66 90                	xchg   %ax,%ax
  101db3:	66 90                	xchg   %ax,%ax
  101db5:	66 90                	xchg   %ax,%ax
  101db7:	66 90                	xchg   %ax,%ax
  101db9:	66 90                	xchg   %ax,%ax
  101dbb:	66 90                	xchg   %ax,%ax
  101dbd:	66 90                	xchg   %ax,%ax
  101dbf:	66 90                	xchg   %ax,%ax
  101dc1:	66 90                	xchg   %ax,%ax
  101dc3:	66 90                	xchg   %ax,%ax
  101dc5:	66 90                	xchg   %ax,%ax
  101dc7:	66 90                	xchg   %ax,%ax
  101dc9:	66 90                	xchg   %ax,%ax
  101dcb:	66 90                	xchg   %ax,%ax
  101dcd:	66 90                	xchg   %ax,%ax
  101dcf:	66 90                	xchg   %ax,%ax
  101dd1:	66 90                	xchg   %ax,%ax
  101dd3:	66 90                	xchg   %ax,%ax
  101dd5:	66 90                	xchg   %ax,%ax
  101dd7:	66 90                	xchg   %ax,%ax
  101dd9:	66 90                	xchg   %ax,%ax
  101ddb:	66 90                	xchg   %ax,%ax
  101ddd:	66 90                	xchg   %ax,%ax
  101ddf:	66 90                	xchg   %ax,%ax
  101de1:	66 90                	xchg   %ax,%ax
  101de3:	66 90                	xchg   %ax,%ax
  101de5:	66 90                	xchg   %ax,%ax
  101de7:	66 90                	xchg   %ax,%ax
  101de9:	66 90                	xchg   %ax,%ax
  101deb:	66 90                	xchg   %ax,%ax
  101ded:	66 90                	xchg   %ax,%ax
  101def:	66 90                	xchg   %ax,%ax
  101df1:	66 90                	xchg   %ax,%ax
  101df3:	66 90                	xchg   %ax,%ax
  101df5:	66 90                	xchg   %ax,%ax
  101df7:	66 90                	xchg   %ax,%ax
  101df9:	66 90                	xchg   %ax,%ax
  101dfb:	66 90                	xchg   %ax,%ax
  101dfd:	66 90                	xchg   %ax,%ax
  101dff:	66 90                	xchg   %ax,%ax
  101e01:	66 90                	xchg   %ax,%ax
  101e03:	66 90                	xchg   %ax,%ax
  101e05:	66 90                	xchg   %ax,%ax
  101e07:	66 90                	xchg   %ax,%ax
  101e09:	66 90                	xchg   %ax,%ax
  101e0b:	66 90                	xchg   %ax,%ax
  101e0d:	66 90                	xchg   %ax,%ax
  101e0f:	66 90                	xchg   %ax,%ax
  101e11:	66 90                	xchg   %ax,%ax
  101e13:	66 90                	xchg   %ax,%ax
  101e15:	66 90                	xchg   %ax,%ax
  101e17:	66 90                	xchg   %ax,%ax
  101e19:	66 90                	xchg   %ax,%ax
  101e1b:	66 90                	xchg   %ax,%ax
  101e1d:	66 90                	xchg   %ax,%ax
  101e1f:	66 90                	xchg   %ax,%ax
  101e21:	66 90                	xchg   %ax,%ax
  101e23:	66 90                	xchg   %ax,%ax
  101e25:	66 90                	xchg   %ax,%ax
  101e27:	66 90                	xchg   %ax,%ax
  101e29:	66 90                	xchg   %ax,%ax
  101e2b:	66 90                	xchg   %ax,%ax
  101e2d:	66 90                	xchg   %ax,%ax
  101e2f:	66 90                	xchg   %ax,%ax
  101e31:	66 90                	xchg   %ax,%ax
  101e33:	66 90                	xchg   %ax,%ax
  101e35:	66 90                	xchg   %ax,%ax
  101e37:	66 90                	xchg   %ax,%ax
  101e39:	66 90                	xchg   %ax,%ax
  101e3b:	66 90                	xchg   %ax,%ax
  101e3d:	66 90                	xchg   %ax,%ax
  101e3f:	66 90                	xchg   %ax,%ax
  101e41:	66 90                	xchg   %ax,%ax
  101e43:	66 90                	xchg   %ax,%ax
  101e45:	66 90                	xchg   %ax,%ax
  101e47:	66 90                	xchg   %ax,%ax
  101e49:	66 90                	xchg   %ax,%ax
  101e4b:	66 90                	xchg   %ax,%ax
  101e4d:	66 90                	xchg   %ax,%ax
  101e4f:	66 90                	xchg   %ax,%ax
  101e51:	66 90                	xchg   %ax,%ax
  101e53:	66 90                	xchg   %ax,%ax
  101e55:	66 90                	xchg   %ax,%ax
  101e57:	66 90                	xchg   %ax,%ax
  101e59:	66 90                	xchg   %ax,%ax
  101e5b:	66 90                	xchg   %ax,%ax
  101e5d:	66 90                	xchg   %ax,%ax
  101e5f:	66 90                	xchg   %ax,%ax
  101e61:	66 90                	xchg   %ax,%ax
  101e63:	66 90                	xchg   %ax,%ax
  101e65:	66 90                	xchg   %ax,%ax
  101e67:	66 90                	xchg   %ax,%ax
  101e69:	66 90                	xchg   %ax,%ax
  101e6b:	66 90                	xchg   %ax,%ax
  101e6d:	66 90                	xchg   %ax,%ax
  101e6f:	66 90                	xchg   %ax,%ax
  101e71:	66 90                	xchg   %ax,%ax
  101e73:	66 90                	xchg   %ax,%ax
  101e75:	66 90                	xchg   %ax,%ax
  101e77:	66 90                	xchg   %ax,%ax
  101e79:	66 90                	xchg   %ax,%ax
  101e7b:	66 90                	xchg   %ax,%ax
  101e7d:	66 90                	xchg   %ax,%ax
  101e7f:	66 90                	xchg   %ax,%ax
  101e81:	66 90                	xchg   %ax,%ax
  101e83:	66 90                	xchg   %ax,%ax
  101e85:	66 90                	xchg   %ax,%ax
  101e87:	66 90                	xchg   %ax,%ax
  101e89:	66 90                	xchg   %ax,%ax
  101e8b:	66 90                	xchg   %ax,%ax
  101e8d:	66 90                	xchg   %ax,%ax
  101e8f:	66 90                	xchg   %ax,%ax
  101e91:	66 90                	xchg   %ax,%ax
  101e93:	66 90                	xchg   %ax,%ax
  101e95:	66 90                	xchg   %ax,%ax
  101e97:	66 90                	xchg   %ax,%ax
  101e99:	66 90                	xchg   %ax,%ax
  101e9b:	66 90                	xchg   %ax,%ax
  101e9d:	66 90                	xchg   %ax,%ax
  101e9f:	66 90                	xchg   %ax,%ax
  101ea1:	66 90                	xchg   %ax,%ax
  101ea3:	66 90                	xchg   %ax,%ax
  101ea5:	66 90                	xchg   %ax,%ax
  101ea7:	66 90                	xchg   %ax,%ax
  101ea9:	66 90                	xchg   %ax,%ax
  101eab:	66 90                	xchg   %ax,%ax
  101ead:	66 90                	xchg   %ax,%ax
  101eaf:	66 90                	xchg   %ax,%ax
  101eb1:	66 90                	xchg   %ax,%ax
  101eb3:	66 90                	xchg   %ax,%ax
  101eb5:	66 90                	xchg   %ax,%ax
  101eb7:	66 90                	xchg   %ax,%ax
  101eb9:	66 90                	xchg   %ax,%ax
  101ebb:	66 90                	xchg   %ax,%ax
  101ebd:	66 90                	xchg   %ax,%ax
  101ebf:	66 90                	xchg   %ax,%ax
  101ec1:	66 90                	xchg   %ax,%ax
  101ec3:	66 90                	xchg   %ax,%ax
  101ec5:	66 90                	xchg   %ax,%ax
  101ec7:	66 90                	xchg   %ax,%ax
  101ec9:	66 90                	xchg   %ax,%ax
  101ecb:	66 90                	xchg   %ax,%ax
  101ecd:	66 90                	xchg   %ax,%ax
  101ecf:	66 90                	xchg   %ax,%ax
  101ed1:	66 90                	xchg   %ax,%ax
  101ed3:	66 90                	xchg   %ax,%ax
  101ed5:	66 90                	xchg   %ax,%ax
  101ed7:	66 90                	xchg   %ax,%ax
  101ed9:	66 90                	xchg   %ax,%ax
  101edb:	66 90                	xchg   %ax,%ax
  101edd:	66 90                	xchg   %ax,%ax
  101edf:	66 90                	xchg   %ax,%ax
  101ee1:	66 90                	xchg   %ax,%ax
  101ee3:	66 90                	xchg   %ax,%ax
  101ee5:	66 90                	xchg   %ax,%ax
  101ee7:	66 90                	xchg   %ax,%ax
  101ee9:	66 90                	xchg   %ax,%ax
  101eeb:	66 90                	xchg   %ax,%ax
  101eed:	66 90                	xchg   %ax,%ax
  101eef:	66 90                	xchg   %ax,%ax
  101ef1:	66 90                	xchg   %ax,%ax
  101ef3:	66 90                	xchg   %ax,%ax
  101ef5:	66 90                	xchg   %ax,%ax
  101ef7:	66 90                	xchg   %ax,%ax
  101ef9:	66 90                	xchg   %ax,%ax
  101efb:	66 90                	xchg   %ax,%ax
  101efd:	66 90                	xchg   %ax,%ax
  101eff:	66 90                	xchg   %ax,%ax
  101f01:	66 90                	xchg   %ax,%ax
  101f03:	66 90                	xchg   %ax,%ax
  101f05:	66 90                	xchg   %ax,%ax
  101f07:	66 90                	xchg   %ax,%ax
  101f09:	66 90                	xchg   %ax,%ax
  101f0b:	66 90                	xchg   %ax,%ax
  101f0d:	66 90                	xchg   %ax,%ax
  101f0f:	66 90                	xchg   %ax,%ax
  101f11:	66 90                	xchg   %ax,%ax
  101f13:	66 90                	xchg   %ax,%ax
  101f15:	66 90                	xchg   %ax,%ax
  101f17:	66 90                	xchg   %ax,%ax
  101f19:	66 90                	xchg   %ax,%ax
  101f1b:	66 90                	xchg   %ax,%ax
  101f1d:	66 90                	xchg   %ax,%ax
  101f1f:	66 90                	xchg   %ax,%ax
  101f21:	66 90                	xchg   %ax,%ax
  101f23:	66 90                	xchg   %ax,%ax
  101f25:	66 90                	xchg   %ax,%ax
  101f27:	66 90                	xchg   %ax,%ax
  101f29:	66 90                	xchg   %ax,%ax
  101f2b:	66 90                	xchg   %ax,%ax
  101f2d:	66 90                	xchg   %ax,%ax
  101f2f:	66 90                	xchg   %ax,%ax
  101f31:	66 90                	xchg   %ax,%ax
  101f33:	66 90                	xchg   %ax,%ax
  101f35:	66 90                	xchg   %ax,%ax
  101f37:	66 90                	xchg   %ax,%ax
  101f39:	66 90                	xchg   %ax,%ax
  101f3b:	66 90                	xchg   %ax,%ax
  101f3d:	66 90                	xchg   %ax,%ax
  101f3f:	66 90                	xchg   %ax,%ax
  101f41:	66 90                	xchg   %ax,%ax
  101f43:	66 90                	xchg   %ax,%ax
  101f45:	66 90                	xchg   %ax,%ax
  101f47:	66 90                	xchg   %ax,%ax
  101f49:	66 90                	xchg   %ax,%ax
  101f4b:	66 90                	xchg   %ax,%ax
  101f4d:	66 90                	xchg   %ax,%ax
  101f4f:	66 90                	xchg   %ax,%ax
  101f51:	66 90                	xchg   %ax,%ax
  101f53:	66 90                	xchg   %ax,%ax
  101f55:	66 90                	xchg   %ax,%ax
  101f57:	66 90                	xchg   %ax,%ax
  101f59:	66 90                	xchg   %ax,%ax
  101f5b:	66 90                	xchg   %ax,%ax
  101f5d:	66 90                	xchg   %ax,%ax
  101f5f:	66 90                	xchg   %ax,%ax
  101f61:	66 90                	xchg   %ax,%ax
  101f63:	66 90                	xchg   %ax,%ax
  101f65:	66 90                	xchg   %ax,%ax
  101f67:	66 90                	xchg   %ax,%ax
  101f69:	66 90                	xchg   %ax,%ax
  101f6b:	66 90                	xchg   %ax,%ax
  101f6d:	66 90                	xchg   %ax,%ax
  101f6f:	66 90                	xchg   %ax,%ax
  101f71:	66 90                	xchg   %ax,%ax
  101f73:	66 90                	xchg   %ax,%ax
  101f75:	66 90                	xchg   %ax,%ax
  101f77:	66 90                	xchg   %ax,%ax
  101f79:	66 90                	xchg   %ax,%ax
  101f7b:	66 90                	xchg   %ax,%ax
  101f7d:	66 90                	xchg   %ax,%ax
  101f7f:	66 90                	xchg   %ax,%ax
  101f81:	66 90                	xchg   %ax,%ax
  101f83:	66 90                	xchg   %ax,%ax
  101f85:	66 90                	xchg   %ax,%ax
  101f87:	66 90                	xchg   %ax,%ax
  101f89:	66 90                	xchg   %ax,%ax
  101f8b:	66 90                	xchg   %ax,%ax
  101f8d:	66 90                	xchg   %ax,%ax
  101f8f:	66 90                	xchg   %ax,%ax
  101f91:	66 90                	xchg   %ax,%ax
  101f93:	66 90                	xchg   %ax,%ax
  101f95:	66 90                	xchg   %ax,%ax
  101f97:	66 90                	xchg   %ax,%ax
  101f99:	66 90                	xchg   %ax,%ax
  101f9b:	66 90                	xchg   %ax,%ax
  101f9d:	66 90                	xchg   %ax,%ax
  101f9f:	66 90                	xchg   %ax,%ax
  101fa1:	66 90                	xchg   %ax,%ax
  101fa3:	66 90                	xchg   %ax,%ax
  101fa5:	66 90                	xchg   %ax,%ax
  101fa7:	66 90                	xchg   %ax,%ax
  101fa9:	66 90                	xchg   %ax,%ax
  101fab:	66 90                	xchg   %ax,%ax
  101fad:	66 90                	xchg   %ax,%ax
  101faf:	66 90                	xchg   %ax,%ax
  101fb1:	66 90                	xchg   %ax,%ax
  101fb3:	66 90                	xchg   %ax,%ax
  101fb5:	66 90                	xchg   %ax,%ax
  101fb7:	66 90                	xchg   %ax,%ax
  101fb9:	66 90                	xchg   %ax,%ax
  101fbb:	66 90                	xchg   %ax,%ax
  101fbd:	66 90                	xchg   %ax,%ax
  101fbf:	66 90                	xchg   %ax,%ax
  101fc1:	66 90                	xchg   %ax,%ax
  101fc3:	66 90                	xchg   %ax,%ax
  101fc5:	66 90                	xchg   %ax,%ax
  101fc7:	66 90                	xchg   %ax,%ax
  101fc9:	66 90                	xchg   %ax,%ax
  101fcb:	66 90                	xchg   %ax,%ax
  101fcd:	66 90                	xchg   %ax,%ax
  101fcf:	66 90                	xchg   %ax,%ax
  101fd1:	66 90                	xchg   %ax,%ax
  101fd3:	66 90                	xchg   %ax,%ax
  101fd5:	66 90                	xchg   %ax,%ax
  101fd7:	66 90                	xchg   %ax,%ax
  101fd9:	66 90                	xchg   %ax,%ax
  101fdb:	66 90                	xchg   %ax,%ax
  101fdd:	66 90                	xchg   %ax,%ax
  101fdf:	66 90                	xchg   %ax,%ax
  101fe1:	66 90                	xchg   %ax,%ax
  101fe3:	66 90                	xchg   %ax,%ax
  101fe5:	66 90                	xchg   %ax,%ax
  101fe7:	66 90                	xchg   %ax,%ax
  101fe9:	66 90                	xchg   %ax,%ax
  101feb:	66 90                	xchg   %ax,%ax
  101fed:	66 90                	xchg   %ax,%ax
  101fef:	66 90                	xchg   %ax,%ax
  101ff1:	66 90                	xchg   %ax,%ax
  101ff3:	66 90                	xchg   %ax,%ax
  101ff5:	66 90                	xchg   %ax,%ax
  101ff7:	66 90                	xchg   %ax,%ax
  101ff9:	66 90                	xchg   %ax,%ax
  101ffb:	66 90                	xchg   %ax,%ax
  101ffd:	66 90                	xchg   %ax,%ax
  101fff:	90                   	nop
