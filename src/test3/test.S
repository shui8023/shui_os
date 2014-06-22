
shui：     文件格式 elf32-i386


Disassembly of section .text:

00100000 <isr0>:
	push %1
	jmp isr_common_stub 
%endmacro

;定义中断处理函数
ISR_NOERRCODE  	0
  100000:	fa                   	cli    
  100001:	6a 00                	push   $0x0
  100003:	6a 00                	push   $0x0
  100005:	e9 fc 00 00 00       	jmp    100106 <isr_common_stub>

0010000a <isr1>:
ISR_NOERRCODE  	1
  10000a:	fa                   	cli    
  10000b:	6a 00                	push   $0x0
  10000d:	6a 01                	push   $0x1
  10000f:	e9 f2 00 00 00       	jmp    100106 <isr_common_stub>

00100014 <isr2>:
ISR_NOERRCODE  	2
  100014:	fa                   	cli    
  100015:	6a 00                	push   $0x0
  100017:	6a 02                	push   $0x2
  100019:	e9 e8 00 00 00       	jmp    100106 <isr_common_stub>

0010001e <isr3>:
ISR_NOERRCODE  	3
  10001e:	fa                   	cli    
  10001f:	6a 00                	push   $0x0
  100021:	6a 03                	push   $0x3
  100023:	e9 de 00 00 00       	jmp    100106 <isr_common_stub>

00100028 <isr4>:
ISR_NOERRCODE  	4
  100028:	fa                   	cli    
  100029:	6a 00                	push   $0x0
  10002b:	6a 04                	push   $0x4
  10002d:	e9 d4 00 00 00       	jmp    100106 <isr_common_stub>

00100032 <isr5>:
ISR_NOERRCODE  	5
  100032:	fa                   	cli    
  100033:	6a 00                	push   $0x0
  100035:	6a 05                	push   $0x5
  100037:	e9 ca 00 00 00       	jmp    100106 <isr_common_stub>

0010003c <isr6>:
ISR_NOERRCODE  	6
  10003c:	fa                   	cli    
  10003d:	6a 00                	push   $0x0
  10003f:	6a 06                	push   $0x6
  100041:	e9 c0 00 00 00       	jmp    100106 <isr_common_stub>

00100046 <isr7>:
ISR_NOERRCODE  	7
  100046:	fa                   	cli    
  100047:	6a 00                	push   $0x0
  100049:	6a 07                	push   $0x7
  10004b:	e9 b6 00 00 00       	jmp    100106 <isr_common_stub>

00100050 <isr8>:
ISR_ERRCODE  	8
  100050:	fa                   	cli    
  100051:	6a 08                	push   $0x8
  100053:	e9 ae 00 00 00       	jmp    100106 <isr_common_stub>

00100058 <isr9>:
ISR_NOERRCODE  	9
  100058:	fa                   	cli    
  100059:	6a 00                	push   $0x0
  10005b:	6a 09                	push   $0x9
  10005d:	e9 a4 00 00 00       	jmp    100106 <isr_common_stub>

00100062 <isr10>:
ISR_ERRCODE  	10
  100062:	fa                   	cli    
  100063:	6a 0a                	push   $0xa
  100065:	e9 9c 00 00 00       	jmp    100106 <isr_common_stub>

0010006a <isr11>:
ISR_ERRCODE  	11
  10006a:	fa                   	cli    
  10006b:	6a 0b                	push   $0xb
  10006d:	e9 94 00 00 00       	jmp    100106 <isr_common_stub>

00100072 <isr12>:
ISR_ERRCODE  	12
  100072:	fa                   	cli    
  100073:	6a 0c                	push   $0xc
  100075:	e9 8c 00 00 00       	jmp    100106 <isr_common_stub>

0010007a <isr13>:
ISR_ERRCODE  	13
  10007a:	fa                   	cli    
  10007b:	6a 0d                	push   $0xd
  10007d:	e9 84 00 00 00       	jmp    100106 <isr_common_stub>

00100082 <isr14>:
ISR_ERRCODE  	14
  100082:	fa                   	cli    
  100083:	6a 0e                	push   $0xe
  100085:	eb 7f                	jmp    100106 <isr_common_stub>

00100087 <isr15>:
ISR_NOERRCODE  	15
  100087:	fa                   	cli    
  100088:	6a 00                	push   $0x0
  10008a:	6a 0f                	push   $0xf
  10008c:	eb 78                	jmp    100106 <isr_common_stub>

0010008e <isr16>:
ISR_NOERRCODE  	16
  10008e:	fa                   	cli    
  10008f:	6a 00                	push   $0x0
  100091:	6a 10                	push   $0x10
  100093:	eb 71                	jmp    100106 <isr_common_stub>

00100095 <isr17>:
ISR_ERRCODE  	17
  100095:	fa                   	cli    
  100096:	6a 11                	push   $0x11
  100098:	eb 6c                	jmp    100106 <isr_common_stub>

0010009a <isr18>:
ISR_NOERRCODE  	18
  10009a:	fa                   	cli    
  10009b:	6a 00                	push   $0x0
  10009d:	6a 12                	push   $0x12
  10009f:	eb 65                	jmp    100106 <isr_common_stub>

001000a1 <isr19>:
ISR_NOERRCODE  	19
  1000a1:	fa                   	cli    
  1000a2:	6a 00                	push   $0x0
  1000a4:	6a 13                	push   $0x13
  1000a6:	eb 5e                	jmp    100106 <isr_common_stub>

001000a8 <isr20>:

;intel保留的中断号
ISR_NOERRCODE  	20
  1000a8:	fa                   	cli    
  1000a9:	6a 00                	push   $0x0
  1000ab:	6a 14                	push   $0x14
  1000ad:	eb 57                	jmp    100106 <isr_common_stub>

001000af <isr21>:
ISR_NOERRCODE  	21
  1000af:	fa                   	cli    
  1000b0:	6a 00                	push   $0x0
  1000b2:	6a 15                	push   $0x15
  1000b4:	eb 50                	jmp    100106 <isr_common_stub>

001000b6 <isr22>:
ISR_NOERRCODE  	22
  1000b6:	fa                   	cli    
  1000b7:	6a 00                	push   $0x0
  1000b9:	6a 16                	push   $0x16
  1000bb:	eb 49                	jmp    100106 <isr_common_stub>

001000bd <isr23>:
ISR_NOERRCODE  	23
  1000bd:	fa                   	cli    
  1000be:	6a 00                	push   $0x0
  1000c0:	6a 17                	push   $0x17
  1000c2:	eb 42                	jmp    100106 <isr_common_stub>

001000c4 <isr24>:
ISR_NOERRCODE  	24
  1000c4:	fa                   	cli    
  1000c5:	6a 00                	push   $0x0
  1000c7:	6a 18                	push   $0x18
  1000c9:	eb 3b                	jmp    100106 <isr_common_stub>

001000cb <isr25>:
ISR_NOERRCODE  	25
  1000cb:	fa                   	cli    
  1000cc:	6a 00                	push   $0x0
  1000ce:	6a 19                	push   $0x19
  1000d0:	eb 34                	jmp    100106 <isr_common_stub>

001000d2 <isr26>:
ISR_NOERRCODE  	26
  1000d2:	fa                   	cli    
  1000d3:	6a 00                	push   $0x0
  1000d5:	6a 1a                	push   $0x1a
  1000d7:	eb 2d                	jmp    100106 <isr_common_stub>

001000d9 <isr27>:
ISR_NOERRCODE  	27
  1000d9:	fa                   	cli    
  1000da:	6a 00                	push   $0x0
  1000dc:	6a 1b                	push   $0x1b
  1000de:	eb 26                	jmp    100106 <isr_common_stub>

001000e0 <isr28>:
ISR_NOERRCODE  	28
  1000e0:	fa                   	cli    
  1000e1:	6a 00                	push   $0x0
  1000e3:	6a 1c                	push   $0x1c
  1000e5:	eb 1f                	jmp    100106 <isr_common_stub>

001000e7 <isr29>:
ISR_NOERRCODE  	29
  1000e7:	fa                   	cli    
  1000e8:	6a 00                	push   $0x0
  1000ea:	6a 1d                	push   $0x1d
  1000ec:	eb 18                	jmp    100106 <isr_common_stub>

001000ee <isr30>:
ISR_NOERRCODE  	30
  1000ee:	fa                   	cli    
  1000ef:	6a 00                	push   $0x0
  1000f1:	6a 1e                	push   $0x1e
  1000f3:	eb 11                	jmp    100106 <isr_common_stub>

001000f5 <isr31>:
ISR_NOERRCODE  	31
  1000f5:	fa                   	cli    
  1000f6:	6a 00                	push   $0x0
  1000f8:	6a 1f                	push   $0x1f
  1000fa:	eb 0a                	jmp    100106 <isr_common_stub>

001000fc <isr255>:

;32 - 255用户自定义的
ISR_NOERRCODE   255
  1000fc:	fa                   	cli    
  1000fd:	6a 00                	push   $0x0
  1000ff:	68 ff 00 00 00       	push   $0xff
  100104:	eb 00                	jmp    100106 <isr_common_stub>

00100106 <isr_common_stub>:
;下面的是保护现场的操作
[GLOBAL isr_common_stub]
[EXTERN isr_handler]
;中断服务
isr_common_stub:
	pusha 		;psuhes edi, esi, ebp, esp, ebx, edx, ecx, eax,
  100106:	60                   	pusha  
	
	mov ax, ds
  100107:	66 8c d8             	mov    %ds,%ax
	push eax 	;保存数据段描述符
  10010a:	50                   	push   %eax
 
	mov ax, 0x10 	;加载内核数据段描述表
  10010b:	66 b8 10 00          	mov    $0x10,%ax
	mov ds, ax
  10010f:	8e d8                	mov    %eax,%ds
	mov es, ax
  100111:	8e c0                	mov    %eax,%es
	mov fs, ax
  100113:	8e e0                	mov    %eax,%fs
	mov gs, ax
  100115:	8e e8                	mov    %eax,%gs
	mov ss, ax 
  100117:	8e d0                	mov    %eax,%ss

	push esp 	;此时esp寄存器的值等价于pt_regs结构体的指针
  100119:	54                   	push   %esp
	call isr_handler;
  10011a:	e8 ed 05 00 00       	call   10070c <isr_handler>
	add esp, 4 	;清除压入的参数
  10011f:	83 c4 04             	add    $0x4,%esp

	pop ebx
  100122:	5b                   	pop    %ebx
	mov ds, bx
  100123:	8e db                	mov    %ebx,%ds
	mov es, bx
  100125:	8e c3                	mov    %ebx,%es
	mov fs, bx
  100127:	8e e3                	mov    %ebx,%fs
	mov gs, bx
  100129:	8e eb                	mov    %ebx,%gs
	mov ss, bx
  10012b:	8e d3                	mov    %ebx,%ss

	popa
  10012d:	61                   	popa   
	add esp, 8
  10012e:	83 c4 08             	add    $0x8,%esp
	iret
  100131:	cf                   	iret   

00100132 <idt_flush>:



[GLOBAL idt_flush]
idt_flush:
	mov eax, [esp + 4] 	;参数存入eax寄存器
  100132:	8b 44 24 04          	mov    0x4(%esp),%eax
	lidt [eax] 		;加载到IDTR
  100136:	0f 01 18             	lidtl  (%eax)
	ret 
  100139:	c3                   	ret    

0010013a <idt_flush.end>:
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
  100163:	e8 00 12 00 00       	call   101368 <entry>

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
  1001a5:	e8 67 08 00 00       	call   100a11 <bzer>
	idt_ptr.limit = sizeof(idt_entry_t) * 256 - 1;
  1001aa:	66 c7 05 00 c0 10 00 	movw   $0x7ff,0x10c000
  1001b1:	ff 07 
	idt_ptr.base = (uint32)&idt_entries;
  1001b3:	b8 20 c0 10 00       	mov    $0x10c020,%eax
  1001b8:	a3 02 c0 10 00       	mov    %eax,0x10c002

	bzer((uint8 *)&idt_entries, sizeof(idt_entry_t) * 256);
  1001bd:	c7 44 24 04 00 08 00 	movl   $0x800,0x4(%esp)
  1001c4:	00 
  1001c5:	c7 04 24 20 c0 10 00 	movl   $0x10c020,(%esp)
  1001cc:	e8 40 08 00 00       	call   100a11 <bzer>

	idt_set_gate( 0, (uint32)isr0,  0x08, 0x8E);
  1001d1:	b8 00 00 10 00       	mov    $0x100000,%eax
  1001d6:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1001dd:	00 
  1001de:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1001e5:	00 
  1001e6:	89 44 24 04          	mov    %eax,0x4(%esp)
  1001ea:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  1001f1:	e8 af 04 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 1, (uint32)isr1,  0x08, 0x8E);
  1001f6:	b8 0a 00 10 00       	mov    $0x10000a,%eax
  1001fb:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100202:	00 
  100203:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10020a:	00 
  10020b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10020f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  100216:	e8 8a 04 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 2, (uint32)isr2,  0x08, 0x8E);
  10021b:	b8 14 00 10 00       	mov    $0x100014,%eax
  100220:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100227:	00 
  100228:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10022f:	00 
  100230:	89 44 24 04          	mov    %eax,0x4(%esp)
  100234:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  10023b:	e8 65 04 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 3, (uint32)isr3,  0x08, 0x8E);
  100240:	b8 1e 00 10 00       	mov    $0x10001e,%eax
  100245:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10024c:	00 
  10024d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100254:	00 
  100255:	89 44 24 04          	mov    %eax,0x4(%esp)
  100259:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  100260:	e8 40 04 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 4, (uint32)isr4,  0x08, 0x8E);
  100265:	b8 28 00 10 00       	mov    $0x100028,%eax
  10026a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100271:	00 
  100272:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100279:	00 
  10027a:	89 44 24 04          	mov    %eax,0x4(%esp)
  10027e:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  100285:	e8 1b 04 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 5, (uint32)isr5,  0x08, 0x8E);
  10028a:	b8 32 00 10 00       	mov    $0x100032,%eax
  10028f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100296:	00 
  100297:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10029e:	00 
  10029f:	89 44 24 04          	mov    %eax,0x4(%esp)
  1002a3:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  1002aa:	e8 f6 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 6, (uint32)isr6,  0x08, 0x8E);
  1002af:	b8 3c 00 10 00       	mov    $0x10003c,%eax
  1002b4:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1002bb:	00 
  1002bc:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1002c3:	00 
  1002c4:	89 44 24 04          	mov    %eax,0x4(%esp)
  1002c8:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
  1002cf:	e8 d1 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 7, (uint32)isr7,  0x08, 0x8E);
  1002d4:	b8 46 00 10 00       	mov    $0x100046,%eax
  1002d9:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1002e0:	00 
  1002e1:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1002e8:	00 
  1002e9:	89 44 24 04          	mov    %eax,0x4(%esp)
  1002ed:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
  1002f4:	e8 ac 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 8, (uint32)isr8,  0x08, 0x8E);
  1002f9:	b8 50 00 10 00       	mov    $0x100050,%eax
  1002fe:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100305:	00 
  100306:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10030d:	00 
  10030e:	89 44 24 04          	mov    %eax,0x4(%esp)
  100312:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  100319:	e8 87 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate( 9, (uint32)isr9,  0x08, 0x8E);
  10031e:	b8 58 00 10 00       	mov    $0x100058,%eax
  100323:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10032a:	00 
  10032b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100332:	00 
  100333:	89 44 24 04          	mov    %eax,0x4(%esp)
  100337:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  10033e:	e8 62 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(10, (uint32)isr10, 0x08, 0x8E);
  100343:	b8 62 00 10 00       	mov    $0x100062,%eax
  100348:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10034f:	00 
  100350:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100357:	00 
  100358:	89 44 24 04          	mov    %eax,0x4(%esp)
  10035c:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
  100363:	e8 3d 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(11, (uint32)isr11, 0x08, 0x8E);
  100368:	b8 6a 00 10 00       	mov    $0x10006a,%eax
  10036d:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100374:	00 
  100375:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10037c:	00 
  10037d:	89 44 24 04          	mov    %eax,0x4(%esp)
  100381:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  100388:	e8 18 03 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(12, (uint32)isr12, 0x08, 0x8E);
  10038d:	b8 72 00 10 00       	mov    $0x100072,%eax
  100392:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100399:	00 
  10039a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1003a1:	00 
  1003a2:	89 44 24 04          	mov    %eax,0x4(%esp)
  1003a6:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  1003ad:	e8 f3 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(13, (uint32)isr13, 0x08, 0x8E);
  1003b2:	b8 7a 00 10 00       	mov    $0x10007a,%eax
  1003b7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1003be:	00 
  1003bf:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1003c6:	00 
  1003c7:	89 44 24 04          	mov    %eax,0x4(%esp)
  1003cb:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
  1003d2:	e8 ce 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(14, (uint32)isr14, 0x08, 0x8E);
  1003d7:	b8 82 00 10 00       	mov    $0x100082,%eax
  1003dc:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1003e3:	00 
  1003e4:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1003eb:	00 
  1003ec:	89 44 24 04          	mov    %eax,0x4(%esp)
  1003f0:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
  1003f7:	e8 a9 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(15, (uint32)isr15, 0x08, 0x8E);
  1003fc:	b8 87 00 10 00       	mov    $0x100087,%eax
  100401:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100408:	00 
  100409:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100410:	00 
  100411:	89 44 24 04          	mov    %eax,0x4(%esp)
  100415:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
  10041c:	e8 84 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(16, (uint32)isr16, 0x08, 0x8E);
  100421:	b8 8e 00 10 00       	mov    $0x10008e,%eax
  100426:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10042d:	00 
  10042e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100435:	00 
  100436:	89 44 24 04          	mov    %eax,0x4(%esp)
  10043a:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  100441:	e8 5f 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(17, (uint32)isr17, 0x08, 0x8E);
  100446:	b8 95 00 10 00       	mov    $0x100095,%eax
  10044b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100452:	00 
  100453:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10045a:	00 
  10045b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10045f:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
  100466:	e8 3a 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(18, (uint32)isr18, 0x08, 0x8E);
  10046b:	b8 9a 00 10 00       	mov    $0x10009a,%eax
  100470:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100477:	00 
  100478:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10047f:	00 
  100480:	89 44 24 04          	mov    %eax,0x4(%esp)
  100484:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
  10048b:	e8 15 02 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(19, (uint32)isr19, 0x08, 0x8E);
  100490:	b8 a1 00 10 00       	mov    $0x1000a1,%eax
  100495:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10049c:	00 
  10049d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1004a4:	00 
  1004a5:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004a9:	c7 04 24 13 00 00 00 	movl   $0x13,(%esp)
  1004b0:	e8 f0 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(20, (uint32)isr20, 0x08, 0x8E);
  1004b5:	b8 a8 00 10 00       	mov    $0x1000a8,%eax
  1004ba:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1004c1:	00 
  1004c2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1004c9:	00 
  1004ca:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004ce:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
  1004d5:	e8 cb 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(21, (uint32)isr21, 0x08, 0x8E);
  1004da:	b8 af 00 10 00       	mov    $0x1000af,%eax
  1004df:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1004e6:	00 
  1004e7:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1004ee:	00 
  1004ef:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004f3:	c7 04 24 15 00 00 00 	movl   $0x15,(%esp)
  1004fa:	e8 a6 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(22, (uint32)isr22, 0x08, 0x8E);
  1004ff:	b8 b6 00 10 00       	mov    $0x1000b6,%eax
  100504:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10050b:	00 
  10050c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100513:	00 
  100514:	89 44 24 04          	mov    %eax,0x4(%esp)
  100518:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
  10051f:	e8 81 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(23, (uint32)isr23, 0x08, 0x8E);
  100524:	b8 bd 00 10 00       	mov    $0x1000bd,%eax
  100529:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100530:	00 
  100531:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100538:	00 
  100539:	89 44 24 04          	mov    %eax,0x4(%esp)
  10053d:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
  100544:	e8 5c 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(24, (uint32)isr24, 0x08, 0x8E);
  100549:	b8 c4 00 10 00       	mov    $0x1000c4,%eax
  10054e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100555:	00 
  100556:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10055d:	00 
  10055e:	89 44 24 04          	mov    %eax,0x4(%esp)
  100562:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  100569:	e8 37 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(25, (uint32)isr25, 0x08, 0x8E);
  10056e:	b8 cb 00 10 00       	mov    $0x1000cb,%eax
  100573:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10057a:	00 
  10057b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100582:	00 
  100583:	89 44 24 04          	mov    %eax,0x4(%esp)
  100587:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
  10058e:	e8 12 01 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(26, (uint32)isr26, 0x08, 0x8E);
  100593:	b8 d2 00 10 00       	mov    $0x1000d2,%eax
  100598:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10059f:	00 
  1005a0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1005a7:	00 
  1005a8:	89 44 24 04          	mov    %eax,0x4(%esp)
  1005ac:	c7 04 24 1a 00 00 00 	movl   $0x1a,(%esp)
  1005b3:	e8 ed 00 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(27, (uint32)isr27, 0x08, 0x8E);
  1005b8:	b8 d9 00 10 00       	mov    $0x1000d9,%eax
  1005bd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1005c4:	00 
  1005c5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1005cc:	00 
  1005cd:	89 44 24 04          	mov    %eax,0x4(%esp)
  1005d1:	c7 04 24 1b 00 00 00 	movl   $0x1b,(%esp)
  1005d8:	e8 c8 00 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(28, (uint32)isr28, 0x08, 0x8E);
  1005dd:	b8 e0 00 10 00       	mov    $0x1000e0,%eax
  1005e2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1005e9:	00 
  1005ea:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1005f1:	00 
  1005f2:	89 44 24 04          	mov    %eax,0x4(%esp)
  1005f6:	c7 04 24 1c 00 00 00 	movl   $0x1c,(%esp)
  1005fd:	e8 a3 00 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(29, (uint32)isr29, 0x08, 0x8E);
  100602:	b8 e7 00 10 00       	mov    $0x1000e7,%eax
  100607:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10060e:	00 
  10060f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100616:	00 
  100617:	89 44 24 04          	mov    %eax,0x4(%esp)
  10061b:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
  100622:	e8 7e 00 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(30, (uint32)isr30, 0x08, 0x8E);
  100627:	b8 ee 00 10 00       	mov    $0x1000ee,%eax
  10062c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100633:	00 
  100634:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10063b:	00 
  10063c:	89 44 24 04          	mov    %eax,0x4(%esp)
  100640:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
  100647:	e8 59 00 00 00       	call   1006a5 <idt_set_gate>
	idt_set_gate(31, (uint32)isr31, 0x08, 0x8E);
  10064c:	b8 f5 00 10 00       	mov    $0x1000f5,%eax
  100651:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  100658:	00 
  100659:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100660:	00 
  100661:	89 44 24 04          	mov    %eax,0x4(%esp)
  100665:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
  10066c:	e8 34 00 00 00       	call   1006a5 <idt_set_gate>
	
	//实现系统调用的
	idt_set_gate(255, (uint32)isr255, 0x08, 0x8E);
  100671:	b8 fc 00 10 00       	mov    $0x1000fc,%eax
  100676:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10067d:	00 
  10067e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  100685:	00 
  100686:	89 44 24 04          	mov    %eax,0x4(%esp)
  10068a:	c7 04 24 ff 00 00 00 	movl   $0xff,(%esp)
  100691:	e8 0f 00 00 00       	call   1006a5 <idt_set_gate>

	//更新设置中断描述符表
	idt_flush((uint32)&idt_ptr);
  100696:	b8 00 c0 10 00       	mov    $0x10c000,%eax
  10069b:	89 04 24             	mov    %eax,(%esp)
  10069e:	e8 8f fa ff ff       	call   100132 <idt_flush>
}
  1006a3:	c9                   	leave  
  1006a4:	c3                   	ret    

001006a5 <idt_set_gate>:

//设置中断描述符
static void idt_set_gate(uint8 num, uint32 base, uint16 sel, uint8 flags)
{
  1006a5:	55                   	push   %ebp
  1006a6:	89 e5                	mov    %esp,%ebp
  1006a8:	83 ec 0c             	sub    $0xc,%esp
  1006ab:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1006ae:	8b 55 10             	mov    0x10(%ebp),%edx
  1006b1:	8b 45 14             	mov    0x14(%ebp),%eax
  1006b4:	88 4d fc             	mov    %cl,-0x4(%ebp)
  1006b7:	66 89 55 f8          	mov    %dx,-0x8(%ebp)
  1006bb:	88 45 f4             	mov    %al,-0xc(%ebp)
	idt_entries[num].base_low = base & 0xffff;
  1006be:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006c2:	8b 55 0c             	mov    0xc(%ebp),%edx
  1006c5:	66 89 14 c5 20 c0 10 	mov    %dx,0x10c020(,%eax,8)
  1006cc:	00 
	idt_entries[num].base_high = (base >> 16) & 0xffff;
  1006cd:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006d1:	8b 55 0c             	mov    0xc(%ebp),%edx
  1006d4:	c1 ea 10             	shr    $0x10,%edx
  1006d7:	66 89 14 c5 26 c0 10 	mov    %dx,0x10c026(,%eax,8)
  1006de:	00 

	idt_entries[num].segment  = sel;
  1006df:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006e3:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
  1006e7:	66 89 14 c5 22 c0 10 	mov    %dx,0x10c022(,%eax,8)
  1006ee:	00 
	idt_entries[num].must_0 = 0;
  1006ef:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006f3:	c6 04 c5 24 c0 10 00 	movb   $0x0,0x10c024(,%eax,8)
  1006fa:	00 

	idt_entries[num].flag = flags; // | 0x60
  1006fb:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1006ff:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
  100703:	88 14 c5 25 c0 10 00 	mov    %dl,0x10c025(,%eax,8)

}
  10070a:	c9                   	leave  
  10070b:	c3                   	ret    

0010070c <isr_handler>:

//调用中断处理函数
void isr_handler(pt_regs_t *regs)
{
  10070c:	55                   	push   %ebp
  10070d:	89 e5                	mov    %esp,%ebp
  10070f:	83 ec 18             	sub    $0x18,%esp
	if (interrupt_handlers[regs->int_no]) {
  100712:	8b 45 08             	mov    0x8(%ebp),%eax
  100715:	8b 40 20             	mov    0x20(%eax),%eax
  100718:	8b 04 85 20 c8 10 00 	mov    0x10c820(,%eax,4),%eax
  10071f:	85 c0                	test   %eax,%eax
  100721:	74 17                	je     10073a <isr_handler+0x2e>
		interrupt_handlers[regs->int_no](regs);	
  100723:	8b 45 08             	mov    0x8(%ebp),%eax
  100726:	8b 40 20             	mov    0x20(%eax),%eax
  100729:	8b 04 85 20 c8 10 00 	mov    0x10c820(,%eax,4),%eax
  100730:	8b 55 08             	mov    0x8(%ebp),%edx
  100733:	89 14 24             	mov    %edx,(%esp)
  100736:	ff d0                	call   *%eax
  100738:	eb 16                	jmp    100750 <isr_handler+0x44>
	} else {
		printk("unhanddled interuppt %d\n", regs->int_no);
  10073a:	8b 45 08             	mov    0x8(%ebp),%eax
  10073d:	8b 40 20             	mov    0x20(%eax),%eax
  100740:	89 44 24 04          	mov    %eax,0x4(%esp)
  100744:	c7 04 24 24 24 10 00 	movl   $0x102424,(%esp)
  10074b:	e8 f3 07 00 00       	call   100f43 <printk>
	}
}
  100750:	c9                   	leave  
  100751:	c3                   	ret    

00100752 <registers_interrupt_handler>:

//注册一个中断描述符函数
void registers_interrupt_handler(uint8 n, interrupt_handler_t h)
{
  100752:	55                   	push   %ebp
  100753:	89 e5                	mov    %esp,%ebp
  100755:	83 ec 04             	sub    $0x4,%esp
  100758:	8b 45 08             	mov    0x8(%ebp),%eax
  10075b:	88 45 fc             	mov    %al,-0x4(%ebp)
	interrupt_handlers[n] = h;
  10075e:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  100762:	8b 55 0c             	mov    0xc(%ebp),%edx
  100765:	89 14 85 20 c8 10 00 	mov    %edx,0x10c820(,%eax,4)
}
  10076c:	c9                   	leave  
  10076d:	c3                   	ret    
  10076e:	66 90                	xchg   %ax,%ax

00100770 <elf_form_multiboot>:
 *@.strtab是字符串表,通常是符号表里的符号名所需要的字符串
 *@不明白mb->shndx的意思
 *
 */
elf_t elf_form_multiboot(multiboot_t *mb)
{
  100770:	55                   	push   %ebp
  100771:	89 e5                	mov    %esp,%ebp
  100773:	83 ec 38             	sub    $0x38,%esp
	int i;
	elf_t elf;
	//表示multiboot_t中的addr成员是指向elf文件中段的地址
	Elf32_Shar *sh = (Elf32_Shar *)mb->addr;
  100776:	8b 45 0c             	mov    0xc(%ebp),%eax
  100779:	8b 40 24             	mov    0x24(%eax),%eax
  10077c:	89 45 f0             	mov    %eax,-0x10(%ebp)
//	Elf32_Shar *sh = mb->addr;

	//sh_addr是段的起始地址,
	uint32 shstrtab = sh[mb->shndx].sh_addr;
  10077f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100782:	8b 50 28             	mov    0x28(%eax),%edx
  100785:	89 d0                	mov    %edx,%eax
  100787:	c1 e0 02             	shl    $0x2,%eax
  10078a:	01 d0                	add    %edx,%eax
  10078c:	c1 e0 03             	shl    $0x3,%eax
  10078f:	89 c2                	mov    %eax,%edx
  100791:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100794:	01 d0                	add    %edx,%eax
  100796:	8b 40 0c             	mov    0xc(%eax),%eax
  100799:	89 45 ec             	mov    %eax,-0x14(%ebp)

	//mb->num是指ELF文件中有几个段，sh_name是段的名字
	for (i = 0; i < mb->num; i++) {
  10079c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007a3:	e9 b8 00 00 00       	jmp    100860 <elf_form_multiboot+0xf0>
		const int8 *name = (const int8 *)(shstrtab + sh[i].sh_name);
  1007a8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007ab:	89 d0                	mov    %edx,%eax
  1007ad:	c1 e0 02             	shl    $0x2,%eax
  1007b0:	01 d0                	add    %edx,%eax
  1007b2:	c1 e0 03             	shl    $0x3,%eax
  1007b5:	89 c2                	mov    %eax,%edx
  1007b7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1007ba:	01 d0                	add    %edx,%eax
  1007bc:	8b 10                	mov    (%eax),%edx
  1007be:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1007c1:	01 d0                	add    %edx,%eax
  1007c3:	89 45 e8             	mov    %eax,-0x18(%ebp)

		if (strcmp(name, ".strtab") == 0) {
  1007c6:	c7 44 24 04 3d 24 10 	movl   $0x10243d,0x4(%esp)
  1007cd:	00 
  1007ce:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1007d1:	89 04 24             	mov    %eax,(%esp)
  1007d4:	e8 ae 02 00 00       	call   100a87 <strcmp>
  1007d9:	85 c0                	test   %eax,%eax
  1007db:	75 34                	jne    100811 <elf_form_multiboot+0xa1>
			elf.strtab = (const char *)sh[i].sh_addr;
  1007dd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007e0:	89 d0                	mov    %edx,%eax
  1007e2:	c1 e0 02             	shl    $0x2,%eax
  1007e5:	01 d0                	add    %edx,%eax
  1007e7:	c1 e0 03             	shl    $0x3,%eax
  1007ea:	89 c2                	mov    %eax,%edx
  1007ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1007ef:	01 d0                	add    %edx,%eax
  1007f1:	8b 40 0c             	mov    0xc(%eax),%eax
  1007f4:	89 45 e0             	mov    %eax,-0x20(%ebp)
			//sh_size是段的大小
			elf.strtabsz = sh[i].sh_size;
  1007f7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007fa:	89 d0                	mov    %edx,%eax
  1007fc:	c1 e0 02             	shl    $0x2,%eax
  1007ff:	01 d0                	add    %edx,%eax
  100801:	c1 e0 03             	shl    $0x3,%eax
  100804:	89 c2                	mov    %eax,%edx
  100806:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100809:	01 d0                	add    %edx,%eax
  10080b:	8b 40 14             	mov    0x14(%eax),%eax
  10080e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
		} 
		if (strcmp(name, ".symtab") == 0) {
  100811:	c7 44 24 04 45 24 10 	movl   $0x102445,0x4(%esp)
  100818:	00 
  100819:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10081c:	89 04 24             	mov    %eax,(%esp)
  10081f:	e8 63 02 00 00       	call   100a87 <strcmp>
  100824:	85 c0                	test   %eax,%eax
  100826:	75 34                	jne    10085c <elf_form_multiboot+0xec>
			elf.symtab = (Elf32_Sym *)sh[i].sh_addr;
  100828:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10082b:	89 d0                	mov    %edx,%eax
  10082d:	c1 e0 02             	shl    $0x2,%eax
  100830:	01 d0                	add    %edx,%eax
  100832:	c1 e0 03             	shl    $0x3,%eax
  100835:	89 c2                	mov    %eax,%edx
  100837:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10083a:	01 d0                	add    %edx,%eax
  10083c:	8b 40 0c             	mov    0xc(%eax),%eax
  10083f:	89 45 d8             	mov    %eax,-0x28(%ebp)
			elf.symtabsz = sh[i].sh_size;
  100842:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100845:	89 d0                	mov    %edx,%eax
  100847:	c1 e0 02             	shl    $0x2,%eax
  10084a:	01 d0                	add    %edx,%eax
  10084c:	c1 e0 03             	shl    $0x3,%eax
  10084f:	89 c2                	mov    %eax,%edx
  100851:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100854:	01 d0                	add    %edx,%eax
  100856:	8b 40 14             	mov    0x14(%eax),%eax
  100859:	89 45 dc             	mov    %eax,-0x24(%ebp)

	//sh_addr是段的起始地址,
	uint32 shstrtab = sh[mb->shndx].sh_addr;

	//mb->num是指ELF文件中有几个段，sh_name是段的名字
	for (i = 0; i < mb->num; i++) {
  10085c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100860:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100863:	8b 45 0c             	mov    0xc(%ebp),%eax
  100866:	8b 40 1c             	mov    0x1c(%eax),%eax
  100869:	39 c2                	cmp    %eax,%edx
  10086b:	0f 82 37 ff ff ff    	jb     1007a8 <elf_form_multiboot+0x38>
			elf.symtab = (Elf32_Sym *)sh[i].sh_addr;
			elf.symtabsz = sh[i].sh_size;
		}
	}
	
	return elf;
  100871:	8b 45 08             	mov    0x8(%ebp),%eax
  100874:	8b 55 d8             	mov    -0x28(%ebp),%edx
  100877:	89 10                	mov    %edx,(%eax)
  100879:	8b 55 dc             	mov    -0x24(%ebp),%edx
  10087c:	89 50 04             	mov    %edx,0x4(%eax)
  10087f:	8b 55 e0             	mov    -0x20(%ebp),%edx
  100882:	89 50 08             	mov    %edx,0x8(%eax)
  100885:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100888:	89 50 0c             	mov    %edx,0xc(%eax)
}
  10088b:	8b 45 08             	mov    0x8(%ebp),%eax
  10088e:	c9                   	leave  
  10088f:	c2 04 00             	ret    $0x4

00100892 <elf_look_symbol>:

const char *elf_look_symbol(uint32 addr, elf_t *elf)
{
  100892:	55                   	push   %ebp
  100893:	89 e5                	mov    %esp,%ebp
  100895:	83 ec 10             	sub    $0x10,%esp
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
  100898:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10089f:	eb 78                	jmp    100919 <elf_look_symbol+0x87>
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
  1008a1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008a4:	8b 00                	mov    (%eax),%eax
  1008a6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1008a9:	c1 e2 04             	shl    $0x4,%edx
  1008ac:	01 d0                	add    %edx,%eax
  1008ae:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
  1008b2:	0f b6 c0             	movzbl %al,%eax
  1008b5:	83 e0 0f             	and    $0xf,%eax
  1008b8:	83 f8 02             	cmp    $0x2,%eax
  1008bb:	75 57                	jne    100914 <elf_look_symbol+0x82>
			continue;
		}
		
		if ((addr >= elf->symtab[i].st_value) && 
  1008bd:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008c0:	8b 00                	mov    (%eax),%eax
  1008c2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1008c5:	c1 e2 04             	shl    $0x4,%edx
  1008c8:	01 d0                	add    %edx,%eax
  1008ca:	8b 40 04             	mov    0x4(%eax),%eax
  1008cd:	3b 45 08             	cmp    0x8(%ebp),%eax
  1008d0:	77 43                	ja     100915 <elf_look_symbol+0x83>
				(addr < (elf->symtab[i].st_value + elf->symtab[i].st_size))) {
  1008d2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008d5:	8b 00                	mov    (%eax),%eax
  1008d7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1008da:	c1 e2 04             	shl    $0x4,%edx
  1008dd:	01 d0                	add    %edx,%eax
  1008df:	8b 50 04             	mov    0x4(%eax),%edx
  1008e2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008e5:	8b 00                	mov    (%eax),%eax
  1008e7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1008ea:	c1 e1 04             	shl    $0x4,%ecx
  1008ed:	01 c8                	add    %ecx,%eax
  1008ef:	8b 40 08             	mov    0x8(%eax),%eax
  1008f2:	01 d0                	add    %edx,%eax
	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
			continue;
		}
		
		if ((addr >= elf->symtab[i].st_value) && 
  1008f4:	3b 45 08             	cmp    0x8(%ebp),%eax
  1008f7:	76 1c                	jbe    100915 <elf_look_symbol+0x83>
				(addr < (elf->symtab[i].st_value + elf->symtab[i].st_size))) {
			return (const char *)((uint32)elf->strtab + elf->symtab[i].st_name); 
  1008f9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008fc:	8b 40 08             	mov    0x8(%eax),%eax
  1008ff:	89 c2                	mov    %eax,%edx
  100901:	8b 45 0c             	mov    0xc(%ebp),%eax
  100904:	8b 00                	mov    (%eax),%eax
  100906:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100909:	c1 e1 04             	shl    $0x4,%ecx
  10090c:	01 c8                	add    %ecx,%eax
  10090e:	8b 00                	mov    (%eax),%eax
  100910:	01 d0                	add    %edx,%eax
  100912:	eb 1e                	jmp    100932 <elf_look_symbol+0xa0>
{
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
		if (ELF32_ST_TYPE(elf->symtab[i].st_info) != 0x2) {
			continue;
  100914:	90                   	nop

const char *elf_look_symbol(uint32 addr, elf_t *elf)
{
	int i;

	for (i = 0; i < (elf->symtabsz / sizeof(Elf32_Sym)); i++) {
  100915:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100919:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10091c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10091f:	8b 40 04             	mov    0x4(%eax),%eax
  100922:	c1 e8 04             	shr    $0x4,%eax
  100925:	39 c2                	cmp    %eax,%edx
  100927:	0f 82 74 ff ff ff    	jb     1008a1 <elf_look_symbol+0xf>
			return (const char *)((uint32)elf->strtab + elf->symtab[i].st_name); 
		}

	}

	return NULL;
  10092d:	b8 00 00 00 00       	mov    $0x0,%eax
}
  100932:	c9                   	leave  
  100933:	c3                   	ret    

00100934 <memcpy>:
/*@功能由src指向地址的连续的len个字节的数据复制到以dest指向地址为起始空间
 *@返回一个指向dest的指针
 *
 */
void *memcpy(void * dest, const void  * src, uint32 len)
{
  100934:	55                   	push   %ebp
  100935:	89 e5                	mov    %esp,%ebp
  100937:	83 ec 10             	sub    $0x10,%esp
	int8 *str1 = dest;
  10093a:	8b 45 08             	mov    0x8(%ebp),%eax
  10093d:	89 45 fc             	mov    %eax,-0x4(%ebp)
	const int8 *str2 = src;
  100940:	8b 45 0c             	mov    0xc(%ebp),%eax
  100943:	89 45 f8             	mov    %eax,-0x8(%ebp)
	int i;
	
	i = 0;
  100946:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	
	if (src == NULL || dest == NULL) {
  10094d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100951:	74 06                	je     100959 <memcpy+0x25>
  100953:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100957:	75 1e                	jne    100977 <memcpy+0x43>
		return dest;
  100959:	8b 45 08             	mov    0x8(%ebp),%eax
  10095c:	eb 25                	jmp    100983 <memcpy+0x4f>
	}

	for ( ; i < len; i++ ) {
		*str1++ = *str2++;
  10095e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100961:	0f b6 10             	movzbl (%eax),%edx
  100964:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100967:	88 10                	mov    %dl,(%eax)
  100969:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10096d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
	
	if (src == NULL || dest == NULL) {
		return dest;
	}

	for ( ; i < len; i++ ) {
  100971:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100975:	eb 01                	jmp    100978 <memcpy+0x44>
  100977:	90                   	nop
  100978:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10097b:	3b 45 10             	cmp    0x10(%ebp),%eax
  10097e:	72 de                	jb     10095e <memcpy+0x2a>
		*str1++ = *str2++;
	}
	
	return dest;
  100980:	8b 45 08             	mov    0x8(%ebp),%eax
}
  100983:	c9                   	leave  
  100984:	c3                   	ret    

00100985 <memset>:
/*@将字符串初始化为val的字符串
 *
 *
 */
void memset(void * dest, int8 val, uint32 len)
{
  100985:	55                   	push   %ebp
  100986:	89 e5                	mov    %esp,%ebp
  100988:	83 ec 14             	sub    $0x14,%esp
  10098b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10098e:	88 45 ec             	mov    %al,-0x14(%ebp)
	int number;
	int i;
	char *str = dest;
  100991:	8b 45 08             	mov    0x8(%ebp),%eax
  100994:	89 45 f4             	mov    %eax,-0xc(%ebp)

	number = 0;
  100997:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
	i = 0;
  10099e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)

	if (dest == NULL ) {
  1009a5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1009a9:	75 08                	jne    1009b3 <memset+0x2e>
		return ;
  1009ab:	eb 62                	jmp    100a0f <memset+0x8a>
	}

	while (*str != '\0') {
		number++;
  1009ad:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1009b1:	eb 01                	jmp    1009b4 <memset+0x2f>

	if (dest == NULL ) {
		return ;
	}

	while (*str != '\0') {
  1009b3:	90                   	nop
  1009b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009b7:	0f b6 00             	movzbl (%eax),%eax
  1009ba:	84 c0                	test   %al,%al
  1009bc:	75 ef                	jne    1009ad <memset+0x28>
		number++;
	}

	if (number <= len) {
  1009be:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1009c1:	3b 45 10             	cmp    0x10(%ebp),%eax
  1009c4:	77 1d                	ja     1009e3 <memset+0x5e>
		for ( ; i < len; i++) {
  1009c6:	eb 11                	jmp    1009d9 <memset+0x54>
			*str++ = val;
  1009c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009cb:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  1009cf:	88 10                	mov    %dl,(%eax)
  1009d1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	while (*str != '\0') {
		number++;
	}

	if (number <= len) {
		for ( ; i < len; i++) {
  1009d5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1009d9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1009dc:	3b 45 10             	cmp    0x10(%ebp),%eax
  1009df:	72 e7                	jb     1009c8 <memset+0x43>
  1009e1:	eb 22                	jmp    100a05 <memset+0x80>
			*str++ = val;
		}
	}  else {
		for (i = 0; i < number; i++ ) {
  1009e3:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1009ea:	eb 11                	jmp    1009fd <memset+0x78>
			*str++ = val;
  1009ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009ef:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  1009f3:	88 10                	mov    %dl,(%eax)
  1009f5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if (number <= len) {
		for ( ; i < len; i++) {
			*str++ = val;
		}
	}  else {
		for (i = 0; i < number; i++ ) {
  1009f9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1009fd:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a00:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100a03:	7c e7                	jl     1009ec <memset+0x67>
			*str++ = val;
		}
	}

	*str++ = '\0';
  100a05:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a08:	c6 00 00             	movb   $0x0,(%eax)
  100a0b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)

}
  100a0f:	c9                   	leave  
  100a10:	c3                   	ret    

00100a11 <bzer>:
/*
 *@将字符串置为0串
 *
 */
void bzer(void *dest, uint32 len)
{
  100a11:	55                   	push   %ebp
  100a12:	89 e5                	mov    %esp,%ebp
  100a14:	83 ec 10             	sub    $0x10,%esp
	int number;
	int i;
	char *d = dest;
  100a17:	8b 45 08             	mov    0x8(%ebp),%eax
  100a1a:	89 45 f4             	mov    %eax,-0xc(%ebp)
	number = 0;
  100a1d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
	i = 0;
  100a24:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)

	if (dest == NULL) {
  100a2b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100a2f:	75 08                	jne    100a39 <bzer+0x28>
		return ;
  100a31:	eb 52                	jmp    100a85 <bzer+0x74>
	}

	while (*d != '\0') {
		number ++;
  100a33:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100a37:	eb 01                	jmp    100a3a <bzer+0x29>

	if (dest == NULL) {
		return ;
	}

	while (*d != '\0') {
  100a39:	90                   	nop
  100a3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a3d:	0f b6 00             	movzbl (%eax),%eax
  100a40:	84 c0                	test   %al,%al
  100a42:	75 ef                	jne    100a33 <bzer+0x22>
		number ++;
	}

	if (number >= len ) { 
  100a44:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a47:	3b 45 0c             	cmp    0xc(%ebp),%eax
  100a4a:	72 1a                	jb     100a66 <bzer+0x55>
		for ( ; i < len; i++) {
  100a4c:	eb 0e                	jmp    100a5c <bzer+0x4b>
			*d++ = '\0';
  100a4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a51:	c6 00 00             	movb   $0x0,(%eax)
  100a54:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	while (*d != '\0') {
		number ++;
	}

	if (number >= len ) { 
		for ( ; i < len; i++) {
  100a58:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a5c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a5f:	3b 45 0c             	cmp    0xc(%ebp),%eax
  100a62:	72 ea                	jb     100a4e <bzer+0x3d>
  100a64:	eb 1f                	jmp    100a85 <bzer+0x74>
			*d++ = '\0';
		}
	} else {
		for (i = 0; i < number; i++) {
  100a66:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a6d:	eb 0e                	jmp    100a7d <bzer+0x6c>
			*d++ = '\0';
  100a6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a72:	c6 00 00             	movb   $0x0,(%eax)
  100a75:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if (number >= len ) { 
		for ( ; i < len; i++) {
			*d++ = '\0';
		}
	} else {
		for (i = 0; i < number; i++) {
  100a79:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a7d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a80:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100a83:	7c ea                	jl     100a6f <bzer+0x5e>
			*d++ = '\0';
		}
	}
}
  100a85:	c9                   	leave  
  100a86:	c3                   	ret    

00100a87 <strcmp>:
/*@字符串比较函数
 *
 *
 */
int strcmp(const int8 *dest, const int8 *val)
{
  100a87:	55                   	push   %ebp
  100a88:	89 e5                	mov    %esp,%ebp
  100a8a:	83 ec 10             	sub    $0x10,%esp
	const int8 *s1 = dest;	
  100a8d:	8b 45 08             	mov    0x8(%ebp),%eax
  100a90:	89 45 fc             	mov    %eax,-0x4(%ebp)
	const int8 *s2 = val;
  100a93:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a96:	89 45 f8             	mov    %eax,-0x8(%ebp)

	int8 c1, c2;

	do {
		c1 = *s1++;
  100a99:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a9c:	0f b6 00             	movzbl (%eax),%eax
  100a9f:	88 45 f7             	mov    %al,-0x9(%ebp)
  100aa2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
		c2 = *s2++;
  100aa6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100aa9:	0f b6 00             	movzbl (%eax),%eax
  100aac:	88 45 f6             	mov    %al,-0xa(%ebp)
  100aaf:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
		if (c1 == '\0') {
  100ab3:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  100ab7:	75 10                	jne    100ac9 <strcmp+0x42>
			return c1 -c2;
  100ab9:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  100abd:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  100ac1:	89 d1                	mov    %edx,%ecx
  100ac3:	29 c1                	sub    %eax,%ecx
  100ac5:	89 c8                	mov    %ecx,%eax
  100ac7:	eb 17                	jmp    100ae0 <strcmp+0x59>
		}
	} while (c1 == c2);
  100ac9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100acd:	3a 45 f6             	cmp    -0xa(%ebp),%al
  100ad0:	74 c7                	je     100a99 <strcmp+0x12>
	
	return c1 - c2;
  100ad2:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  100ad6:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  100ada:	89 d1                	mov    %edx,%ecx
  100adc:	29 c1                	sub    %eax,%ecx
  100ade:	89 c8                	mov    %ecx,%eax
}
  100ae0:	c9                   	leave  
  100ae1:	c3                   	ret    

00100ae2 <strcpy>:
 *
 *
 */

int8 * strcpy(char *dest, const char *val)
{
  100ae2:	55                   	push   %ebp
  100ae3:	89 e5                	mov    %esp,%ebp
  100ae5:	83 ec 10             	sub    $0x10,%esp
	int8 * d = dest;
  100ae8:	8b 45 08             	mov    0x8(%ebp),%eax
  100aeb:	89 45 fc             	mov    %eax,-0x4(%ebp)
	const int8 * s = val;
  100aee:	8b 45 0c             	mov    0xc(%ebp),%eax
  100af1:	89 45 f8             	mov    %eax,-0x8(%ebp)

	if (dest == NULL || val == NULL ) {
  100af4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100af8:	74 06                	je     100b00 <strcpy+0x1e>
  100afa:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100afe:	75 05                	jne    100b05 <strcpy+0x23>
		return dest;
  100b00:	8b 45 08             	mov    0x8(%ebp),%eax
  100b03:	eb 25                	jmp    100b2a <strcpy+0x48>
	}

	do {
		*d++ = *s;
  100b05:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b08:	0f b6 10             	movzbl (%eax),%edx
  100b0b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100b0e:	88 10                	mov    %dl,(%eax)
  100b10:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
	} while (*s++ != '\0');
  100b14:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b17:	0f b6 00             	movzbl (%eax),%eax
  100b1a:	84 c0                	test   %al,%al
  100b1c:	0f 95 c0             	setne  %al
  100b1f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100b23:	84 c0                	test   %al,%al
  100b25:	75 de                	jne    100b05 <strcpy+0x23>

	return dest;
  100b27:	8b 45 08             	mov    0x8(%ebp),%eax

}
  100b2a:	c9                   	leave  
  100b2b:	c3                   	ret    

00100b2c <strcat>:
/*@字符串的连接函数
 *
 *
 */
int8  *strcat(int8 *dest, const int8 *val)
{
  100b2c:	55                   	push   %ebp
  100b2d:	89 e5                	mov    %esp,%ebp
  100b2f:	83 ec 10             	sub    $0x10,%esp
	const int8 *s1 = val;
  100b32:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b35:	89 45 fc             	mov    %eax,-0x4(%ebp)
	int8 *d = dest;
  100b38:	8b 45 08             	mov    0x8(%ebp),%eax
  100b3b:	89 45 f8             	mov    %eax,-0x8(%ebp)

	if (dest == NULL || val == NULL) {
  100b3e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100b42:	74 06                	je     100b4a <strcat+0x1e>
  100b44:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100b48:	75 07                	jne    100b51 <strcat+0x25>
		return NULL;
  100b4a:	b8 00 00 00 00       	mov    $0x0,%eax
  100b4f:	eb 3b                	jmp    100b8c <strcat+0x60>
	}
	
	for ( ; *d++ != '\0'; ) {
  100b51:	90                   	nop
  100b52:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b55:	0f b6 00             	movzbl (%eax),%eax
  100b58:	84 c0                	test   %al,%al
  100b5a:	0f 95 c0             	setne  %al
  100b5d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100b61:	84 c0                	test   %al,%al
  100b63:	75 ed                	jne    100b52 <strcat+0x26>
		;
	}

	for (;*s1++ != '\0';  ) {
  100b65:	eb 0f                	jmp    100b76 <strcat+0x4a>
		*d++ = *s1;
  100b67:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100b6a:	0f b6 10             	movzbl (%eax),%edx
  100b6d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100b70:	88 10                	mov    %dl,(%eax)
  100b72:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
	
	for ( ; *d++ != '\0'; ) {
		;
	}

	for (;*s1++ != '\0';  ) {
  100b76:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100b79:	0f b6 00             	movzbl (%eax),%eax
  100b7c:	84 c0                	test   %al,%al
  100b7e:	0f 95 c0             	setne  %al
  100b81:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100b85:	84 c0                	test   %al,%al
  100b87:	75 de                	jne    100b67 <strcat+0x3b>
		*d++ = *s1;
	}

	return dest;
  100b89:	8b 45 08             	mov    0x8(%ebp),%eax
}
  100b8c:	c9                   	leave  
  100b8d:	c3                   	ret    

00100b8e <strlen>:
/*@字符串的长度的计算
 *
 *
 */
int strlen(const int8 *src)
{
  100b8e:	55                   	push   %ebp
  100b8f:	89 e5                	mov    %esp,%ebp
  100b91:	83 ec 10             	sub    $0x10,%esp
	int number ;
	
	number = 0;
  100b94:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)

	while (*src++ != '\0') {
  100b9b:	eb 04                	jmp    100ba1 <strlen+0x13>
		number++;
  100b9d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
	int number ;
	
	number = 0;

	while (*src++ != '\0') {
  100ba1:	8b 45 08             	mov    0x8(%ebp),%eax
  100ba4:	0f b6 00             	movzbl (%eax),%eax
  100ba7:	84 c0                	test   %al,%al
  100ba9:	0f 95 c0             	setne  %al
  100bac:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  100bb0:	84 c0                	test   %al,%al
  100bb2:	75 e9                	jne    100b9d <strlen+0xf>
		number++;
	}

	return number;
  100bb4:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  100bb7:	c9                   	leave  
  100bb8:	c3                   	ret    
  100bb9:	66 90                	xchg   %ax,%ax
  100bbb:	90                   	nop

00100bbc <move_point>:

static int16 screen_abscissa = 0;
static int16 screen_ordinate = 0;

static void move_point()
{
  100bbc:	55                   	push   %ebp
  100bbd:	89 e5                	mov    %esp,%ebp
  100bbf:	83 ec 28             	sub    $0x28,%esp
	uint16 loction = screen_abscissa * 80 + screen_ordinate;
  100bc2:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100bc9:	89 c2                	mov    %eax,%edx
  100bcb:	89 d0                	mov    %edx,%eax
  100bcd:	c1 e0 02             	shl    $0x2,%eax
  100bd0:	01 d0                	add    %edx,%eax
  100bd2:	c1 e0 04             	shl    $0x4,%eax
  100bd5:	89 c2                	mov    %eax,%edx
  100bd7:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100bde:	01 d0                	add    %edx,%eax
  100be0:	66 89 45 f6          	mov    %ax,-0xa(%ebp)

	outb(0x3D4, 14);
  100be4:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
  100beb:	00 
  100bec:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  100bf3:	e8 c8 01 00 00       	call   100dc0 <outb>
	outb(0x3D5, loction >> 8);
  100bf8:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100bfc:	66 c1 e8 08          	shr    $0x8,%ax
  100c00:	0f b7 c0             	movzwl %ax,%eax
  100c03:	89 44 24 04          	mov    %eax,0x4(%esp)
  100c07:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  100c0e:	e8 ad 01 00 00       	call   100dc0 <outb>
	outb(0x3D4, 15);
  100c13:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
  100c1a:	00 
  100c1b:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  100c22:	e8 99 01 00 00       	call   100dc0 <outb>
	outb(0x3D5, loction);
  100c27:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100c2b:	89 44 24 04          	mov    %eax,0x4(%esp)
  100c2f:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  100c36:	e8 85 01 00 00       	call   100dc0 <outb>
}
  100c3b:	c9                   	leave  
  100c3c:	c3                   	ret    

00100c3d <screen_clear>:



void screen_clear()
{
  100c3d:	55                   	push   %ebp
  100c3e:	89 e5                	mov    %esp,%ebp
  100c40:	83 ec 18             	sub    $0x18,%esp
	/*大端模式和小端的模式
	 *小端模式：大大小小
	 *内存地址是地址小的地方
	 */
	int16 back_white = ((screen_black | screen_white) << 8) | 0x20;
  100c43:	66 c7 45 f2 20 07    	movw   $0x720,-0xe(%ebp)

	int i = 0;
  100c49:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	for (i = 0; i < 80 * 25; i++) {
  100c50:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100c57:	eb 17                	jmp    100c70 <screen_clear+0x33>
		screen_point[i] = back_white;
  100c59:	a1 20 24 10 00       	mov    0x102420,%eax
  100c5e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100c61:	01 d2                	add    %edx,%edx
  100c63:	01 c2                	add    %eax,%edx
  100c65:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  100c69:	66 89 02             	mov    %ax,(%edx)
	 *内存地址是地址小的地方
	 */
	int16 back_white = ((screen_black | screen_white) << 8) | 0x20;

	int i = 0;
	for (i = 0; i < 80 * 25; i++) {
  100c6c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100c70:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  100c77:	7e e0                	jle    100c59 <screen_clear+0x1c>
		screen_point[i] = back_white;
	}

	screen_abscissa = 0;
  100c79:	66 c7 05 04 b0 10 00 	movw   $0x0,0x10b004
  100c80:	00 00 
	screen_ordinate = 0;
  100c82:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100c89:	00 00 

	move_point();
  100c8b:	e8 2c ff ff ff       	call   100bbc <move_point>
}
  100c90:	c9                   	leave  
  100c91:	c3                   	ret    

00100c92 <screen_char>:



 void screen_char(char c, color back_color, color fore_color )
{
  100c92:	55                   	push   %ebp
  100c93:	89 e5                	mov    %esp,%ebp
  100c95:	83 ec 28             	sub    $0x28,%esp
  100c98:	8b 45 08             	mov    0x8(%ebp),%eax
  100c9b:	88 45 e4             	mov    %al,-0x1c(%ebp)
	int16 color_s = ((back_color | fore_color) << 8) | ((int16)c);
  100c9e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100ca1:	89 c2                	mov    %eax,%edx
  100ca3:	8b 45 10             	mov    0x10(%ebp),%eax
  100ca6:	09 d0                	or     %edx,%eax
  100ca8:	89 c2                	mov    %eax,%edx
  100caa:	c1 e2 08             	shl    $0x8,%edx
  100cad:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
  100cb2:	09 d0                	or     %edx,%eax
  100cb4:	66 89 45 f6          	mov    %ax,-0xa(%ebp)


	if (c == '\n') {
  100cb8:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
  100cbc:	75 1b                	jne    100cd9 <screen_char+0x47>
		screen_abscissa ++; 		//换行
  100cbe:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100cc5:	83 c0 01             	add    $0x1,%eax
  100cc8:	66 a3 04 b0 10 00    	mov    %ax,0x10b004
		screen_ordinate = 0; 		//重头开始
  100cce:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100cd5:	00 00 
  100cd7:	eb 72                	jmp    100d4b <screen_char+0xb9>
	} else if (c == 0x09) {
  100cd9:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  100cdd:	75 12                	jne    100cf1 <screen_char+0x5f>
		screen_ordinate = screen_ordinate + 8;
  100cdf:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100ce6:	83 c0 08             	add    $0x8,%eax
  100ce9:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  100cef:	eb 5a                	jmp    100d4b <screen_char+0xb9>
	} else if (c == ' ') {
  100cf1:	80 7d e4 20          	cmpb   $0x20,-0x1c(%ebp)
  100cf5:	75 12                	jne    100d09 <screen_char+0x77>
		screen_ordinate ++;
  100cf7:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100cfe:	83 c0 01             	add    $0x1,%eax
  100d01:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  100d07:	eb 42                	jmp    100d4b <screen_char+0xb9>
	}else {
		screen_point[screen_abscissa * 80 + screen_ordinate] = color_s;
  100d09:	8b 0d 20 24 10 00    	mov    0x102420,%ecx
  100d0f:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100d16:	0f bf d0             	movswl %ax,%edx
  100d19:	89 d0                	mov    %edx,%eax
  100d1b:	c1 e0 02             	shl    $0x2,%eax
  100d1e:	01 d0                	add    %edx,%eax
  100d20:	c1 e0 04             	shl    $0x4,%eax
  100d23:	89 c2                	mov    %eax,%edx
  100d25:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d2c:	98                   	cwtl   
  100d2d:	01 d0                	add    %edx,%eax
  100d2f:	01 c0                	add    %eax,%eax
  100d31:	8d 14 01             	lea    (%ecx,%eax,1),%edx
  100d34:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100d38:	66 89 02             	mov    %ax,(%edx)
		screen_ordinate ++;
  100d3b:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d42:	83 c0 01             	add    $0x1,%eax
  100d45:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
	}
	
	if (screen_ordinate > 80) {
  100d4b:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100d52:	66 83 f8 50          	cmp    $0x50,%ax
  100d56:	7e 19                	jle    100d71 <screen_char+0xdf>
		screen_abscissa ++;
  100d58:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100d5f:	83 c0 01             	add    $0x1,%eax
  100d62:	66 a3 04 b0 10 00    	mov    %ax,0x10b004
		screen_ordinate = 0;
  100d68:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100d6f:	00 00 
	}

	move_point();
  100d71:	e8 46 fe ff ff       	call   100bbc <move_point>
	
}
  100d76:	c9                   	leave  
  100d77:	c3                   	ret    

00100d78 <screen_string>:



void screen_string(int8 *string, color back_color, color fore_color)
{
  100d78:	55                   	push   %ebp
  100d79:	89 e5                	mov    %esp,%ebp
  100d7b:	83 ec 28             	sub    $0x28,%esp
	int i = 0;
  100d7e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	while (string[i] != '\0') {
  100d85:	eb 28                	jmp    100daf <screen_string+0x37>
		screen_char(string[i++], back_color, fore_color);
  100d87:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d8a:	8b 45 08             	mov    0x8(%ebp),%eax
  100d8d:	01 d0                	add    %edx,%eax
  100d8f:	0f b6 00             	movzbl (%eax),%eax
  100d92:	0f be c0             	movsbl %al,%eax
  100d95:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100d99:	8b 55 10             	mov    0x10(%ebp),%edx
  100d9c:	89 54 24 08          	mov    %edx,0x8(%esp)
  100da0:	8b 55 0c             	mov    0xc(%ebp),%edx
  100da3:	89 54 24 04          	mov    %edx,0x4(%esp)
  100da7:	89 04 24             	mov    %eax,(%esp)
  100daa:	e8 e3 fe ff ff       	call   100c92 <screen_char>


void screen_string(int8 *string, color back_color, color fore_color)
{
	int i = 0;
	while (string[i] != '\0') {
  100daf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100db2:	8b 45 08             	mov    0x8(%ebp),%eax
  100db5:	01 d0                	add    %edx,%eax
  100db7:	0f b6 00             	movzbl (%eax),%eax
  100dba:	84 c0                	test   %al,%al
  100dbc:	75 c9                	jne    100d87 <screen_string+0xf>
		screen_char(string[i++], back_color, fore_color);
	}
	
}
  100dbe:	c9                   	leave  
  100dbf:	c3                   	ret    

00100dc0 <outb>:

#include "screen_port.h"

//端口写一个字节
inline  void outb(uint16 port, uint8 value)
{
  100dc0:	55                   	push   %ebp
  100dc1:	89 e5                	mov    %esp,%ebp
  100dc3:	83 ec 08             	sub    $0x8,%esp
  100dc6:	8b 55 08             	mov    0x8(%ebp),%edx
  100dc9:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dcc:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
  100dd0:	88 45 f8             	mov    %al,-0x8(%ebp)
	asm volatile ("outb %1, %0" :: "dN" (port), "a" (value));
  100dd3:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
  100dd7:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  100ddb:	ee                   	out    %al,(%dx)
}
  100ddc:	c9                   	leave  
  100ddd:	c3                   	ret    

00100dde <inb>:

//端口读一个字节
inline uint8 inb(uint16 port)
{
  100dde:	55                   	push   %ebp
  100ddf:	89 e5                	mov    %esp,%ebp
  100de1:	53                   	push   %ebx
  100de2:	83 ec 14             	sub    $0x14,%esp
  100de5:	8b 45 08             	mov    0x8(%ebp),%eax
  100de8:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
	uint8 ret;
	asm volatile ("inb %1, %0" : "=a" (ret) : "dN"(port));
  100dec:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  100df0:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  100df4:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100df8:	ec                   	in     (%dx),%al
  100df9:	89 c3                	mov    %eax,%ebx
  100dfb:	88 5d fb             	mov    %bl,-0x5(%ebp)
	
	return ret;
  100dfe:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
}
  100e02:	83 c4 14             	add    $0x14,%esp
  100e05:	5b                   	pop    %ebx
  100e06:	5d                   	pop    %ebp
  100e07:	c3                   	ret    

00100e08 <inw>:

//端口写一个字节
inline uint16 inw(uint16 port)
{
  100e08:	55                   	push   %ebp
  100e09:	89 e5                	mov    %esp,%ebp
  100e0b:	53                   	push   %ebx
  100e0c:	83 ec 14             	sub    $0x14,%esp
  100e0f:	8b 45 08             	mov    0x8(%ebp),%eax
  100e12:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
	uint16 ret;
	
	asm volatile ("inw %1, %0" : "=a"(ret):"dN"(port) );
  100e16:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  100e1a:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  100e1e:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100e22:	66 ed                	in     (%dx),%ax
  100e24:	89 c3                	mov    %eax,%ebx
  100e26:	66 89 5d fa          	mov    %bx,-0x6(%ebp)
	
	return ret;
  100e2a:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
}
  100e2e:	83 c4 14             	add    $0x14,%esp
  100e31:	5b                   	pop    %ebx
  100e32:	5d                   	pop    %ebp
  100e33:	c3                   	ret    

00100e34 <prints>:
static  int  vprintk(const int8 * format, char * ap);
static  void printi(int number);
static void prints(char *);

void prints(char *s)
{
  100e34:	55                   	push   %ebp
  100e35:	89 e5                	mov    %esp,%ebp
  100e37:	83 ec 18             	sub    $0x18,%esp
	screen_string(s, screen_black, screen_red);
  100e3a:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100e41:	00 
  100e42:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100e49:	00 
  100e4a:	8b 45 08             	mov    0x8(%ebp),%eax
  100e4d:	89 04 24             	mov    %eax,(%esp)
  100e50:	e8 23 ff ff ff       	call   100d78 <screen_string>
}
  100e55:	c9                   	leave  
  100e56:	c3                   	ret    

00100e57 <printchar>:


void printchar(int8 str)
{
  100e57:	55                   	push   %ebp
  100e58:	89 e5                	mov    %esp,%ebp
  100e5a:	83 ec 28             	sub    $0x28,%esp
  100e5d:	8b 45 08             	mov    0x8(%ebp),%eax
  100e60:	88 45 f4             	mov    %al,-0xc(%ebp)
	screen_char(str, screen_black, screen_red);
  100e63:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  100e67:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100e6e:	00 
  100e6f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100e76:	00 
  100e77:	89 04 24             	mov    %eax,(%esp)
  100e7a:	e8 13 fe ff ff       	call   100c92 <screen_char>


}
  100e7f:	c9                   	leave  
  100e80:	c3                   	ret    

00100e81 <printi>:

void printi(int  number)
{
  100e81:	55                   	push   %ebp
  100e82:	89 e5                	mov    %esp,%ebp
  100e84:	83 ec 48             	sub    $0x48,%esp
	char s[32];
	int sign;
	int i;

	i = 0;
  100e87:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	sign = number;
  100e8e:	8b 45 08             	mov    0x8(%ebp),%eax
  100e91:	89 45 f0             	mov    %eax,-0x10(%ebp)

	if (sign < 0) {
  100e94:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100e98:	79 03                	jns    100e9d <printi+0x1c>
		number = -number;
  100e9a:	f7 5d 08             	negl   0x8(%ebp)
	}

	do {
		s[i++] = number % 10 + '0';
  100e9d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100ea0:	ba 67 66 66 66       	mov    $0x66666667,%edx
  100ea5:	89 c8                	mov    %ecx,%eax
  100ea7:	f7 ea                	imul   %edx
  100ea9:	c1 fa 02             	sar    $0x2,%edx
  100eac:	89 c8                	mov    %ecx,%eax
  100eae:	c1 f8 1f             	sar    $0x1f,%eax
  100eb1:	29 c2                	sub    %eax,%edx
  100eb3:	89 d0                	mov    %edx,%eax
  100eb5:	c1 e0 02             	shl    $0x2,%eax
  100eb8:	01 d0                	add    %edx,%eax
  100eba:	01 c0                	add    %eax,%eax
  100ebc:	89 ca                	mov    %ecx,%edx
  100ebe:	29 c2                	sub    %eax,%edx
  100ec0:	89 d0                	mov    %edx,%eax
  100ec2:	83 c0 30             	add    $0x30,%eax
  100ec5:	8d 4d d0             	lea    -0x30(%ebp),%ecx
  100ec8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecb:	01 ca                	add    %ecx,%edx
  100ecd:	88 02                	mov    %al,(%edx)
  100ecf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	}while ((number /= 10) > 0);
  100ed3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100ed6:	ba 67 66 66 66       	mov    $0x66666667,%edx
  100edb:	89 c8                	mov    %ecx,%eax
  100edd:	f7 ea                	imul   %edx
  100edf:	c1 fa 02             	sar    $0x2,%edx
  100ee2:	89 c8                	mov    %ecx,%eax
  100ee4:	c1 f8 1f             	sar    $0x1f,%eax
  100ee7:	89 d1                	mov    %edx,%ecx
  100ee9:	29 c1                	sub    %eax,%ecx
  100eeb:	89 c8                	mov    %ecx,%eax
  100eed:	89 45 08             	mov    %eax,0x8(%ebp)
  100ef0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100ef4:	7f a7                	jg     100e9d <printi+0x1c>


	if (sign < 0) {
  100ef6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100efa:	79 0f                	jns    100f0b <printi+0x8a>
		s[i++] = '-';
  100efc:	8d 55 d0             	lea    -0x30(%ebp),%edx
  100eff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f02:	01 d0                	add    %edx,%eax
  100f04:	c6 00 2d             	movb   $0x2d,(%eax)
  100f07:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	}

	i = i -1;
  100f0b:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
	for (; i >= 0; i--) { 
  100f0f:	eb 2a                	jmp    100f3b <printi+0xba>
		screen_char(s[i], screen_black, screen_red);
  100f11:	8d 55 d0             	lea    -0x30(%ebp),%edx
  100f14:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f17:	01 d0                	add    %edx,%eax
  100f19:	0f b6 00             	movzbl (%eax),%eax
  100f1c:	0f be c0             	movsbl %al,%eax
  100f1f:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100f26:	00 
  100f27:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100f2e:	00 
  100f2f:	89 04 24             	mov    %eax,(%esp)
  100f32:	e8 5b fd ff ff       	call   100c92 <screen_char>
	if (sign < 0) {
		s[i++] = '-';
	}

	i = i -1;
	for (; i >= 0; i--) { 
  100f37:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  100f3b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100f3f:	79 d0                	jns    100f11 <printi+0x90>
		screen_char(s[i], screen_black, screen_red);
	}
}
  100f41:	c9                   	leave  
  100f42:	c3                   	ret    

00100f43 <printk>:

int printk(const int8 * format, ...)
{
  100f43:	55                   	push   %ebp
  100f44:	89 e5                	mov    %esp,%ebp
  100f46:	83 ec 28             	sub    $0x28,%esp
	int number;
	char * arg;

	va_start(arg, format);
  100f49:	8d 45 0c             	lea    0xc(%ebp),%eax
  100f4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
	
	number = vprintk(format, arg);
  100f4f:	8b 45 08             	mov    0x8(%ebp),%eax
  100f52:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f55:	89 54 24 04          	mov    %edx,0x4(%esp)
  100f59:	89 04 24             	mov    %eax,(%esp)
  100f5c:	e8 0f 00 00 00       	call   100f70 <vprintk>
  100f61:	89 45 f0             	mov    %eax,-0x10(%ebp)

	va_end(arg);
  100f64:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	
	return number;
  100f6b:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
  100f6e:	c9                   	leave  
  100f6f:	c3                   	ret    

00100f70 <vprintk>:

int vprintk(const int8 * format, char * ap)
{
  100f70:	55                   	push   %ebp
  100f71:	89 e5                	mov    %esp,%ebp
  100f73:	83 ec 28             	sub    $0x28,%esp
	int pc; 	//printf的返回值
	
	pc = 0;
  100f76:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	for (; *format != '\0'; ++format) {
  100f7d:	e9 b1 00 00 00       	jmp    101033 <vprintk+0xc3>
		if (*format == '%') {
  100f82:	8b 45 08             	mov    0x8(%ebp),%eax
  100f85:	0f b6 00             	movzbl (%eax),%eax
  100f88:	3c 25                	cmp    $0x25,%al
  100f8a:	0f 85 8a 00 00 00    	jne    10101a <vprintk+0xaa>
			++format;
  100f90:	83 45 08 01          	addl   $0x1,0x8(%ebp)
			if ((*format) == 'c') {
  100f94:	8b 45 08             	mov    0x8(%ebp),%eax
  100f97:	0f b6 00             	movzbl (%eax),%eax
  100f9a:	3c 63                	cmp    $0x63,%al
  100f9c:	75 1d                	jne    100fbb <vprintk+0x4b>
				printchar(va_arg(ap, int));
  100f9e:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100fa2:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fa5:	83 e8 04             	sub    $0x4,%eax
  100fa8:	8b 00                	mov    (%eax),%eax
  100faa:	0f be c0             	movsbl %al,%eax
  100fad:	89 04 24             	mov    %eax,(%esp)
  100fb0:	e8 a2 fe ff ff       	call   100e57 <printchar>
				pc++;
  100fb5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100fb9:	eb 74                	jmp    10102f <vprintk+0xbf>
			} else if (*format == 'd') {
  100fbb:	8b 45 08             	mov    0x8(%ebp),%eax
  100fbe:	0f b6 00             	movzbl (%eax),%eax
  100fc1:	3c 64                	cmp    $0x64,%al
  100fc3:	75 1a                	jne    100fdf <vprintk+0x6f>
				printi(va_arg(ap, int));
  100fc5:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100fc9:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fcc:	83 e8 04             	sub    $0x4,%eax
  100fcf:	8b 00                	mov    (%eax),%eax
  100fd1:	89 04 24             	mov    %eax,(%esp)
  100fd4:	e8 a8 fe ff ff       	call   100e81 <printi>
				pc++;
  100fd9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100fdd:	eb 50                	jmp    10102f <vprintk+0xbf>
			} else if (*format == 's') {
  100fdf:	8b 45 08             	mov    0x8(%ebp),%eax
  100fe2:	0f b6 00             	movzbl (%eax),%eax
  100fe5:	3c 73                	cmp    $0x73,%al
  100fe7:	75 1a                	jne    101003 <vprintk+0x93>
				prints((va_arg(ap, char*)));
  100fe9:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100fed:	8b 45 0c             	mov    0xc(%ebp),%eax
  100ff0:	83 e8 04             	sub    $0x4,%eax
  100ff3:	8b 00                	mov    (%eax),%eax
  100ff5:	89 04 24             	mov    %eax,(%esp)
  100ff8:	e8 37 fe ff ff       	call   100e34 <prints>
				pc++;
  100ffd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  101001:	eb 2c                	jmp    10102f <vprintk+0xbf>
			} else {
				printchar(*format);
  101003:	8b 45 08             	mov    0x8(%ebp),%eax
  101006:	0f b6 00             	movzbl (%eax),%eax
  101009:	0f be c0             	movsbl %al,%eax
  10100c:	89 04 24             	mov    %eax,(%esp)
  10100f:	e8 43 fe ff ff       	call   100e57 <printchar>
				pc++;
  101014:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  101018:	eb 15                	jmp    10102f <vprintk+0xbf>
				
			}
		} else {
			printchar(*format);
  10101a:	8b 45 08             	mov    0x8(%ebp),%eax
  10101d:	0f b6 00             	movzbl (%eax),%eax
  101020:	0f be c0             	movsbl %al,%eax
  101023:	89 04 24             	mov    %eax,(%esp)
  101026:	e8 2c fe ff ff       	call   100e57 <printchar>
			pc++;
  10102b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
int vprintk(const int8 * format, char * ap)
{
	int pc; 	//printf的返回值
	
	pc = 0;
	for (; *format != '\0'; ++format) {
  10102f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  101033:	8b 45 08             	mov    0x8(%ebp),%eax
  101036:	0f b6 00             	movzbl (%eax),%eax
  101039:	84 c0                	test   %al,%al
  10103b:	0f 85 41 ff ff ff    	jne    100f82 <vprintk+0x12>
			pc++;
		}

	}

	return pc;
  101041:	8b 45 f4             	mov    -0xc(%ebp),%eax

}
  101044:	c9                   	leave  
  101045:	c3                   	ret    
  101046:	66 90                	xchg   %ax,%ax

00101048 <init_debug>:

static elf_t kernel_elf;


void init_debug()
{
  101048:	55                   	push   %ebp
  101049:	89 e5                	mov    %esp,%ebp
  10104b:	83 ec 28             	sub    $0x28,%esp
	kernel_elf = elf_form_multiboot(glb_mboot_ptr);
  10104e:	8b 15 00 b0 10 00    	mov    0x10b000,%edx
  101054:	8d 45 e8             	lea    -0x18(%ebp),%eax
  101057:	89 54 24 04          	mov    %edx,0x4(%esp)
  10105b:	89 04 24             	mov    %eax,(%esp)
  10105e:	e8 0d f7 ff ff       	call   100770 <elf_form_multiboot>
  101063:	83 ec 04             	sub    $0x4,%esp
  101066:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101069:	a3 08 b0 10 00       	mov    %eax,0x10b008
  10106e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101071:	a3 0c b0 10 00       	mov    %eax,0x10b00c
  101076:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101079:	a3 10 b0 10 00       	mov    %eax,0x10b010
  10107e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101081:	a3 14 b0 10 00       	mov    %eax,0x10b014
}
  101086:	c9                   	leave  
  101087:	c3                   	ret    

00101088 <print_cur_status>:

void print_cur_status()
{
  101088:	55                   	push   %ebp
  101089:	89 e5                	mov    %esp,%ebp
  10108b:	83 ec 28             	sub    $0x28,%esp
	static int round = 0;
	uint16 reg1, reg2, reg3, reg4;
	
	asm volatile ( "mov %%cs, %0;"
  10108e:	8c 4d f6             	mov    %cs,-0xa(%ebp)
  101091:	8c 5d f4             	mov    %ds,-0xc(%ebp)
  101094:	8c 45 f2             	mov    %es,-0xe(%ebp)
  101097:	8c 55 f0             	mov    %ss,-0x10(%ebp)
		       "mov %%ds, %1;"
		       "mov %%es, %2;"
		       "mov %%ss, %3;"
		       : "=m"(reg1),"=m"(reg2),"=m"(reg3),"=m"(reg4));

	printk("%d:@ring %d\n", round, reg1 &0x3);
  10109a:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  10109e:	0f b7 c0             	movzwl %ax,%eax
  1010a1:	89 c2                	mov    %eax,%edx
  1010a3:	83 e2 03             	and    $0x3,%edx
  1010a6:	a1 18 b0 10 00       	mov    0x10b018,%eax
  1010ab:	89 54 24 08          	mov    %edx,0x8(%esp)
  1010af:	89 44 24 04          	mov    %eax,0x4(%esp)
  1010b3:	c7 04 24 4d 24 10 00 	movl   $0x10244d,(%esp)
  1010ba:	e8 84 fe ff ff       	call   100f43 <printk>
	printk("%d: cs = %d\n", round, reg1);
  1010bf:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  1010c3:	0f b7 d0             	movzwl %ax,%edx
  1010c6:	a1 18 b0 10 00       	mov    0x10b018,%eax
  1010cb:	89 54 24 08          	mov    %edx,0x8(%esp)
  1010cf:	89 44 24 04          	mov    %eax,0x4(%esp)
  1010d3:	c7 04 24 5a 24 10 00 	movl   $0x10245a,(%esp)
  1010da:	e8 64 fe ff ff       	call   100f43 <printk>
	printk("%d: ds = %d\n", round, reg2);
  1010df:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
  1010e3:	0f b7 d0             	movzwl %ax,%edx
  1010e6:	a1 18 b0 10 00       	mov    0x10b018,%eax
  1010eb:	89 54 24 08          	mov    %edx,0x8(%esp)
  1010ef:	89 44 24 04          	mov    %eax,0x4(%esp)
  1010f3:	c7 04 24 67 24 10 00 	movl   $0x102467,(%esp)
  1010fa:	e8 44 fe ff ff       	call   100f43 <printk>
	printk("%d: es = %d\n", round, reg3);
  1010ff:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  101103:	0f b7 d0             	movzwl %ax,%edx
  101106:	a1 18 b0 10 00       	mov    0x10b018,%eax
  10110b:	89 54 24 08          	mov    %edx,0x8(%esp)
  10110f:	89 44 24 04          	mov    %eax,0x4(%esp)
  101113:	c7 04 24 74 24 10 00 	movl   $0x102474,(%esp)
  10111a:	e8 24 fe ff ff       	call   100f43 <printk>
	printk("%d: ss = %d\n", round, reg4);
  10111f:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
  101123:	0f b7 d0             	movzwl %ax,%edx
  101126:	a1 18 b0 10 00       	mov    0x10b018,%eax
  10112b:	89 54 24 08          	mov    %edx,0x8(%esp)
  10112f:	89 44 24 04          	mov    %eax,0x4(%esp)
  101133:	c7 04 24 81 24 10 00 	movl   $0x102481,(%esp)
  10113a:	e8 04 fe ff ff       	call   100f43 <printk>
}
  10113f:	c9                   	leave  
  101140:	c3                   	ret    

00101141 <panic>:

void panic(const char *msg) 
{
  101141:	55                   	push   %ebp
  101142:	89 e5                	mov    %esp,%ebp
  101144:	83 ec 18             	sub    $0x18,%esp
	printk("*******system panic:%s\n", msg);
  101147:	8b 45 08             	mov    0x8(%ebp),%eax
  10114a:	89 44 24 04          	mov    %eax,0x4(%esp)
  10114e:	c7 04 24 8e 24 10 00 	movl   $0x10248e,(%esp)
  101155:	e8 e9 fd ff ff       	call   100f43 <printk>
	print_stack_trace();
  10115a:	e8 0e 00 00 00       	call   10116d <print_stack_trace>
	printk("****\n");
  10115f:	c7 04 24 a6 24 10 00 	movl   $0x1024a6,(%esp)
  101166:	e8 d8 fd ff ff       	call   100f43 <printk>

	while(1);
  10116b:	eb fe                	jmp    10116b <panic+0x2a>

0010116d <print_stack_trace>:
}


void print_stack_trace()
{
  10116d:	55                   	push   %ebp
  10116e:	89 e5                	mov    %esp,%ebp
  101170:	53                   	push   %ebx
  101171:	83 ec 24             	sub    $0x24,%esp
	uint32 *ebp, *eip;

	asm volatile ("mov %%ebp, %0": "=r"(ebp));
  101174:	89 eb                	mov    %ebp,%ebx
  101176:	89 5d f4             	mov    %ebx,-0xc(%ebp)

	while(ebp) {
  101179:	eb 3f                	jmp    1011ba <print_stack_trace+0x4d>
		eip = ebp + 1;
  10117b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10117e:	83 c0 04             	add    $0x4,%eax
  101181:	89 45 f0             	mov    %eax,-0x10(%ebp)
		printk("     [0x%d] %s\n", *eip, elf_look_symbol(*eip, &kernel_elf));
  101184:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101187:	8b 00                	mov    (%eax),%eax
  101189:	c7 44 24 04 08 b0 10 	movl   $0x10b008,0x4(%esp)
  101190:	00 
  101191:	89 04 24             	mov    %eax,(%esp)
  101194:	e8 f9 f6 ff ff       	call   100892 <elf_look_symbol>
  101199:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10119c:	8b 12                	mov    (%edx),%edx
  10119e:	89 44 24 08          	mov    %eax,0x8(%esp)
  1011a2:	89 54 24 04          	mov    %edx,0x4(%esp)
  1011a6:	c7 04 24 ac 24 10 00 	movl   $0x1024ac,(%esp)
  1011ad:	e8 91 fd ff ff       	call   100f43 <printk>
		ebp = (uint32 *)*ebp;
  1011b2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011b5:	8b 00                	mov    (%eax),%eax
  1011b7:	89 45 f4             	mov    %eax,-0xc(%ebp)
{
	uint32 *ebp, *eip;

	asm volatile ("mov %%ebp, %0": "=r"(ebp));

	while(ebp) {
  1011ba:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1011be:	75 bb                	jne    10117b <print_stack_trace+0xe>
		eip = ebp + 1;
		printk("     [0x%d] %s\n", *eip, elf_look_symbol(*eip, &kernel_elf));
		ebp = (uint32 *)*ebp;
	}
}
  1011c0:	83 c4 24             	add    $0x24,%esp
  1011c3:	5b                   	pop    %ebx
  1011c4:	5d                   	pop    %ebp
  1011c5:	c3                   	ret    
  1011c6:	66 90                	xchg   %ax,%ax

001011c8 <init_gdt>:
 *
 *
 *
 */
void init_gdt()
{
  1011c8:	55                   	push   %ebp
  1011c9:	89 e5                	mov    %esp,%ebp
  1011cb:	83 ec 28             	sub    $0x28,%esp
	//全局描述符表的界限从0开始标号，需要-1,base是基地址
	gdt_ptr.limit = sizeof(gdt_entry_t) * GDT_LENGTH - 1;
  1011ce:	66 c7 05 48 cc 10 00 	movw   $0x27,0x10cc48
  1011d5:	27 00 
	gdt_ptr.base = (uint32)&gdt_entries;
  1011d7:	b8 20 cc 10 00       	mov    $0x10cc20,%eax
  1011dc:	a3 4a cc 10 00       	mov    %eax,0x10cc4a

	gdt_set_gate(0, 0, 0, 0, 0); //intel，第一个段描述符不可用，置为0
  1011e1:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  1011e8:	00 
  1011e9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  1011f0:	00 
  1011f1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  1011f8:	00 
  1011f9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101200:	00 
  101201:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  101208:	e8 bf 00 00 00       	call   1012cc <gdt_set_gate>
	gdt_set_gate(1, 0, 0xffffffff, 0x9a, 0xcf);  	//指令段
  10120d:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  101214:	00 
  101215:	c7 44 24 0c 9a 00 00 	movl   $0x9a,0xc(%esp)
  10121c:	00 
  10121d:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  101224:	ff 
  101225:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  10122c:	00 
  10122d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  101234:	e8 93 00 00 00       	call   1012cc <gdt_set_gate>
	gdt_set_gate(2, 0, 0xffffffff, 0x92, 0xcf);  	//数据段
  101239:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  101240:	00 
  101241:	c7 44 24 0c 92 00 00 	movl   $0x92,0xc(%esp)
  101248:	00 
  101249:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  101250:	ff 
  101251:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101258:	00 
  101259:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  101260:	e8 67 00 00 00       	call   1012cc <gdt_set_gate>
	gdt_set_gate(3, 0, 0xffffffff, 0xfa, 0xcf);  	//用户态的代码段
  101265:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  10126c:	00 
  10126d:	c7 44 24 0c fa 00 00 	movl   $0xfa,0xc(%esp)
  101274:	00 
  101275:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  10127c:	ff 
  10127d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101284:	00 
  101285:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  10128c:	e8 3b 00 00 00       	call   1012cc <gdt_set_gate>
	gdt_set_gate(4, 0, 0xffffffff, 0xf2, 0xcf);  	//用户态的数据段
  101291:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  101298:	00 
  101299:	c7 44 24 0c f2 00 00 	movl   $0xf2,0xc(%esp)
  1012a0:	00 
  1012a1:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  1012a8:	ff 
  1012a9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1012b0:	00 
  1012b1:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  1012b8:	e8 0f 00 00 00       	call   1012cc <gdt_set_gate>

	//加载全局描述符表到GPTR寄存器
	gdt_flush((uint32)&gdt_ptr);
  1012bd:	b8 48 cc 10 00       	mov    $0x10cc48,%eax
  1012c2:	89 04 24             	mov    %eax,(%esp)
  1012c5:	e8 a6 ee ff ff       	call   100170 <gdt_flush>
}
  1012ca:	c9                   	leave  
  1012cb:	c3                   	ret    

001012cc <gdt_set_gate>:
 *@acces 访问的标志
 *@gran 其他的访问的标志
 */

static void gdt_set_gate(int32 num, uint32 base, uint32 limit, uint8 access, uint8 gran)
{
  1012cc:	55                   	push   %ebp
  1012cd:	89 e5                	mov    %esp,%ebp
  1012cf:	83 ec 08             	sub    $0x8,%esp
  1012d2:	8b 55 14             	mov    0x14(%ebp),%edx
  1012d5:	8b 45 18             	mov    0x18(%ebp),%eax
  1012d8:	88 55 fc             	mov    %dl,-0x4(%ebp)
  1012db:	88 45 f8             	mov    %al,-0x8(%ebp)
	gdt_entries[num].base_low    = (base & 0xffff);   	//取了base的低16位
  1012de:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012e1:	89 c2                	mov    %eax,%edx
  1012e3:	8b 45 08             	mov    0x8(%ebp),%eax
  1012e6:	66 89 14 c5 22 cc 10 	mov    %dx,0x10cc22(,%eax,8)
  1012ed:	00 
	gdt_entries[num].base_middle = (base >> 16) & 0xff; 	//取了base的中8位
  1012ee:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012f1:	c1 e8 10             	shr    $0x10,%eax
  1012f4:	89 c2                	mov    %eax,%edx
  1012f6:	8b 45 08             	mov    0x8(%ebp),%eax
  1012f9:	88 14 c5 24 cc 10 00 	mov    %dl,0x10cc24(,%eax,8)
	gdt_entries[num].base_high   = (base >> 24) & 0xff; 	//取了base的高8位
  101300:	8b 45 0c             	mov    0xc(%ebp),%eax
  101303:	c1 e8 18             	shr    $0x18,%eax
  101306:	89 c2                	mov    %eax,%edx
  101308:	8b 45 08             	mov    0x8(%ebp),%eax
  10130b:	88 14 c5 27 cc 10 00 	mov    %dl,0x10cc27(,%eax,8)

	gdt_entries[num].limit_low   = (limit & 0xffff); 	//取了base的低16位
  101312:	8b 45 10             	mov    0x10(%ebp),%eax
  101315:	89 c2                	mov    %eax,%edx
  101317:	8b 45 08             	mov    0x8(%ebp),%eax
  10131a:	66 89 14 c5 20 cc 10 	mov    %dx,0x10cc20(,%eax,8)
  101321:	00 
	gdt_entries[num].granularity = (limit >> 16 ) & 0x0f; 	//取了base的中4位，其余的置为0
  101322:	8b 45 10             	mov    0x10(%ebp),%eax
  101325:	c1 e8 10             	shr    $0x10,%eax
  101328:	89 c2                	mov    %eax,%edx
  10132a:	83 e2 0f             	and    $0xf,%edx
  10132d:	8b 45 08             	mov    0x8(%ebp),%eax
  101330:	88 14 c5 26 cc 10 00 	mov    %dl,0x10cc26(,%eax,8)

	gdt_entries[num].granularity |=  gran & 0xf0; 
  101337:	8b 45 08             	mov    0x8(%ebp),%eax
  10133a:	0f b6 04 c5 26 cc 10 	movzbl 0x10cc26(,%eax,8),%eax
  101341:	00 
  101342:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
  101346:	83 e2 f0             	and    $0xfffffff0,%edx
  101349:	09 d0                	or     %edx,%eax
  10134b:	89 c2                	mov    %eax,%edx
  10134d:	8b 45 08             	mov    0x8(%ebp),%eax
  101350:	88 14 c5 26 cc 10 00 	mov    %dl,0x10cc26(,%eax,8)
	gdt_entries[num].access      = access; 
  101357:	8b 45 08             	mov    0x8(%ebp),%eax
  10135a:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  10135e:	88 14 c5 25 cc 10 00 	mov    %dl,0x10cc25(,%eax,8)
}
  101365:	c9                   	leave  
  101366:	c3                   	ret    
  101367:	90                   	nop

00101368 <entry>:
#include "elf.h"
#include "idt.h"
#include "gdt.h"

int entry()
{
  101368:	55                   	push   %ebp
  101369:	89 e5                	mov    %esp,%ebp
  10136b:	83 ec 28             	sub    $0x28,%esp
	
	init_debug();
  10136e:	e8 d5 fc ff ff       	call   101048 <init_debug>
	init_gdt();
  101373:	e8 50 fe ff ff       	call   1011c8 <init_gdt>
	init_idt();
  101378:	e8 13 ee ff ff       	call   100190 <init_idt>

	char *string = "hello word!\n";
  10137d:	c7 45 f4 bc 24 10 00 	movl   $0x1024bc,-0xc(%ebp)
      
	screen_clear();
  101384:	e8 b4 f8 ff ff       	call   100c3d <screen_clear>
	printk("%s\n", string);
  101389:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10138c:	89 44 24 04          	mov    %eax,0x4(%esp)
  101390:	c7 04 24 c9 24 10 00 	movl   $0x1024c9,(%esp)
  101397:	e8 a7 fb ff ff       	call   100f43 <printk>
      	
//	panic("test");
      
  	asm volatile ("int $0x04");
  10139c:	cd 04                	int    $0x4
	asm volatile ("int $0x07");
  10139e:	cd 07                	int    $0x7
//	while (1);
	return 0;
  1013a0:	b8 00 00 00 00       	mov    $0x0,%eax
}
  1013a5:	c9                   	leave  
  1013a6:	c3                   	ret    
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
