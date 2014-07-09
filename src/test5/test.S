
shui：     文件格式 elf32-i386


Disassembly of section .text:

00100000 <gdt_flush>:
  100000:	8b 44 24 04          	mov    0x4(%esp),%eax
  100004:	0f 01 10             	lgdtl  (%eax)
  100007:	66 b8 10 00          	mov    $0x10,%ax
  10000b:	8e d8                	mov    %eax,%ds
  10000d:	8e c0                	mov    %eax,%es
  10000f:	8e e0                	mov    %eax,%fs
  100011:	8e e8                	mov    %eax,%gs
  100013:	8e d0                	mov    %eax,%ss
  100015:	ea 1c 00 10 00 08 00 	ljmp   $0x8,$0x10001c

0010001c <gdt_flush.flush>:
  10001c:	c3                   	ret    
  10001d:	66 90                	xchg   %ax,%ax
  10001f:	90                   	nop
  100020:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  100026:	00 00                	add    %al,(%eax)
  100028:	fb                   	sti    
  100029:	4f                   	dec    %edi
  10002a:	52                   	push   %edx
  10002b:	e4 fa                	in     $0xfa,%al

0010002c <start>:
  10002c:	fa                   	cli    
  10002d:	bc 03 80 00 00       	mov    $0x8003,%esp
  100032:	bd 00 00 00 00       	mov    $0x0,%ebp
  100037:	81 e4 f0 ff ff 0f    	and    $0xffffff0,%esp
  10003d:	89 1d 00 b0 10 00    	mov    %ebx,0x10b000
  100043:	e8 08 10 00 00       	call   101050 <entry>

00100048 <stop>:
  100048:	f4                   	hlt    
  100049:	eb fd                	jmp    100048 <stop>
  10004b:	66 90                	xchg   %ax,%ax
  10004d:	66 90                	xchg   %ax,%ax
  10004f:	90                   	nop

00100050 <isr0>:
  100050:	fa                   	cli    
  100051:	6a 00                	push   $0x0
  100053:	6a 00                	push   $0x0
  100055:	e9 fc 00 00 00       	jmp    100156 <isr_common_stub>

0010005a <isr1>:
  10005a:	fa                   	cli    
  10005b:	6a 00                	push   $0x0
  10005d:	6a 01                	push   $0x1
  10005f:	e9 f2 00 00 00       	jmp    100156 <isr_common_stub>

00100064 <isr2>:
  100064:	fa                   	cli    
  100065:	6a 00                	push   $0x0
  100067:	6a 02                	push   $0x2
  100069:	e9 e8 00 00 00       	jmp    100156 <isr_common_stub>

0010006e <isr3>:
  10006e:	fa                   	cli    
  10006f:	6a 00                	push   $0x0
  100071:	6a 03                	push   $0x3
  100073:	e9 de 00 00 00       	jmp    100156 <isr_common_stub>

00100078 <isr4>:
  100078:	fa                   	cli    
  100079:	6a 00                	push   $0x0
  10007b:	6a 04                	push   $0x4
  10007d:	e9 d4 00 00 00       	jmp    100156 <isr_common_stub>

00100082 <isr5>:
  100082:	fa                   	cli    
  100083:	6a 00                	push   $0x0
  100085:	6a 05                	push   $0x5
  100087:	e9 ca 00 00 00       	jmp    100156 <isr_common_stub>

0010008c <isr6>:
  10008c:	fa                   	cli    
  10008d:	6a 00                	push   $0x0
  10008f:	6a 06                	push   $0x6
  100091:	e9 c0 00 00 00       	jmp    100156 <isr_common_stub>

00100096 <isr7>:
  100096:	fa                   	cli    
  100097:	6a 00                	push   $0x0
  100099:	6a 07                	push   $0x7
  10009b:	e9 b6 00 00 00       	jmp    100156 <isr_common_stub>

001000a0 <isr8>:
  1000a0:	fa                   	cli    
  1000a1:	6a 08                	push   $0x8
  1000a3:	e9 ae 00 00 00       	jmp    100156 <isr_common_stub>

001000a8 <isr9>:
  1000a8:	fa                   	cli    
  1000a9:	6a 00                	push   $0x0
  1000ab:	6a 09                	push   $0x9
  1000ad:	e9 a4 00 00 00       	jmp    100156 <isr_common_stub>

001000b2 <isr10>:
  1000b2:	fa                   	cli    
  1000b3:	6a 0a                	push   $0xa
  1000b5:	e9 9c 00 00 00       	jmp    100156 <isr_common_stub>

001000ba <isr11>:
  1000ba:	fa                   	cli    
  1000bb:	6a 0b                	push   $0xb
  1000bd:	e9 94 00 00 00       	jmp    100156 <isr_common_stub>

001000c2 <isr12>:
  1000c2:	fa                   	cli    
  1000c3:	6a 0c                	push   $0xc
  1000c5:	e9 8c 00 00 00       	jmp    100156 <isr_common_stub>

001000ca <isr13>:
  1000ca:	fa                   	cli    
  1000cb:	6a 0d                	push   $0xd
  1000cd:	e9 84 00 00 00       	jmp    100156 <isr_common_stub>

001000d2 <isr14>:
  1000d2:	fa                   	cli    
  1000d3:	6a 0e                	push   $0xe
  1000d5:	eb 7f                	jmp    100156 <isr_common_stub>

001000d7 <isr15>:
  1000d7:	fa                   	cli    
  1000d8:	6a 00                	push   $0x0
  1000da:	6a 0f                	push   $0xf
  1000dc:	eb 78                	jmp    100156 <isr_common_stub>

001000de <isr16>:
  1000de:	fa                   	cli    
  1000df:	6a 00                	push   $0x0
  1000e1:	6a 10                	push   $0x10
  1000e3:	eb 71                	jmp    100156 <isr_common_stub>

001000e5 <isr17>:
  1000e5:	fa                   	cli    
  1000e6:	6a 11                	push   $0x11
  1000e8:	eb 6c                	jmp    100156 <isr_common_stub>

001000ea <isr18>:
  1000ea:	fa                   	cli    
  1000eb:	6a 00                	push   $0x0
  1000ed:	6a 12                	push   $0x12
  1000ef:	eb 65                	jmp    100156 <isr_common_stub>

001000f1 <isr19>:
  1000f1:	fa                   	cli    
  1000f2:	6a 00                	push   $0x0
  1000f4:	6a 13                	push   $0x13
  1000f6:	eb 5e                	jmp    100156 <isr_common_stub>

001000f8 <isr20>:
  1000f8:	fa                   	cli    
  1000f9:	6a 00                	push   $0x0
  1000fb:	6a 14                	push   $0x14
  1000fd:	eb 57                	jmp    100156 <isr_common_stub>

001000ff <isr21>:
  1000ff:	fa                   	cli    
  100100:	6a 00                	push   $0x0
  100102:	6a 15                	push   $0x15
  100104:	eb 50                	jmp    100156 <isr_common_stub>

00100106 <isr22>:
  100106:	fa                   	cli    
  100107:	6a 00                	push   $0x0
  100109:	6a 16                	push   $0x16
  10010b:	eb 49                	jmp    100156 <isr_common_stub>

0010010d <isr23>:
  10010d:	fa                   	cli    
  10010e:	6a 00                	push   $0x0
  100110:	6a 17                	push   $0x17
  100112:	eb 42                	jmp    100156 <isr_common_stub>

00100114 <isr24>:
  100114:	fa                   	cli    
  100115:	6a 00                	push   $0x0
  100117:	6a 18                	push   $0x18
  100119:	eb 3b                	jmp    100156 <isr_common_stub>

0010011b <isr25>:
  10011b:	fa                   	cli    
  10011c:	6a 00                	push   $0x0
  10011e:	6a 19                	push   $0x19
  100120:	eb 34                	jmp    100156 <isr_common_stub>

00100122 <isr26>:
  100122:	fa                   	cli    
  100123:	6a 00                	push   $0x0
  100125:	6a 1a                	push   $0x1a
  100127:	eb 2d                	jmp    100156 <isr_common_stub>

00100129 <isr27>:
  100129:	fa                   	cli    
  10012a:	6a 00                	push   $0x0
  10012c:	6a 1b                	push   $0x1b
  10012e:	eb 26                	jmp    100156 <isr_common_stub>

00100130 <isr28>:
  100130:	fa                   	cli    
  100131:	6a 00                	push   $0x0
  100133:	6a 1c                	push   $0x1c
  100135:	eb 1f                	jmp    100156 <isr_common_stub>

00100137 <isr29>:
  100137:	fa                   	cli    
  100138:	6a 00                	push   $0x0
  10013a:	6a 1d                	push   $0x1d
  10013c:	eb 18                	jmp    100156 <isr_common_stub>

0010013e <isr30>:
  10013e:	fa                   	cli    
  10013f:	6a 00                	push   $0x0
  100141:	6a 1e                	push   $0x1e
  100143:	eb 11                	jmp    100156 <isr_common_stub>

00100145 <isr31>:
  100145:	fa                   	cli    
  100146:	6a 00                	push   $0x0
  100148:	6a 1f                	push   $0x1f
  10014a:	eb 0a                	jmp    100156 <isr_common_stub>

0010014c <isr255>:
  10014c:	fa                   	cli    
  10014d:	6a 00                	push   $0x0
  10014f:	68 ff 00 00 00       	push   $0xff
  100154:	eb 00                	jmp    100156 <isr_common_stub>

00100156 <isr_common_stub>:
  100156:	60                   	pusha  
  100157:	66 8c d8             	mov    %ds,%ax
  10015a:	50                   	push   %eax
  10015b:	66 b8 10 00          	mov    $0x10,%ax
  10015f:	8e d8                	mov    %eax,%ds
  100161:	8e c0                	mov    %eax,%es
  100163:	8e e0                	mov    %eax,%fs
  100165:	8e e8                	mov    %eax,%gs
  100167:	8e d0                	mov    %eax,%ss
  100169:	54                   	push   %esp
  10016a:	e8 bd 17 00 00       	call   10192c <isr_handler>
  10016f:	83 c4 04             	add    $0x4,%esp
  100172:	5b                   	pop    %ebx
  100173:	8e db                	mov    %ebx,%ds
  100175:	8e c3                	mov    %ebx,%es
  100177:	8e e3                	mov    %ebx,%fs
  100179:	8e eb                	mov    %ebx,%gs
  10017b:	8e d3                	mov    %ebx,%ss
  10017d:	61                   	popa   
  10017e:	83 c4 08             	add    $0x8,%esp
  100181:	cf                   	iret   

00100182 <idt_flush>:
  100182:	8b 44 24 04          	mov    0x4(%esp),%eax
  100186:	0f 01 18             	lidtl  (%eax)
  100189:	c3                   	ret    

0010018a <irq0>:
  10018a:	fa                   	cli    
  10018b:	6a 00                	push   $0x0
  10018d:	6a 20                	push   $0x20
  10018f:	eb 69                	jmp    1001fa <irq_common_stub>

00100191 <irq1>:
  100191:	fa                   	cli    
  100192:	6a 00                	push   $0x0
  100194:	6a 21                	push   $0x21
  100196:	eb 62                	jmp    1001fa <irq_common_stub>

00100198 <irq2>:
  100198:	fa                   	cli    
  100199:	6a 00                	push   $0x0
  10019b:	6a 22                	push   $0x22
  10019d:	eb 5b                	jmp    1001fa <irq_common_stub>

0010019f <irq3>:
  10019f:	fa                   	cli    
  1001a0:	6a 00                	push   $0x0
  1001a2:	6a 23                	push   $0x23
  1001a4:	eb 54                	jmp    1001fa <irq_common_stub>

001001a6 <irq4>:
  1001a6:	fa                   	cli    
  1001a7:	6a 00                	push   $0x0
  1001a9:	6a 24                	push   $0x24
  1001ab:	eb 4d                	jmp    1001fa <irq_common_stub>

001001ad <irq5>:
  1001ad:	fa                   	cli    
  1001ae:	6a 00                	push   $0x0
  1001b0:	6a 25                	push   $0x25
  1001b2:	eb 46                	jmp    1001fa <irq_common_stub>

001001b4 <irq6>:
  1001b4:	fa                   	cli    
  1001b5:	6a 00                	push   $0x0
  1001b7:	6a 26                	push   $0x26
  1001b9:	eb 3f                	jmp    1001fa <irq_common_stub>

001001bb <irq7>:
  1001bb:	fa                   	cli    
  1001bc:	6a 00                	push   $0x0
  1001be:	6a 27                	push   $0x27
  1001c0:	eb 38                	jmp    1001fa <irq_common_stub>

001001c2 <irq8>:
  1001c2:	fa                   	cli    
  1001c3:	6a 00                	push   $0x0
  1001c5:	6a 28                	push   $0x28
  1001c7:	eb 31                	jmp    1001fa <irq_common_stub>

001001c9 <irq9>:
  1001c9:	fa                   	cli    
  1001ca:	6a 00                	push   $0x0
  1001cc:	6a 29                	push   $0x29
  1001ce:	eb 2a                	jmp    1001fa <irq_common_stub>

001001d0 <irq10>:
  1001d0:	fa                   	cli    
  1001d1:	6a 00                	push   $0x0
  1001d3:	6a 2a                	push   $0x2a
  1001d5:	eb 23                	jmp    1001fa <irq_common_stub>

001001d7 <irq11>:
  1001d7:	fa                   	cli    
  1001d8:	6a 00                	push   $0x0
  1001da:	6a 2b                	push   $0x2b
  1001dc:	eb 1c                	jmp    1001fa <irq_common_stub>

001001de <irq12>:
  1001de:	fa                   	cli    
  1001df:	6a 00                	push   $0x0
  1001e1:	6a 2c                	push   $0x2c
  1001e3:	eb 15                	jmp    1001fa <irq_common_stub>

001001e5 <irq13>:
  1001e5:	fa                   	cli    
  1001e6:	6a 00                	push   $0x0
  1001e8:	6a 2d                	push   $0x2d
  1001ea:	eb 0e                	jmp    1001fa <irq_common_stub>

001001ec <irq14>:
  1001ec:	fa                   	cli    
  1001ed:	6a 00                	push   $0x0
  1001ef:	6a 2e                	push   $0x2e
  1001f1:	eb 07                	jmp    1001fa <irq_common_stub>

001001f3 <irq15>:
  1001f3:	fa                   	cli    
  1001f4:	6a 00                	push   $0x0
  1001f6:	6a 2f                	push   $0x2f
  1001f8:	eb 00                	jmp    1001fa <irq_common_stub>

001001fa <irq_common_stub>:
  1001fa:	60                   	pusha  
  1001fb:	66 8c d8             	mov    %ds,%ax
  1001fe:	50                   	push   %eax
  1001ff:	66 b8 10 00          	mov    $0x10,%ax
  100203:	8e d8                	mov    %eax,%ds
  100205:	8e c0                	mov    %eax,%es
  100207:	8e e0                	mov    %eax,%fs
  100209:	8e e8                	mov    %eax,%gs
  10020b:	8e d0                	mov    %eax,%ss
  10020d:	54                   	push   %esp
  10020e:	e8 7b 17 00 00       	call   10198e <irq_handler>
  100213:	83 c4 04             	add    $0x4,%esp
  100216:	5b                   	pop    %ebx
  100217:	8e db                	mov    %ebx,%ds
  100219:	8e c3                	mov    %ebx,%es
  10021b:	8e e3                	mov    %ebx,%fs
  10021d:	8e eb                	mov    %ebx,%gs
  10021f:	8e d3                	mov    %ebx,%ss
  100221:	61                   	popa   
  100222:	83 c4 08             	add    $0x8,%esp
  100225:	cf                   	iret   

00100226 <irq_common_stub.end>:
  100226:	66 90                	xchg   %ax,%ax

00100228 <prints>:
  100228:	55                   	push   %ebp
  100229:	89 e5                	mov    %esp,%ebp
  10022b:	83 ec 18             	sub    $0x18,%esp
  10022e:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100235:	00 
  100236:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  10023d:	00 
  10023e:	8b 45 08             	mov    0x8(%ebp),%eax
  100241:	89 04 24             	mov    %eax,(%esp)
  100244:	e8 3f 05 00 00       	call   100788 <screen_string>
  100249:	c9                   	leave  
  10024a:	c3                   	ret    

0010024b <printchar>:
  10024b:	55                   	push   %ebp
  10024c:	89 e5                	mov    %esp,%ebp
  10024e:	83 ec 28             	sub    $0x28,%esp
  100251:	8b 45 08             	mov    0x8(%ebp),%eax
  100254:	88 45 f4             	mov    %al,-0xc(%ebp)
  100257:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  10025b:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  100262:	00 
  100263:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  10026a:	00 
  10026b:	89 04 24             	mov    %eax,(%esp)
  10026e:	e8 2a 04 00 00       	call   10069d <screen_char>
  100273:	c9                   	leave  
  100274:	c3                   	ret    

00100275 <printi>:
  100275:	55                   	push   %ebp
  100276:	89 e5                	mov    %esp,%ebp
  100278:	83 ec 48             	sub    $0x48,%esp
  10027b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100282:	8b 45 08             	mov    0x8(%ebp),%eax
  100285:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100288:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  10028c:	79 03                	jns    100291 <printi+0x1c>
  10028e:	f7 5d 08             	negl   0x8(%ebp)
  100291:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100294:	ba 67 66 66 66       	mov    $0x66666667,%edx
  100299:	89 c8                	mov    %ecx,%eax
  10029b:	f7 ea                	imul   %edx
  10029d:	c1 fa 02             	sar    $0x2,%edx
  1002a0:	89 c8                	mov    %ecx,%eax
  1002a2:	c1 f8 1f             	sar    $0x1f,%eax
  1002a5:	29 c2                	sub    %eax,%edx
  1002a7:	89 d0                	mov    %edx,%eax
  1002a9:	c1 e0 02             	shl    $0x2,%eax
  1002ac:	01 d0                	add    %edx,%eax
  1002ae:	01 c0                	add    %eax,%eax
  1002b0:	89 ca                	mov    %ecx,%edx
  1002b2:	29 c2                	sub    %eax,%edx
  1002b4:	89 d0                	mov    %edx,%eax
  1002b6:	83 c0 30             	add    $0x30,%eax
  1002b9:	8d 4d d0             	lea    -0x30(%ebp),%ecx
  1002bc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1002bf:	01 ca                	add    %ecx,%edx
  1002c1:	88 02                	mov    %al,(%edx)
  1002c3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1002ca:	ba 67 66 66 66       	mov    $0x66666667,%edx
  1002cf:	89 c8                	mov    %ecx,%eax
  1002d1:	f7 ea                	imul   %edx
  1002d3:	c1 fa 02             	sar    $0x2,%edx
  1002d6:	89 c8                	mov    %ecx,%eax
  1002d8:	c1 f8 1f             	sar    $0x1f,%eax
  1002db:	89 d1                	mov    %edx,%ecx
  1002dd:	29 c1                	sub    %eax,%ecx
  1002df:	89 c8                	mov    %ecx,%eax
  1002e1:	89 45 08             	mov    %eax,0x8(%ebp)
  1002e4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1002e8:	7f a7                	jg     100291 <printi+0x1c>
  1002ea:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  1002ee:	79 0f                	jns    1002ff <printi+0x8a>
  1002f0:	8d 55 d0             	lea    -0x30(%ebp),%edx
  1002f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002f6:	01 d0                	add    %edx,%eax
  1002f8:	c6 00 2d             	movb   $0x2d,(%eax)
  1002fb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002ff:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  100303:	eb 2a                	jmp    10032f <printi+0xba>
  100305:	8d 55 d0             	lea    -0x30(%ebp),%edx
  100308:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10030b:	01 d0                	add    %edx,%eax
  10030d:	0f b6 00             	movzbl (%eax),%eax
  100310:	0f be c0             	movsbl %al,%eax
  100313:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  10031a:	00 
  10031b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100322:	00 
  100323:	89 04 24             	mov    %eax,(%esp)
  100326:	e8 72 03 00 00       	call   10069d <screen_char>
  10032b:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  10032f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100333:	79 d0                	jns    100305 <printi+0x90>
  100335:	c9                   	leave  
  100336:	c3                   	ret    

00100337 <printx>:
  100337:	55                   	push   %ebp
  100338:	89 e5                	mov    %esp,%ebp
  10033a:	81 ec b8 00 00 00    	sub    $0xb8,%esp
  100340:	c6 45 e4 30          	movb   $0x30,-0x1c(%ebp)
  100344:	c6 45 e5 31          	movb   $0x31,-0x1b(%ebp)
  100348:	c6 45 e6 32          	movb   $0x32,-0x1a(%ebp)
  10034c:	c6 45 e7 33          	movb   $0x33,-0x19(%ebp)
  100350:	c6 45 e8 34          	movb   $0x34,-0x18(%ebp)
  100354:	c6 45 e9 35          	movb   $0x35,-0x17(%ebp)
  100358:	c6 45 ea 36          	movb   $0x36,-0x16(%ebp)
  10035c:	c6 45 eb 37          	movb   $0x37,-0x15(%ebp)
  100360:	c6 45 ec 38          	movb   $0x38,-0x14(%ebp)
  100364:	c6 45 ed 39          	movb   $0x39,-0x13(%ebp)
  100368:	c6 45 ee 41          	movb   $0x41,-0x12(%ebp)
  10036c:	c6 45 ef 42          	movb   $0x42,-0x11(%ebp)
  100370:	c6 45 f0 43          	movb   $0x43,-0x10(%ebp)
  100374:	c6 45 f1 44          	movb   $0x44,-0xf(%ebp)
  100378:	c6 45 f2 45          	movb   $0x45,-0xe(%ebp)
  10037c:	c6 45 f3 46          	movb   $0x46,-0xd(%ebp)
  100380:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100387:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10038b:	79 38                	jns    1003c5 <printx+0x8e>
  10038d:	f7 5d 08             	negl   0x8(%ebp)
  100390:	eb 33                	jmp    1003c5 <printx+0x8e>
  100392:	8b 45 08             	mov    0x8(%ebp),%eax
  100395:	89 c2                	mov    %eax,%edx
  100397:	c1 fa 1f             	sar    $0x1f,%edx
  10039a:	c1 ea 1c             	shr    $0x1c,%edx
  10039d:	01 d0                	add    %edx,%eax
  10039f:	83 e0 0f             	and    $0xf,%eax
  1003a2:	29 d0                	sub    %edx,%eax
  1003a4:	89 c2                	mov    %eax,%edx
  1003a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003a9:	89 94 85 64 ff ff ff 	mov    %edx,-0x9c(%ebp,%eax,4)
  1003b0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1003b7:	8d 50 0f             	lea    0xf(%eax),%edx
  1003ba:	85 c0                	test   %eax,%eax
  1003bc:	0f 48 c2             	cmovs  %edx,%eax
  1003bf:	c1 f8 04             	sar    $0x4,%eax
  1003c2:	89 45 08             	mov    %eax,0x8(%ebp)
  1003c5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1003c9:	7f c7                	jg     100392 <printx+0x5b>
  1003cb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1003cf:	eb 2e                	jmp    1003ff <printx+0xc8>
  1003d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d4:	8b 84 85 64 ff ff ff 	mov    -0x9c(%ebp,%eax,4),%eax
  1003db:	0f b6 44 05 e4       	movzbl -0x1c(%ebp,%eax,1),%eax
  1003e0:	0f be c0             	movsbl %al,%eax
  1003e3:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  1003ea:	00 
  1003eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1003f2:	00 
  1003f3:	89 04 24             	mov    %eax,(%esp)
  1003f6:	e8 a2 02 00 00       	call   10069d <screen_char>
  1003fb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1003ff:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100403:	79 cc                	jns    1003d1 <printx+0x9a>
  100405:	c9                   	leave  
  100406:	c3                   	ret    

00100407 <printk>:
  100407:	55                   	push   %ebp
  100408:	89 e5                	mov    %esp,%ebp
  10040a:	83 ec 28             	sub    $0x28,%esp
  10040d:	8d 45 0c             	lea    0xc(%ebp),%eax
  100410:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100413:	8b 45 08             	mov    0x8(%ebp),%eax
  100416:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100419:	89 54 24 04          	mov    %edx,0x4(%esp)
  10041d:	89 04 24             	mov    %eax,(%esp)
  100420:	e8 0f 00 00 00       	call   100434 <vprintk>
  100425:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100428:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10042f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100432:	c9                   	leave  
  100433:	c3                   	ret    

00100434 <vprintk>:
  100434:	55                   	push   %ebp
  100435:	89 e5                	mov    %esp,%ebp
  100437:	83 ec 28             	sub    $0x28,%esp
  10043a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100441:	e9 d8 00 00 00       	jmp    10051e <vprintk+0xea>
  100446:	8b 45 08             	mov    0x8(%ebp),%eax
  100449:	0f b6 00             	movzbl (%eax),%eax
  10044c:	3c 25                	cmp    $0x25,%al
  10044e:	0f 85 b1 00 00 00    	jne    100505 <vprintk+0xd1>
  100454:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  100458:	8b 45 08             	mov    0x8(%ebp),%eax
  10045b:	0f b6 00             	movzbl (%eax),%eax
  10045e:	3c 63                	cmp    $0x63,%al
  100460:	75 20                	jne    100482 <vprintk+0x4e>
  100462:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100466:	8b 45 0c             	mov    0xc(%ebp),%eax
  100469:	83 e8 04             	sub    $0x4,%eax
  10046c:	8b 00                	mov    (%eax),%eax
  10046e:	0f be c0             	movsbl %al,%eax
  100471:	89 04 24             	mov    %eax,(%esp)
  100474:	e8 d2 fd ff ff       	call   10024b <printchar>
  100479:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10047d:	e9 98 00 00 00       	jmp    10051a <vprintk+0xe6>
  100482:	8b 45 08             	mov    0x8(%ebp),%eax
  100485:	0f b6 00             	movzbl (%eax),%eax
  100488:	3c 64                	cmp    $0x64,%al
  10048a:	75 1a                	jne    1004a6 <vprintk+0x72>
  10048c:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100490:	8b 45 0c             	mov    0xc(%ebp),%eax
  100493:	83 e8 04             	sub    $0x4,%eax
  100496:	8b 00                	mov    (%eax),%eax
  100498:	89 04 24             	mov    %eax,(%esp)
  10049b:	e8 d5 fd ff ff       	call   100275 <printi>
  1004a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1004a4:	eb 74                	jmp    10051a <vprintk+0xe6>
  1004a6:	8b 45 08             	mov    0x8(%ebp),%eax
  1004a9:	0f b6 00             	movzbl (%eax),%eax
  1004ac:	3c 73                	cmp    $0x73,%al
  1004ae:	75 1a                	jne    1004ca <vprintk+0x96>
  1004b0:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  1004b4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004b7:	83 e8 04             	sub    $0x4,%eax
  1004ba:	8b 00                	mov    (%eax),%eax
  1004bc:	89 04 24             	mov    %eax,(%esp)
  1004bf:	e8 64 fd ff ff       	call   100228 <prints>
  1004c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1004c8:	eb 50                	jmp    10051a <vprintk+0xe6>
  1004ca:	8b 45 08             	mov    0x8(%ebp),%eax
  1004cd:	0f b6 00             	movzbl (%eax),%eax
  1004d0:	3c 78                	cmp    $0x78,%al
  1004d2:	75 1a                	jne    1004ee <vprintk+0xba>
  1004d4:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  1004d8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004db:	83 e8 04             	sub    $0x4,%eax
  1004de:	8b 00                	mov    (%eax),%eax
  1004e0:	89 04 24             	mov    %eax,(%esp)
  1004e3:	e8 4f fe ff ff       	call   100337 <printx>
  1004e8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1004ec:	eb 2c                	jmp    10051a <vprintk+0xe6>
  1004ee:	8b 45 08             	mov    0x8(%ebp),%eax
  1004f1:	0f b6 00             	movzbl (%eax),%eax
  1004f4:	0f be c0             	movsbl %al,%eax
  1004f7:	89 04 24             	mov    %eax,(%esp)
  1004fa:	e8 4c fd ff ff       	call   10024b <printchar>
  1004ff:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100503:	eb 15                	jmp    10051a <vprintk+0xe6>
  100505:	8b 45 08             	mov    0x8(%ebp),%eax
  100508:	0f b6 00             	movzbl (%eax),%eax
  10050b:	0f be c0             	movsbl %al,%eax
  10050e:	89 04 24             	mov    %eax,(%esp)
  100511:	e8 35 fd ff ff       	call   10024b <printchar>
  100516:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10051a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  10051e:	8b 45 08             	mov    0x8(%ebp),%eax
  100521:	0f b6 00             	movzbl (%eax),%eax
  100524:	84 c0                	test   %al,%al
  100526:	0f 85 1a ff ff ff    	jne    100446 <vprintk+0x12>
  10052c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10052f:	c9                   	leave  
  100530:	c3                   	ret    
  100531:	66 90                	xchg   %ax,%ax
  100533:	90                   	nop

00100534 <scrooll>:
  100534:	55                   	push   %ebp
  100535:	89 e5                	mov    %esp,%ebp
  100537:	83 ec 10             	sub    $0x10,%esp
  10053a:	c6 45 fb 0f          	movb   $0xf,-0x5(%ebp)
  10053e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  100542:	c1 e0 08             	shl    $0x8,%eax
  100545:	83 c8 20             	or     $0x20,%eax
  100548:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
  10054c:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100553:	66 83 f8 18          	cmp    $0x18,%ax
  100557:	7e 69                	jle    1005c2 <scrooll+0x8e>
  100559:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100560:	eb 25                	jmp    100587 <scrooll+0x53>
  100562:	a1 c0 24 10 00       	mov    0x1024c0,%eax
  100567:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10056a:	01 d2                	add    %edx,%edx
  10056c:	01 c2                	add    %eax,%edx
  10056e:	a1 c0 24 10 00       	mov    0x1024c0,%eax
  100573:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100576:	83 c1 50             	add    $0x50,%ecx
  100579:	01 c9                	add    %ecx,%ecx
  10057b:	01 c8                	add    %ecx,%eax
  10057d:	0f b7 00             	movzwl (%eax),%eax
  100580:	66 89 02             	mov    %ax,(%edx)
  100583:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100587:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%ebp)
  10058e:	7e d2                	jle    100562 <scrooll+0x2e>
  100590:	c7 45 fc 80 07 00 00 	movl   $0x780,-0x4(%ebp)
  100597:	eb 17                	jmp    1005b0 <scrooll+0x7c>
  100599:	a1 c0 24 10 00       	mov    0x1024c0,%eax
  10059e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1005a1:	01 d2                	add    %edx,%edx
  1005a3:	01 c2                	add    %eax,%edx
  1005a5:	0f b7 45 f8          	movzwl -0x8(%ebp),%eax
  1005a9:	66 89 02             	mov    %ax,(%edx)
  1005ac:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1005b0:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1005b7:	7e e0                	jle    100599 <scrooll+0x65>
  1005b9:	66 c7 05 04 b0 10 00 	movw   $0x18,0x10b004
  1005c0:	18 00 
  1005c2:	c9                   	leave  
  1005c3:	c3                   	ret    

001005c4 <move_point>:
  1005c4:	55                   	push   %ebp
  1005c5:	89 e5                	mov    %esp,%ebp
  1005c7:	83 ec 28             	sub    $0x28,%esp
  1005ca:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  1005d1:	89 c2                	mov    %eax,%edx
  1005d3:	89 d0                	mov    %edx,%eax
  1005d5:	c1 e0 02             	shl    $0x2,%eax
  1005d8:	01 d0                	add    %edx,%eax
  1005da:	c1 e0 04             	shl    $0x4,%eax
  1005dd:	89 c2                	mov    %eax,%edx
  1005df:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  1005e6:	01 d0                	add    %edx,%eax
  1005e8:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  1005ec:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
  1005f3:	00 
  1005f4:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  1005fb:	e8 d0 01 00 00       	call   1007d0 <outb>
  100600:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100604:	66 c1 e8 08          	shr    $0x8,%ax
  100608:	0f b6 c0             	movzbl %al,%eax
  10060b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10060f:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  100616:	e8 b5 01 00 00       	call   1007d0 <outb>
  10061b:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
  100622:	00 
  100623:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  10062a:	e8 a1 01 00 00       	call   1007d0 <outb>
  10062f:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100633:	0f b6 c0             	movzbl %al,%eax
  100636:	89 44 24 04          	mov    %eax,0x4(%esp)
  10063a:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  100641:	e8 8a 01 00 00       	call   1007d0 <outb>
  100646:	c9                   	leave  
  100647:	c3                   	ret    

00100648 <screen_clear>:
  100648:	55                   	push   %ebp
  100649:	89 e5                	mov    %esp,%ebp
  10064b:	83 ec 18             	sub    $0x18,%esp
  10064e:	66 c7 45 f2 20 07    	movw   $0x720,-0xe(%ebp)
  100654:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10065b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100662:	eb 17                	jmp    10067b <screen_clear+0x33>
  100664:	a1 c0 24 10 00       	mov    0x1024c0,%eax
  100669:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10066c:	01 d2                	add    %edx,%edx
  10066e:	01 c2                	add    %eax,%edx
  100670:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  100674:	66 89 02             	mov    %ax,(%edx)
  100677:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10067b:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  100682:	7e e0                	jle    100664 <screen_clear+0x1c>
  100684:	66 c7 05 04 b0 10 00 	movw   $0x0,0x10b004
  10068b:	00 00 
  10068d:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  100694:	00 00 
  100696:	e8 29 ff ff ff       	call   1005c4 <move_point>
  10069b:	c9                   	leave  
  10069c:	c3                   	ret    

0010069d <screen_char>:
  10069d:	55                   	push   %ebp
  10069e:	89 e5                	mov    %esp,%ebp
  1006a0:	83 ec 28             	sub    $0x28,%esp
  1006a3:	8b 45 08             	mov    0x8(%ebp),%eax
  1006a6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1006a9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006ac:	89 c2                	mov    %eax,%edx
  1006ae:	8b 45 10             	mov    0x10(%ebp),%eax
  1006b1:	09 d0                	or     %edx,%eax
  1006b3:	89 c2                	mov    %eax,%edx
  1006b5:	c1 e2 08             	shl    $0x8,%edx
  1006b8:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
  1006bd:	09 d0                	or     %edx,%eax
  1006bf:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  1006c3:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
  1006c7:	75 1b                	jne    1006e4 <screen_char+0x47>
  1006c9:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  1006d0:	83 c0 01             	add    $0x1,%eax
  1006d3:	66 a3 04 b0 10 00    	mov    %ax,0x10b004
  1006d9:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  1006e0:	00 00 
  1006e2:	eb 72                	jmp    100756 <screen_char+0xb9>
  1006e4:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  1006e8:	75 12                	jne    1006fc <screen_char+0x5f>
  1006ea:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  1006f1:	83 c0 08             	add    $0x8,%eax
  1006f4:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  1006fa:	eb 5a                	jmp    100756 <screen_char+0xb9>
  1006fc:	80 7d e4 20          	cmpb   $0x20,-0x1c(%ebp)
  100700:	75 12                	jne    100714 <screen_char+0x77>
  100702:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100709:	83 c0 01             	add    $0x1,%eax
  10070c:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  100712:	eb 42                	jmp    100756 <screen_char+0xb9>
  100714:	8b 0d c0 24 10 00    	mov    0x1024c0,%ecx
  10071a:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  100721:	0f bf d0             	movswl %ax,%edx
  100724:	89 d0                	mov    %edx,%eax
  100726:	c1 e0 02             	shl    $0x2,%eax
  100729:	01 d0                	add    %edx,%eax
  10072b:	c1 e0 04             	shl    $0x4,%eax
  10072e:	89 c2                	mov    %eax,%edx
  100730:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  100737:	98                   	cwtl   
  100738:	01 d0                	add    %edx,%eax
  10073a:	01 c0                	add    %eax,%eax
  10073c:	8d 14 01             	lea    (%ecx,%eax,1),%edx
  10073f:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100743:	66 89 02             	mov    %ax,(%edx)
  100746:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  10074d:	83 c0 01             	add    $0x1,%eax
  100750:	66 a3 06 b0 10 00    	mov    %ax,0x10b006
  100756:	0f b7 05 06 b0 10 00 	movzwl 0x10b006,%eax
  10075d:	66 83 f8 50          	cmp    $0x50,%ax
  100761:	7e 19                	jle    10077c <screen_char+0xdf>
  100763:	0f b7 05 04 b0 10 00 	movzwl 0x10b004,%eax
  10076a:	83 c0 01             	add    $0x1,%eax
  10076d:	66 a3 04 b0 10 00    	mov    %ax,0x10b004
  100773:	66 c7 05 06 b0 10 00 	movw   $0x0,0x10b006
  10077a:	00 00 
  10077c:	e8 b3 fd ff ff       	call   100534 <scrooll>
  100781:	e8 3e fe ff ff       	call   1005c4 <move_point>
  100786:	c9                   	leave  
  100787:	c3                   	ret    

00100788 <screen_string>:
  100788:	55                   	push   %ebp
  100789:	89 e5                	mov    %esp,%ebp
  10078b:	83 ec 28             	sub    $0x28,%esp
  10078e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100795:	eb 28                	jmp    1007bf <screen_string+0x37>
  100797:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10079a:	8b 45 08             	mov    0x8(%ebp),%eax
  10079d:	01 d0                	add    %edx,%eax
  10079f:	0f b6 00             	movzbl (%eax),%eax
  1007a2:	0f be c0             	movsbl %al,%eax
  1007a5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1007a9:	8b 55 10             	mov    0x10(%ebp),%edx
  1007ac:	89 54 24 08          	mov    %edx,0x8(%esp)
  1007b0:	8b 55 0c             	mov    0xc(%ebp),%edx
  1007b3:	89 54 24 04          	mov    %edx,0x4(%esp)
  1007b7:	89 04 24             	mov    %eax,(%esp)
  1007ba:	e8 de fe ff ff       	call   10069d <screen_char>
  1007bf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1007c5:	01 d0                	add    %edx,%eax
  1007c7:	0f b6 00             	movzbl (%eax),%eax
  1007ca:	84 c0                	test   %al,%al
  1007cc:	75 c9                	jne    100797 <screen_string+0xf>
  1007ce:	c9                   	leave  
  1007cf:	c3                   	ret    

001007d0 <outb>:
  1007d0:	55                   	push   %ebp
  1007d1:	89 e5                	mov    %esp,%ebp
  1007d3:	83 ec 08             	sub    $0x8,%esp
  1007d6:	8b 55 08             	mov    0x8(%ebp),%edx
  1007d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  1007dc:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
  1007e0:	88 45 f8             	mov    %al,-0x8(%ebp)
  1007e3:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
  1007e7:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  1007eb:	ee                   	out    %al,(%dx)
  1007ec:	c9                   	leave  
  1007ed:	c3                   	ret    

001007ee <inb>:
  1007ee:	55                   	push   %ebp
  1007ef:	89 e5                	mov    %esp,%ebp
  1007f1:	53                   	push   %ebx
  1007f2:	83 ec 14             	sub    $0x14,%esp
  1007f5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007f8:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
  1007fc:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  100800:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  100804:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100808:	ec                   	in     (%dx),%al
  100809:	89 c3                	mov    %eax,%ebx
  10080b:	88 5d fb             	mov    %bl,-0x5(%ebp)
  10080e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  100812:	83 c4 14             	add    $0x14,%esp
  100815:	5b                   	pop    %ebx
  100816:	5d                   	pop    %ebp
  100817:	c3                   	ret    

00100818 <inw>:
  100818:	55                   	push   %ebp
  100819:	89 e5                	mov    %esp,%ebp
  10081b:	53                   	push   %ebx
  10081c:	83 ec 14             	sub    $0x14,%esp
  10081f:	8b 45 08             	mov    0x8(%ebp),%eax
  100822:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
  100826:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  10082a:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  10082e:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100832:	66 ed                	in     (%dx),%ax
  100834:	89 c3                	mov    %eax,%ebx
  100836:	66 89 5d fa          	mov    %bx,-0x6(%ebp)
  10083a:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
  10083e:	83 c4 14             	add    $0x14,%esp
  100841:	5b                   	pop    %ebx
  100842:	5d                   	pop    %ebp
  100843:	c3                   	ret    

00100844 <memcpy>:
  100844:	55                   	push   %ebp
  100845:	89 e5                	mov    %esp,%ebp
  100847:	83 ec 10             	sub    $0x10,%esp
  10084a:	8b 45 08             	mov    0x8(%ebp),%eax
  10084d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100850:	8b 45 0c             	mov    0xc(%ebp),%eax
  100853:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100856:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10085d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100861:	74 06                	je     100869 <memcpy+0x25>
  100863:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100867:	75 1e                	jne    100887 <memcpy+0x43>
  100869:	8b 45 08             	mov    0x8(%ebp),%eax
  10086c:	eb 25                	jmp    100893 <memcpy+0x4f>
  10086e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100871:	0f b6 10             	movzbl (%eax),%edx
  100874:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100877:	88 10                	mov    %dl,(%eax)
  100879:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10087d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100881:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100885:	eb 01                	jmp    100888 <memcpy+0x44>
  100887:	90                   	nop
  100888:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10088b:	3b 45 10             	cmp    0x10(%ebp),%eax
  10088e:	72 de                	jb     10086e <memcpy+0x2a>
  100890:	8b 45 08             	mov    0x8(%ebp),%eax
  100893:	c9                   	leave  
  100894:	c3                   	ret    

00100895 <memset>:
  100895:	55                   	push   %ebp
  100896:	89 e5                	mov    %esp,%ebp
  100898:	83 ec 14             	sub    $0x14,%esp
  10089b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10089e:	88 45 ec             	mov    %al,-0x14(%ebp)
  1008a1:	8b 45 08             	mov    0x8(%ebp),%eax
  1008a4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1008a7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1008ae:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1008b5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1008b9:	75 08                	jne    1008c3 <memset+0x2e>
  1008bb:	eb 62                	jmp    10091f <memset+0x8a>
  1008bd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1008c1:	eb 01                	jmp    1008c4 <memset+0x2f>
  1008c3:	90                   	nop
  1008c4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1008c7:	0f b6 00             	movzbl (%eax),%eax
  1008ca:	84 c0                	test   %al,%al
  1008cc:	75 ef                	jne    1008bd <memset+0x28>
  1008ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1008d1:	3b 45 10             	cmp    0x10(%ebp),%eax
  1008d4:	77 1d                	ja     1008f3 <memset+0x5e>
  1008d6:	eb 11                	jmp    1008e9 <memset+0x54>
  1008d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1008db:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  1008df:	88 10                	mov    %dl,(%eax)
  1008e1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1008e5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1008e9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1008ec:	3b 45 10             	cmp    0x10(%ebp),%eax
  1008ef:	72 e7                	jb     1008d8 <memset+0x43>
  1008f1:	eb 22                	jmp    100915 <memset+0x80>
  1008f3:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1008fa:	eb 11                	jmp    10090d <memset+0x78>
  1008fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1008ff:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  100903:	88 10                	mov    %dl,(%eax)
  100905:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100909:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  10090d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100910:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100913:	7c e7                	jl     1008fc <memset+0x67>
  100915:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100918:	c6 00 00             	movb   $0x0,(%eax)
  10091b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10091f:	c9                   	leave  
  100920:	c3                   	ret    

00100921 <bzer>:
  100921:	55                   	push   %ebp
  100922:	89 e5                	mov    %esp,%ebp
  100924:	83 ec 10             	sub    $0x10,%esp
  100927:	8b 45 08             	mov    0x8(%ebp),%eax
  10092a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10092d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100934:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10093b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10093f:	75 08                	jne    100949 <bzer+0x28>
  100941:	eb 52                	jmp    100995 <bzer+0x74>
  100943:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100947:	eb 01                	jmp    10094a <bzer+0x29>
  100949:	90                   	nop
  10094a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10094d:	0f b6 00             	movzbl (%eax),%eax
  100950:	84 c0                	test   %al,%al
  100952:	75 ef                	jne    100943 <bzer+0x22>
  100954:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100957:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10095a:	72 1a                	jb     100976 <bzer+0x55>
  10095c:	eb 0e                	jmp    10096c <bzer+0x4b>
  10095e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100961:	c6 00 00             	movb   $0x0,(%eax)
  100964:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100968:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  10096c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10096f:	3b 45 0c             	cmp    0xc(%ebp),%eax
  100972:	72 ea                	jb     10095e <bzer+0x3d>
  100974:	eb 1f                	jmp    100995 <bzer+0x74>
  100976:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10097d:	eb 0e                	jmp    10098d <bzer+0x6c>
  10097f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100982:	c6 00 00             	movb   $0x0,(%eax)
  100985:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100989:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  10098d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100990:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100993:	7c ea                	jl     10097f <bzer+0x5e>
  100995:	c9                   	leave  
  100996:	c3                   	ret    

00100997 <strcmp>:
  100997:	55                   	push   %ebp
  100998:	89 e5                	mov    %esp,%ebp
  10099a:	83 ec 10             	sub    $0x10,%esp
  10099d:	8b 45 08             	mov    0x8(%ebp),%eax
  1009a0:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1009a3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009a6:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1009a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1009ac:	0f b6 00             	movzbl (%eax),%eax
  1009af:	88 45 f7             	mov    %al,-0x9(%ebp)
  1009b2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1009b6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1009b9:	0f b6 00             	movzbl (%eax),%eax
  1009bc:	88 45 f6             	mov    %al,-0xa(%ebp)
  1009bf:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1009c3:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  1009c7:	75 10                	jne    1009d9 <strcmp+0x42>
  1009c9:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  1009cd:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  1009d1:	89 d1                	mov    %edx,%ecx
  1009d3:	29 c1                	sub    %eax,%ecx
  1009d5:	89 c8                	mov    %ecx,%eax
  1009d7:	eb 17                	jmp    1009f0 <strcmp+0x59>
  1009d9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  1009dd:	3a 45 f6             	cmp    -0xa(%ebp),%al
  1009e0:	74 c7                	je     1009a9 <strcmp+0x12>
  1009e2:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  1009e6:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  1009ea:	89 d1                	mov    %edx,%ecx
  1009ec:	29 c1                	sub    %eax,%ecx
  1009ee:	89 c8                	mov    %ecx,%eax
  1009f0:	c9                   	leave  
  1009f1:	c3                   	ret    

001009f2 <strcpy>:
  1009f2:	55                   	push   %ebp
  1009f3:	89 e5                	mov    %esp,%ebp
  1009f5:	83 ec 10             	sub    $0x10,%esp
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1009fe:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a01:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100a04:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100a08:	74 06                	je     100a10 <strcpy+0x1e>
  100a0a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100a0e:	75 05                	jne    100a15 <strcpy+0x23>
  100a10:	8b 45 08             	mov    0x8(%ebp),%eax
  100a13:	eb 25                	jmp    100a3a <strcpy+0x48>
  100a15:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a18:	0f b6 10             	movzbl (%eax),%edx
  100a1b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a1e:	88 10                	mov    %dl,(%eax)
  100a20:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100a24:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a27:	0f b6 00             	movzbl (%eax),%eax
  100a2a:	84 c0                	test   %al,%al
  100a2c:	0f 95 c0             	setne  %al
  100a2f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a33:	84 c0                	test   %al,%al
  100a35:	75 de                	jne    100a15 <strcpy+0x23>
  100a37:	8b 45 08             	mov    0x8(%ebp),%eax
  100a3a:	c9                   	leave  
  100a3b:	c3                   	ret    

00100a3c <strcat>:
  100a3c:	55                   	push   %ebp
  100a3d:	89 e5                	mov    %esp,%ebp
  100a3f:	83 ec 10             	sub    $0x10,%esp
  100a42:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a45:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100a48:	8b 45 08             	mov    0x8(%ebp),%eax
  100a4b:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100a4e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100a52:	74 06                	je     100a5a <strcat+0x1e>
  100a54:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  100a58:	75 07                	jne    100a61 <strcat+0x25>
  100a5a:	b8 00 00 00 00       	mov    $0x0,%eax
  100a5f:	eb 3b                	jmp    100a9c <strcat+0x60>
  100a61:	90                   	nop
  100a62:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a65:	0f b6 00             	movzbl (%eax),%eax
  100a68:	84 c0                	test   %al,%al
  100a6a:	0f 95 c0             	setne  %al
  100a6d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a71:	84 c0                	test   %al,%al
  100a73:	75 ed                	jne    100a62 <strcat+0x26>
  100a75:	eb 0f                	jmp    100a86 <strcat+0x4a>
  100a77:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a7a:	0f b6 10             	movzbl (%eax),%edx
  100a7d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a80:	88 10                	mov    %dl,(%eax)
  100a82:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100a86:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a89:	0f b6 00             	movzbl (%eax),%eax
  100a8c:	84 c0                	test   %al,%al
  100a8e:	0f 95 c0             	setne  %al
  100a91:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100a95:	84 c0                	test   %al,%al
  100a97:	75 de                	jne    100a77 <strcat+0x3b>
  100a99:	8b 45 08             	mov    0x8(%ebp),%eax
  100a9c:	c9                   	leave  
  100a9d:	c3                   	ret    

00100a9e <strlen>:
  100a9e:	55                   	push   %ebp
  100a9f:	89 e5                	mov    %esp,%ebp
  100aa1:	83 ec 10             	sub    $0x10,%esp
  100aa4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100aab:	eb 04                	jmp    100ab1 <strlen+0x13>
  100aad:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100ab1:	8b 45 08             	mov    0x8(%ebp),%eax
  100ab4:	0f b6 00             	movzbl (%eax),%eax
  100ab7:	84 c0                	test   %al,%al
  100ab9:	0f 95 c0             	setne  %al
  100abc:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  100ac0:	84 c0                	test   %al,%al
  100ac2:	75 e9                	jne    100aad <strlen+0xf>
  100ac4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100ac7:	c9                   	leave  
  100ac8:	c3                   	ret    
  100ac9:	66 90                	xchg   %ax,%ax
  100acb:	90                   	nop

00100acc <init_debug>:
  100acc:	55                   	push   %ebp
  100acd:	89 e5                	mov    %esp,%ebp
  100acf:	83 ec 28             	sub    $0x28,%esp
  100ad2:	8b 15 00 b0 10 00    	mov    0x10b000,%edx
  100ad8:	8d 45 e8             	lea    -0x18(%ebp),%eax
  100adb:	89 54 24 04          	mov    %edx,0x4(%esp)
  100adf:	89 04 24             	mov    %eax,(%esp)
  100ae2:	e8 65 01 00 00       	call   100c4c <elf_form_multiboot>
  100ae7:	83 ec 04             	sub    $0x4,%esp
  100aea:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100aed:	a3 08 b0 10 00       	mov    %eax,0x10b008
  100af2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100af5:	a3 0c b0 10 00       	mov    %eax,0x10b00c
  100afa:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100afd:	a3 10 b0 10 00       	mov    %eax,0x10b010
  100b02:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100b05:	a3 14 b0 10 00       	mov    %eax,0x10b014
  100b0a:	c9                   	leave  
  100b0b:	c3                   	ret    

00100b0c <print_cur_status>:
  100b0c:	55                   	push   %ebp
  100b0d:	89 e5                	mov    %esp,%ebp
  100b0f:	83 ec 28             	sub    $0x28,%esp
  100b12:	8c 4d f6             	mov    %cs,-0xa(%ebp)
  100b15:	8c 5d f4             	mov    %ds,-0xc(%ebp)
  100b18:	8c 45 f2             	mov    %es,-0xe(%ebp)
  100b1b:	8c 55 f0             	mov    %ss,-0x10(%ebp)
  100b1e:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100b22:	0f b7 c0             	movzwl %ax,%eax
  100b25:	89 c2                	mov    %eax,%edx
  100b27:	83 e2 03             	and    $0x3,%edx
  100b2a:	a1 18 b0 10 00       	mov    0x10b018,%eax
  100b2f:	89 54 24 08          	mov    %edx,0x8(%esp)
  100b33:	89 44 24 04          	mov    %eax,0x4(%esp)
  100b37:	c7 04 24 c4 24 10 00 	movl   $0x1024c4,(%esp)
  100b3e:	e8 c4 f8 ff ff       	call   100407 <printk>
  100b43:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  100b47:	0f b7 d0             	movzwl %ax,%edx
  100b4a:	a1 18 b0 10 00       	mov    0x10b018,%eax
  100b4f:	89 54 24 08          	mov    %edx,0x8(%esp)
  100b53:	89 44 24 04          	mov    %eax,0x4(%esp)
  100b57:	c7 04 24 d1 24 10 00 	movl   $0x1024d1,(%esp)
  100b5e:	e8 a4 f8 ff ff       	call   100407 <printk>
  100b63:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
  100b67:	0f b7 d0             	movzwl %ax,%edx
  100b6a:	a1 18 b0 10 00       	mov    0x10b018,%eax
  100b6f:	89 54 24 08          	mov    %edx,0x8(%esp)
  100b73:	89 44 24 04          	mov    %eax,0x4(%esp)
  100b77:	c7 04 24 de 24 10 00 	movl   $0x1024de,(%esp)
  100b7e:	e8 84 f8 ff ff       	call   100407 <printk>
  100b83:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  100b87:	0f b7 d0             	movzwl %ax,%edx
  100b8a:	a1 18 b0 10 00       	mov    0x10b018,%eax
  100b8f:	89 54 24 08          	mov    %edx,0x8(%esp)
  100b93:	89 44 24 04          	mov    %eax,0x4(%esp)
  100b97:	c7 04 24 eb 24 10 00 	movl   $0x1024eb,(%esp)
  100b9e:	e8 64 f8 ff ff       	call   100407 <printk>
  100ba3:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
  100ba7:	0f b7 d0             	movzwl %ax,%edx
  100baa:	a1 18 b0 10 00       	mov    0x10b018,%eax
  100baf:	89 54 24 08          	mov    %edx,0x8(%esp)
  100bb3:	89 44 24 04          	mov    %eax,0x4(%esp)
  100bb7:	c7 04 24 f8 24 10 00 	movl   $0x1024f8,(%esp)
  100bbe:	e8 44 f8 ff ff       	call   100407 <printk>
  100bc3:	c9                   	leave  
  100bc4:	c3                   	ret    

00100bc5 <panic>:
  100bc5:	55                   	push   %ebp
  100bc6:	89 e5                	mov    %esp,%ebp
  100bc8:	83 ec 18             	sub    $0x18,%esp
  100bcb:	8b 45 08             	mov    0x8(%ebp),%eax
  100bce:	89 44 24 04          	mov    %eax,0x4(%esp)
  100bd2:	c7 04 24 05 25 10 00 	movl   $0x102505,(%esp)
  100bd9:	e8 29 f8 ff ff       	call   100407 <printk>
  100bde:	e8 0e 00 00 00       	call   100bf1 <print_stack_trace>
  100be3:	c7 04 24 1d 25 10 00 	movl   $0x10251d,(%esp)
  100bea:	e8 18 f8 ff ff       	call   100407 <printk>
  100bef:	eb fe                	jmp    100bef <panic+0x2a>

00100bf1 <print_stack_trace>:
  100bf1:	55                   	push   %ebp
  100bf2:	89 e5                	mov    %esp,%ebp
  100bf4:	53                   	push   %ebx
  100bf5:	83 ec 24             	sub    $0x24,%esp
  100bf8:	89 eb                	mov    %ebp,%ebx
  100bfa:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  100bfd:	eb 3f                	jmp    100c3e <print_stack_trace+0x4d>
  100bff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c02:	83 c0 04             	add    $0x4,%eax
  100c05:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c08:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c0b:	8b 00                	mov    (%eax),%eax
  100c0d:	c7 44 24 04 08 b0 10 	movl   $0x10b008,0x4(%esp)
  100c14:	00 
  100c15:	89 04 24             	mov    %eax,(%esp)
  100c18:	e8 51 01 00 00       	call   100d6e <elf_look_symbol>
  100c1d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100c20:	8b 12                	mov    (%edx),%edx
  100c22:	89 44 24 08          	mov    %eax,0x8(%esp)
  100c26:	89 54 24 04          	mov    %edx,0x4(%esp)
  100c2a:	c7 04 24 23 25 10 00 	movl   $0x102523,(%esp)
  100c31:	e8 d1 f7 ff ff       	call   100407 <printk>
  100c36:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c39:	8b 00                	mov    (%eax),%eax
  100c3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c3e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c42:	75 bb                	jne    100bff <print_stack_trace+0xe>
  100c44:	83 c4 24             	add    $0x24,%esp
  100c47:	5b                   	pop    %ebx
  100c48:	5d                   	pop    %ebp
  100c49:	c3                   	ret    
  100c4a:	66 90                	xchg   %ax,%ax

00100c4c <elf_form_multiboot>:
  100c4c:	55                   	push   %ebp
  100c4d:	89 e5                	mov    %esp,%ebp
  100c4f:	83 ec 38             	sub    $0x38,%esp
  100c52:	8b 45 0c             	mov    0xc(%ebp),%eax
  100c55:	8b 40 24             	mov    0x24(%eax),%eax
  100c58:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c5b:	8b 45 0c             	mov    0xc(%ebp),%eax
  100c5e:	8b 50 28             	mov    0x28(%eax),%edx
  100c61:	89 d0                	mov    %edx,%eax
  100c63:	c1 e0 02             	shl    $0x2,%eax
  100c66:	01 d0                	add    %edx,%eax
  100c68:	c1 e0 03             	shl    $0x3,%eax
  100c6b:	89 c2                	mov    %eax,%edx
  100c6d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c70:	01 d0                	add    %edx,%eax
  100c72:	8b 40 0c             	mov    0xc(%eax),%eax
  100c75:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100c78:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100c7f:	e9 b8 00 00 00       	jmp    100d3c <elf_form_multiboot+0xf0>
  100c84:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100c87:	89 d0                	mov    %edx,%eax
  100c89:	c1 e0 02             	shl    $0x2,%eax
  100c8c:	01 d0                	add    %edx,%eax
  100c8e:	c1 e0 03             	shl    $0x3,%eax
  100c91:	89 c2                	mov    %eax,%edx
  100c93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c96:	01 d0                	add    %edx,%eax
  100c98:	8b 10                	mov    (%eax),%edx
  100c9a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c9d:	01 d0                	add    %edx,%eax
  100c9f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100ca2:	c7 44 24 04 33 25 10 	movl   $0x102533,0x4(%esp)
  100ca9:	00 
  100caa:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100cad:	89 04 24             	mov    %eax,(%esp)
  100cb0:	e8 e2 fc ff ff       	call   100997 <strcmp>
  100cb5:	85 c0                	test   %eax,%eax
  100cb7:	75 34                	jne    100ced <elf_form_multiboot+0xa1>
  100cb9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100cbc:	89 d0                	mov    %edx,%eax
  100cbe:	c1 e0 02             	shl    $0x2,%eax
  100cc1:	01 d0                	add    %edx,%eax
  100cc3:	c1 e0 03             	shl    $0x3,%eax
  100cc6:	89 c2                	mov    %eax,%edx
  100cc8:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ccb:	01 d0                	add    %edx,%eax
  100ccd:	8b 40 0c             	mov    0xc(%eax),%eax
  100cd0:	89 45 e0             	mov    %eax,-0x20(%ebp)
  100cd3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100cd6:	89 d0                	mov    %edx,%eax
  100cd8:	c1 e0 02             	shl    $0x2,%eax
  100cdb:	01 d0                	add    %edx,%eax
  100cdd:	c1 e0 03             	shl    $0x3,%eax
  100ce0:	89 c2                	mov    %eax,%edx
  100ce2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ce5:	01 d0                	add    %edx,%eax
  100ce7:	8b 40 14             	mov    0x14(%eax),%eax
  100cea:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100ced:	c7 44 24 04 3b 25 10 	movl   $0x10253b,0x4(%esp)
  100cf4:	00 
  100cf5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100cf8:	89 04 24             	mov    %eax,(%esp)
  100cfb:	e8 97 fc ff ff       	call   100997 <strcmp>
  100d00:	85 c0                	test   %eax,%eax
  100d02:	75 34                	jne    100d38 <elf_form_multiboot+0xec>
  100d04:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d07:	89 d0                	mov    %edx,%eax
  100d09:	c1 e0 02             	shl    $0x2,%eax
  100d0c:	01 d0                	add    %edx,%eax
  100d0e:	c1 e0 03             	shl    $0x3,%eax
  100d11:	89 c2                	mov    %eax,%edx
  100d13:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100d16:	01 d0                	add    %edx,%eax
  100d18:	8b 40 0c             	mov    0xc(%eax),%eax
  100d1b:	89 45 d8             	mov    %eax,-0x28(%ebp)
  100d1e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d21:	89 d0                	mov    %edx,%eax
  100d23:	c1 e0 02             	shl    $0x2,%eax
  100d26:	01 d0                	add    %edx,%eax
  100d28:	c1 e0 03             	shl    $0x3,%eax
  100d2b:	89 c2                	mov    %eax,%edx
  100d2d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100d30:	01 d0                	add    %edx,%eax
  100d32:	8b 40 14             	mov    0x14(%eax),%eax
  100d35:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100d38:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100d3c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d3f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d42:	8b 40 1c             	mov    0x1c(%eax),%eax
  100d45:	39 c2                	cmp    %eax,%edx
  100d47:	0f 82 37 ff ff ff    	jb     100c84 <elf_form_multiboot+0x38>
  100d4d:	8b 45 08             	mov    0x8(%ebp),%eax
  100d50:	8b 55 d8             	mov    -0x28(%ebp),%edx
  100d53:	89 10                	mov    %edx,(%eax)
  100d55:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100d58:	89 50 04             	mov    %edx,0x4(%eax)
  100d5b:	8b 55 e0             	mov    -0x20(%ebp),%edx
  100d5e:	89 50 08             	mov    %edx,0x8(%eax)
  100d61:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100d64:	89 50 0c             	mov    %edx,0xc(%eax)
  100d67:	8b 45 08             	mov    0x8(%ebp),%eax
  100d6a:	c9                   	leave  
  100d6b:	c2 04 00             	ret    $0x4

00100d6e <elf_look_symbol>:
  100d6e:	55                   	push   %ebp
  100d6f:	89 e5                	mov    %esp,%ebp
  100d71:	83 ec 10             	sub    $0x10,%esp
  100d74:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100d7b:	eb 78                	jmp    100df5 <elf_look_symbol+0x87>
  100d7d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d80:	8b 00                	mov    (%eax),%eax
  100d82:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100d85:	c1 e2 04             	shl    $0x4,%edx
  100d88:	01 d0                	add    %edx,%eax
  100d8a:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
  100d8e:	0f b6 c0             	movzbl %al,%eax
  100d91:	83 e0 0f             	and    $0xf,%eax
  100d94:	83 f8 02             	cmp    $0x2,%eax
  100d97:	75 57                	jne    100df0 <elf_look_symbol+0x82>
  100d99:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d9c:	8b 00                	mov    (%eax),%eax
  100d9e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100da1:	c1 e2 04             	shl    $0x4,%edx
  100da4:	01 d0                	add    %edx,%eax
  100da6:	8b 40 04             	mov    0x4(%eax),%eax
  100da9:	3b 45 08             	cmp    0x8(%ebp),%eax
  100dac:	77 43                	ja     100df1 <elf_look_symbol+0x83>
  100dae:	8b 45 0c             	mov    0xc(%ebp),%eax
  100db1:	8b 00                	mov    (%eax),%eax
  100db3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100db6:	c1 e2 04             	shl    $0x4,%edx
  100db9:	01 d0                	add    %edx,%eax
  100dbb:	8b 50 04             	mov    0x4(%eax),%edx
  100dbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dc1:	8b 00                	mov    (%eax),%eax
  100dc3:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100dc6:	c1 e1 04             	shl    $0x4,%ecx
  100dc9:	01 c8                	add    %ecx,%eax
  100dcb:	8b 40 08             	mov    0x8(%eax),%eax
  100dce:	01 d0                	add    %edx,%eax
  100dd0:	3b 45 08             	cmp    0x8(%ebp),%eax
  100dd3:	76 1c                	jbe    100df1 <elf_look_symbol+0x83>
  100dd5:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dd8:	8b 40 08             	mov    0x8(%eax),%eax
  100ddb:	89 c2                	mov    %eax,%edx
  100ddd:	8b 45 0c             	mov    0xc(%ebp),%eax
  100de0:	8b 00                	mov    (%eax),%eax
  100de2:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100de5:	c1 e1 04             	shl    $0x4,%ecx
  100de8:	01 c8                	add    %ecx,%eax
  100dea:	8b 00                	mov    (%eax),%eax
  100dec:	01 d0                	add    %edx,%eax
  100dee:	eb 1e                	jmp    100e0e <elf_look_symbol+0xa0>
  100df0:	90                   	nop
  100df1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100df5:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100df8:	8b 45 0c             	mov    0xc(%ebp),%eax
  100dfb:	8b 40 04             	mov    0x4(%eax),%eax
  100dfe:	c1 e8 04             	shr    $0x4,%eax
  100e01:	39 c2                	cmp    %eax,%edx
  100e03:	0f 82 74 ff ff ff    	jb     100d7d <elf_look_symbol+0xf>
  100e09:	b8 00 00 00 00       	mov    $0x0,%eax
  100e0e:	c9                   	leave  
  100e0f:	c3                   	ret    

00100e10 <init_gdt>:
  100e10:	55                   	push   %ebp
  100e11:	89 e5                	mov    %esp,%ebp
  100e13:	83 ec 28             	sub    $0x28,%esp
  100e16:	66 c7 05 28 c0 10 00 	movw   $0x27,0x10c028
  100e1d:	27 00 
  100e1f:	b8 00 c0 10 00       	mov    $0x10c000,%eax
  100e24:	a3 2a c0 10 00       	mov    %eax,0x10c02a
  100e29:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  100e30:	00 
  100e31:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  100e38:	00 
  100e39:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  100e40:	00 
  100e41:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100e48:	00 
  100e49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  100e50:	e8 bf 00 00 00       	call   100f14 <gdt_set_gate>
  100e55:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100e5c:	00 
  100e5d:	c7 44 24 0c 9a 00 00 	movl   $0x9a,0xc(%esp)
  100e64:	00 
  100e65:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100e6c:	ff 
  100e6d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100e74:	00 
  100e75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  100e7c:	e8 93 00 00 00       	call   100f14 <gdt_set_gate>
  100e81:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100e88:	00 
  100e89:	c7 44 24 0c 92 00 00 	movl   $0x92,0xc(%esp)
  100e90:	00 
  100e91:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100e98:	ff 
  100e99:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100ea0:	00 
  100ea1:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  100ea8:	e8 67 00 00 00       	call   100f14 <gdt_set_gate>
  100ead:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100eb4:	00 
  100eb5:	c7 44 24 0c fa 00 00 	movl   $0xfa,0xc(%esp)
  100ebc:	00 
  100ebd:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100ec4:	ff 
  100ec5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100ecc:	00 
  100ecd:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  100ed4:	e8 3b 00 00 00       	call   100f14 <gdt_set_gate>
  100ed9:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100ee0:	00 
  100ee1:	c7 44 24 0c f2 00 00 	movl   $0xf2,0xc(%esp)
  100ee8:	00 
  100ee9:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100ef0:	ff 
  100ef1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100ef8:	00 
  100ef9:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  100f00:	e8 0f 00 00 00       	call   100f14 <gdt_set_gate>
  100f05:	b8 28 c0 10 00       	mov    $0x10c028,%eax
  100f0a:	89 04 24             	mov    %eax,(%esp)
  100f0d:	e8 ee f0 ff ff       	call   100000 <gdt_flush>
  100f12:	c9                   	leave  
  100f13:	c3                   	ret    

00100f14 <gdt_set_gate>:
  100f14:	55                   	push   %ebp
  100f15:	89 e5                	mov    %esp,%ebp
  100f17:	83 ec 08             	sub    $0x8,%esp
  100f1a:	8b 55 14             	mov    0x14(%ebp),%edx
  100f1d:	8b 45 18             	mov    0x18(%ebp),%eax
  100f20:	88 55 fc             	mov    %dl,-0x4(%ebp)
  100f23:	88 45 f8             	mov    %al,-0x8(%ebp)
  100f26:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f29:	89 c2                	mov    %eax,%edx
  100f2b:	8b 45 08             	mov    0x8(%ebp),%eax
  100f2e:	66 89 14 c5 02 c0 10 	mov    %dx,0x10c002(,%eax,8)
  100f35:	00 
  100f36:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f39:	c1 e8 10             	shr    $0x10,%eax
  100f3c:	89 c2                	mov    %eax,%edx
  100f3e:	8b 45 08             	mov    0x8(%ebp),%eax
  100f41:	88 14 c5 04 c0 10 00 	mov    %dl,0x10c004(,%eax,8)
  100f48:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f4b:	c1 e8 18             	shr    $0x18,%eax
  100f4e:	89 c2                	mov    %eax,%edx
  100f50:	8b 45 08             	mov    0x8(%ebp),%eax
  100f53:	88 14 c5 07 c0 10 00 	mov    %dl,0x10c007(,%eax,8)
  100f5a:	8b 45 10             	mov    0x10(%ebp),%eax
  100f5d:	89 c2                	mov    %eax,%edx
  100f5f:	8b 45 08             	mov    0x8(%ebp),%eax
  100f62:	66 89 14 c5 00 c0 10 	mov    %dx,0x10c000(,%eax,8)
  100f69:	00 
  100f6a:	8b 45 10             	mov    0x10(%ebp),%eax
  100f6d:	c1 e8 10             	shr    $0x10,%eax
  100f70:	89 c2                	mov    %eax,%edx
  100f72:	83 e2 0f             	and    $0xf,%edx
  100f75:	8b 45 08             	mov    0x8(%ebp),%eax
  100f78:	88 14 c5 06 c0 10 00 	mov    %dl,0x10c006(,%eax,8)
  100f7f:	8b 45 08             	mov    0x8(%ebp),%eax
  100f82:	0f b6 04 c5 06 c0 10 	movzbl 0x10c006(,%eax,8),%eax
  100f89:	00 
  100f8a:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
  100f8e:	83 e2 f0             	and    $0xfffffff0,%edx
  100f91:	09 d0                	or     %edx,%eax
  100f93:	89 c2                	mov    %eax,%edx
  100f95:	8b 45 08             	mov    0x8(%ebp),%eax
  100f98:	88 14 c5 06 c0 10 00 	mov    %dl,0x10c006(,%eax,8)
  100f9f:	8b 45 08             	mov    0x8(%ebp),%eax
  100fa2:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  100fa6:	88 14 c5 05 c0 10 00 	mov    %dl,0x10c005(,%eax,8)
  100fad:	c9                   	leave  
  100fae:	c3                   	ret    
  100faf:	90                   	nop

00100fb0 <timer_callback>:
  100fb0:	55                   	push   %ebp
  100fb1:	89 e5                	mov    %esp,%ebp
  100fb3:	83 ec 18             	sub    $0x18,%esp
  100fb6:	a1 1c b0 10 00       	mov    0x10b01c,%eax
  100fbb:	89 c2                	mov    %eax,%edx
  100fbd:	83 c0 01             	add    $0x1,%eax
  100fc0:	a3 1c b0 10 00       	mov    %eax,0x10b01c
  100fc5:	89 54 24 04          	mov    %edx,0x4(%esp)
  100fc9:	c7 04 24 43 25 10 00 	movl   $0x102543,(%esp)
  100fd0:	e8 32 f4 ff ff       	call   100407 <printk>
  100fd5:	c9                   	leave  
  100fd6:	c3                   	ret    

00100fd7 <init_timer>:
  100fd7:	55                   	push   %ebp
  100fd8:	89 e5                	mov    %esp,%ebp
  100fda:	83 ec 28             	sub    $0x28,%esp
  100fdd:	c7 44 24 04 b0 0f 10 	movl   $0x100fb0,0x4(%esp)
  100fe4:	00 
  100fe5:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
  100fec:	e8 81 09 00 00       	call   101972 <register_interrupt_handler>
  100ff1:	b8 dc 34 12 00       	mov    $0x1234dc,%eax
  100ff6:	ba 00 00 00 00       	mov    $0x0,%edx
  100ffb:	f7 75 08             	divl   0x8(%ebp)
  100ffe:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101001:	c7 44 24 04 36 00 00 	movl   $0x36,0x4(%esp)
  101008:	00 
  101009:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
  101010:	e8 bb f7 ff ff       	call   1007d0 <outb>
  101015:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101018:	88 45 f3             	mov    %al,-0xd(%ebp)
  10101b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10101e:	c1 e8 08             	shr    $0x8,%eax
  101021:	88 45 f2             	mov    %al,-0xe(%ebp)
  101024:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  101028:	89 44 24 04          	mov    %eax,0x4(%esp)
  10102c:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
  101033:	e8 98 f7 ff ff       	call   1007d0 <outb>
  101038:	0f b6 45 f2          	movzbl -0xe(%ebp),%eax
  10103c:	89 44 24 04          	mov    %eax,0x4(%esp)
  101040:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
  101047:	e8 84 f7 ff ff       	call   1007d0 <outb>
  10104c:	c9                   	leave  
  10104d:	c3                   	ret    
  10104e:	66 90                	xchg   %ax,%ax

00101050 <entry>:
  101050:	55                   	push   %ebp
  101051:	89 e5                	mov    %esp,%ebp
  101053:	83 ec 28             	sub    $0x28,%esp
  101056:	e8 71 fa ff ff       	call   100acc <init_debug>
  10105b:	e8 b0 fd ff ff       	call   100e10 <init_gdt>
  101060:	e8 33 00 00 00       	call   101098 <init_idt>
  101065:	c7 45 f4 4c 25 10 00 	movl   $0x10254c,-0xc(%ebp)
  10106c:	e8 d7 f5 ff ff       	call   100648 <screen_clear>
  101071:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101074:	89 44 24 04          	mov    %eax,0x4(%esp)
  101078:	c7 04 24 59 25 10 00 	movl   $0x102559,(%esp)
  10107f:	e8 83 f3 ff ff       	call   100407 <printk>
  101084:	c7 04 24 5d 25 10 00 	movl   $0x10255d,(%esp)
  10108b:	e8 35 fb ff ff       	call   100bc5 <panic>
  101090:	b8 00 00 00 00       	mov    $0x0,%eax
  101095:	c9                   	leave  
  101096:	c3                   	ret    
  101097:	90                   	nop

00101098 <init_idt>:
  101098:	55                   	push   %ebp
  101099:	89 e5                	mov    %esp,%ebp
  10109b:	83 ec 18             	sub    $0x18,%esp
  10109e:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
  1010a5:	00 
  1010a6:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
  1010ad:	e8 1e f7 ff ff       	call   1007d0 <outb>
  1010b2:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
  1010b9:	00 
  1010ba:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
  1010c1:	e8 0a f7 ff ff       	call   1007d0 <outb>
  1010c6:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  1010cd:	00 
  1010ce:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
  1010d5:	e8 f6 f6 ff ff       	call   1007d0 <outb>
  1010da:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
  1010e1:	00 
  1010e2:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
  1010e9:	e8 e2 f6 ff ff       	call   1007d0 <outb>
  1010ee:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
  1010f5:	00 
  1010f6:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
  1010fd:	e8 ce f6 ff ff       	call   1007d0 <outb>
  101102:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  101109:	00 
  10110a:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
  101111:	e8 ba f6 ff ff       	call   1007d0 <outb>
  101116:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  10111d:	00 
  10111e:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
  101125:	e8 a6 f6 ff ff       	call   1007d0 <outb>
  10112a:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  101131:	00 
  101132:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
  101139:	e8 92 f6 ff ff       	call   1007d0 <outb>
  10113e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101145:	00 
  101146:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
  10114d:	e8 7e f6 ff ff       	call   1007d0 <outb>
  101152:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  101159:	00 
  10115a:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
  101161:	e8 6a f6 ff ff       	call   1007d0 <outb>
  101166:	b8 8a 01 10 00       	mov    $0x10018a,%eax
  10116b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101172:	00 
  101173:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10117a:	00 
  10117b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10117f:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
  101186:	e8 3a 07 00 00       	call   1018c5 <idt_set_gate>
  10118b:	b8 91 01 10 00       	mov    $0x100191,%eax
  101190:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101197:	00 
  101198:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10119f:	00 
  1011a0:	89 44 24 04          	mov    %eax,0x4(%esp)
  1011a4:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
  1011ab:	e8 15 07 00 00       	call   1018c5 <idt_set_gate>
  1011b0:	b8 98 01 10 00       	mov    $0x100198,%eax
  1011b5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1011bc:	00 
  1011bd:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1011c4:	00 
  1011c5:	89 44 24 04          	mov    %eax,0x4(%esp)
  1011c9:	c7 04 24 22 00 00 00 	movl   $0x22,(%esp)
  1011d0:	e8 f0 06 00 00       	call   1018c5 <idt_set_gate>
  1011d5:	b8 9f 01 10 00       	mov    $0x10019f,%eax
  1011da:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1011e1:	00 
  1011e2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1011e9:	00 
  1011ea:	89 44 24 04          	mov    %eax,0x4(%esp)
  1011ee:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
  1011f5:	e8 cb 06 00 00       	call   1018c5 <idt_set_gate>
  1011fa:	b8 a6 01 10 00       	mov    $0x1001a6,%eax
  1011ff:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101206:	00 
  101207:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10120e:	00 
  10120f:	89 44 24 04          	mov    %eax,0x4(%esp)
  101213:	c7 04 24 24 00 00 00 	movl   $0x24,(%esp)
  10121a:	e8 a6 06 00 00       	call   1018c5 <idt_set_gate>
  10121f:	b8 ad 01 10 00       	mov    $0x1001ad,%eax
  101224:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10122b:	00 
  10122c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101233:	00 
  101234:	89 44 24 04          	mov    %eax,0x4(%esp)
  101238:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
  10123f:	e8 81 06 00 00       	call   1018c5 <idt_set_gate>
  101244:	b8 b4 01 10 00       	mov    $0x1001b4,%eax
  101249:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101250:	00 
  101251:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101258:	00 
  101259:	89 44 24 04          	mov    %eax,0x4(%esp)
  10125d:	c7 04 24 26 00 00 00 	movl   $0x26,(%esp)
  101264:	e8 5c 06 00 00       	call   1018c5 <idt_set_gate>
  101269:	b8 bb 01 10 00       	mov    $0x1001bb,%eax
  10126e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101275:	00 
  101276:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10127d:	00 
  10127e:	89 44 24 04          	mov    %eax,0x4(%esp)
  101282:	c7 04 24 27 00 00 00 	movl   $0x27,(%esp)
  101289:	e8 37 06 00 00       	call   1018c5 <idt_set_gate>
  10128e:	b8 c2 01 10 00       	mov    $0x1001c2,%eax
  101293:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10129a:	00 
  10129b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1012a2:	00 
  1012a3:	89 44 24 04          	mov    %eax,0x4(%esp)
  1012a7:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
  1012ae:	e8 12 06 00 00       	call   1018c5 <idt_set_gate>
  1012b3:	b8 c9 01 10 00       	mov    $0x1001c9,%eax
  1012b8:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1012bf:	00 
  1012c0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1012c7:	00 
  1012c8:	89 44 24 04          	mov    %eax,0x4(%esp)
  1012cc:	c7 04 24 29 00 00 00 	movl   $0x29,(%esp)
  1012d3:	e8 ed 05 00 00       	call   1018c5 <idt_set_gate>
  1012d8:	b8 d0 01 10 00       	mov    $0x1001d0,%eax
  1012dd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1012e4:	00 
  1012e5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1012ec:	00 
  1012ed:	89 44 24 04          	mov    %eax,0x4(%esp)
  1012f1:	c7 04 24 2a 00 00 00 	movl   $0x2a,(%esp)
  1012f8:	e8 c8 05 00 00       	call   1018c5 <idt_set_gate>
  1012fd:	b8 d7 01 10 00       	mov    $0x1001d7,%eax
  101302:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101309:	00 
  10130a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101311:	00 
  101312:	89 44 24 04          	mov    %eax,0x4(%esp)
  101316:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
  10131d:	e8 a3 05 00 00       	call   1018c5 <idt_set_gate>
  101322:	b8 de 01 10 00       	mov    $0x1001de,%eax
  101327:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10132e:	00 
  10132f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101336:	00 
  101337:	89 44 24 04          	mov    %eax,0x4(%esp)
  10133b:	c7 04 24 2c 00 00 00 	movl   $0x2c,(%esp)
  101342:	e8 7e 05 00 00       	call   1018c5 <idt_set_gate>
  101347:	b8 e5 01 10 00       	mov    $0x1001e5,%eax
  10134c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101353:	00 
  101354:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10135b:	00 
  10135c:	89 44 24 04          	mov    %eax,0x4(%esp)
  101360:	c7 04 24 2d 00 00 00 	movl   $0x2d,(%esp)
  101367:	e8 59 05 00 00       	call   1018c5 <idt_set_gate>
  10136c:	b8 ec 01 10 00       	mov    $0x1001ec,%eax
  101371:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101378:	00 
  101379:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101380:	00 
  101381:	89 44 24 04          	mov    %eax,0x4(%esp)
  101385:	c7 04 24 2e 00 00 00 	movl   $0x2e,(%esp)
  10138c:	e8 34 05 00 00       	call   1018c5 <idt_set_gate>
  101391:	b8 f3 01 10 00       	mov    $0x1001f3,%eax
  101396:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10139d:	00 
  10139e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1013a5:	00 
  1013a6:	89 44 24 04          	mov    %eax,0x4(%esp)
  1013aa:	c7 04 24 2f 00 00 00 	movl   $0x2f,(%esp)
  1013b1:	e8 0f 05 00 00       	call   1018c5 <idt_set_gate>
  1013b6:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
  1013bd:	00 
  1013be:	c7 04 24 60 c8 10 00 	movl   $0x10c860,(%esp)
  1013c5:	e8 57 f5 ff ff       	call   100921 <bzer>
  1013ca:	66 c7 05 40 c0 10 00 	movw   $0x7ff,0x10c040
  1013d1:	ff 07 
  1013d3:	b8 60 c0 10 00       	mov    $0x10c060,%eax
  1013d8:	a3 42 c0 10 00       	mov    %eax,0x10c042
  1013dd:	c7 44 24 04 00 08 00 	movl   $0x800,0x4(%esp)
  1013e4:	00 
  1013e5:	c7 04 24 60 c0 10 00 	movl   $0x10c060,(%esp)
  1013ec:	e8 30 f5 ff ff       	call   100921 <bzer>
  1013f1:	b8 50 00 10 00       	mov    $0x100050,%eax
  1013f6:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1013fd:	00 
  1013fe:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101405:	00 
  101406:	89 44 24 04          	mov    %eax,0x4(%esp)
  10140a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  101411:	e8 af 04 00 00       	call   1018c5 <idt_set_gate>
  101416:	b8 5a 00 10 00       	mov    $0x10005a,%eax
  10141b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101422:	00 
  101423:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10142a:	00 
  10142b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10142f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  101436:	e8 8a 04 00 00       	call   1018c5 <idt_set_gate>
  10143b:	b8 64 00 10 00       	mov    $0x100064,%eax
  101440:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101447:	00 
  101448:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10144f:	00 
  101450:	89 44 24 04          	mov    %eax,0x4(%esp)
  101454:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  10145b:	e8 65 04 00 00       	call   1018c5 <idt_set_gate>
  101460:	b8 6e 00 10 00       	mov    $0x10006e,%eax
  101465:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10146c:	00 
  10146d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101474:	00 
  101475:	89 44 24 04          	mov    %eax,0x4(%esp)
  101479:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  101480:	e8 40 04 00 00       	call   1018c5 <idt_set_gate>
  101485:	b8 78 00 10 00       	mov    $0x100078,%eax
  10148a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101491:	00 
  101492:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101499:	00 
  10149a:	89 44 24 04          	mov    %eax,0x4(%esp)
  10149e:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  1014a5:	e8 1b 04 00 00       	call   1018c5 <idt_set_gate>
  1014aa:	b8 82 00 10 00       	mov    $0x100082,%eax
  1014af:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1014b6:	00 
  1014b7:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1014be:	00 
  1014bf:	89 44 24 04          	mov    %eax,0x4(%esp)
  1014c3:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  1014ca:	e8 f6 03 00 00       	call   1018c5 <idt_set_gate>
  1014cf:	b8 8c 00 10 00       	mov    $0x10008c,%eax
  1014d4:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1014db:	00 
  1014dc:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1014e3:	00 
  1014e4:	89 44 24 04          	mov    %eax,0x4(%esp)
  1014e8:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
  1014ef:	e8 d1 03 00 00       	call   1018c5 <idt_set_gate>
  1014f4:	b8 96 00 10 00       	mov    $0x100096,%eax
  1014f9:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101500:	00 
  101501:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101508:	00 
  101509:	89 44 24 04          	mov    %eax,0x4(%esp)
  10150d:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
  101514:	e8 ac 03 00 00       	call   1018c5 <idt_set_gate>
  101519:	b8 a0 00 10 00       	mov    $0x1000a0,%eax
  10151e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101525:	00 
  101526:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10152d:	00 
  10152e:	89 44 24 04          	mov    %eax,0x4(%esp)
  101532:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  101539:	e8 87 03 00 00       	call   1018c5 <idt_set_gate>
  10153e:	b8 a8 00 10 00       	mov    $0x1000a8,%eax
  101543:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10154a:	00 
  10154b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101552:	00 
  101553:	89 44 24 04          	mov    %eax,0x4(%esp)
  101557:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  10155e:	e8 62 03 00 00       	call   1018c5 <idt_set_gate>
  101563:	b8 b2 00 10 00       	mov    $0x1000b2,%eax
  101568:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10156f:	00 
  101570:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101577:	00 
  101578:	89 44 24 04          	mov    %eax,0x4(%esp)
  10157c:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
  101583:	e8 3d 03 00 00       	call   1018c5 <idt_set_gate>
  101588:	b8 ba 00 10 00       	mov    $0x1000ba,%eax
  10158d:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101594:	00 
  101595:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10159c:	00 
  10159d:	89 44 24 04          	mov    %eax,0x4(%esp)
  1015a1:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  1015a8:	e8 18 03 00 00       	call   1018c5 <idt_set_gate>
  1015ad:	b8 c2 00 10 00       	mov    $0x1000c2,%eax
  1015b2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1015b9:	00 
  1015ba:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1015c1:	00 
  1015c2:	89 44 24 04          	mov    %eax,0x4(%esp)
  1015c6:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  1015cd:	e8 f3 02 00 00       	call   1018c5 <idt_set_gate>
  1015d2:	b8 ca 00 10 00       	mov    $0x1000ca,%eax
  1015d7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1015de:	00 
  1015df:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1015e6:	00 
  1015e7:	89 44 24 04          	mov    %eax,0x4(%esp)
  1015eb:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
  1015f2:	e8 ce 02 00 00       	call   1018c5 <idt_set_gate>
  1015f7:	b8 d2 00 10 00       	mov    $0x1000d2,%eax
  1015fc:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101603:	00 
  101604:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10160b:	00 
  10160c:	89 44 24 04          	mov    %eax,0x4(%esp)
  101610:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
  101617:	e8 a9 02 00 00       	call   1018c5 <idt_set_gate>
  10161c:	b8 d7 00 10 00       	mov    $0x1000d7,%eax
  101621:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101628:	00 
  101629:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101630:	00 
  101631:	89 44 24 04          	mov    %eax,0x4(%esp)
  101635:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
  10163c:	e8 84 02 00 00       	call   1018c5 <idt_set_gate>
  101641:	b8 de 00 10 00       	mov    $0x1000de,%eax
  101646:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10164d:	00 
  10164e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101655:	00 
  101656:	89 44 24 04          	mov    %eax,0x4(%esp)
  10165a:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  101661:	e8 5f 02 00 00       	call   1018c5 <idt_set_gate>
  101666:	b8 e5 00 10 00       	mov    $0x1000e5,%eax
  10166b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101672:	00 
  101673:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10167a:	00 
  10167b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10167f:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
  101686:	e8 3a 02 00 00       	call   1018c5 <idt_set_gate>
  10168b:	b8 ea 00 10 00       	mov    $0x1000ea,%eax
  101690:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101697:	00 
  101698:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10169f:	00 
  1016a0:	89 44 24 04          	mov    %eax,0x4(%esp)
  1016a4:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
  1016ab:	e8 15 02 00 00       	call   1018c5 <idt_set_gate>
  1016b0:	b8 f1 00 10 00       	mov    $0x1000f1,%eax
  1016b5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1016bc:	00 
  1016bd:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1016c4:	00 
  1016c5:	89 44 24 04          	mov    %eax,0x4(%esp)
  1016c9:	c7 04 24 13 00 00 00 	movl   $0x13,(%esp)
  1016d0:	e8 f0 01 00 00       	call   1018c5 <idt_set_gate>
  1016d5:	b8 f8 00 10 00       	mov    $0x1000f8,%eax
  1016da:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1016e1:	00 
  1016e2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1016e9:	00 
  1016ea:	89 44 24 04          	mov    %eax,0x4(%esp)
  1016ee:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
  1016f5:	e8 cb 01 00 00       	call   1018c5 <idt_set_gate>
  1016fa:	b8 ff 00 10 00       	mov    $0x1000ff,%eax
  1016ff:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101706:	00 
  101707:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10170e:	00 
  10170f:	89 44 24 04          	mov    %eax,0x4(%esp)
  101713:	c7 04 24 15 00 00 00 	movl   $0x15,(%esp)
  10171a:	e8 a6 01 00 00       	call   1018c5 <idt_set_gate>
  10171f:	b8 06 01 10 00       	mov    $0x100106,%eax
  101724:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10172b:	00 
  10172c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101733:	00 
  101734:	89 44 24 04          	mov    %eax,0x4(%esp)
  101738:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
  10173f:	e8 81 01 00 00       	call   1018c5 <idt_set_gate>
  101744:	b8 0d 01 10 00       	mov    $0x10010d,%eax
  101749:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101750:	00 
  101751:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101758:	00 
  101759:	89 44 24 04          	mov    %eax,0x4(%esp)
  10175d:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
  101764:	e8 5c 01 00 00       	call   1018c5 <idt_set_gate>
  101769:	b8 14 01 10 00       	mov    $0x100114,%eax
  10176e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101775:	00 
  101776:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10177d:	00 
  10177e:	89 44 24 04          	mov    %eax,0x4(%esp)
  101782:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  101789:	e8 37 01 00 00       	call   1018c5 <idt_set_gate>
  10178e:	b8 1b 01 10 00       	mov    $0x10011b,%eax
  101793:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10179a:	00 
  10179b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1017a2:	00 
  1017a3:	89 44 24 04          	mov    %eax,0x4(%esp)
  1017a7:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
  1017ae:	e8 12 01 00 00       	call   1018c5 <idt_set_gate>
  1017b3:	b8 22 01 10 00       	mov    $0x100122,%eax
  1017b8:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1017bf:	00 
  1017c0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1017c7:	00 
  1017c8:	89 44 24 04          	mov    %eax,0x4(%esp)
  1017cc:	c7 04 24 1a 00 00 00 	movl   $0x1a,(%esp)
  1017d3:	e8 ed 00 00 00       	call   1018c5 <idt_set_gate>
  1017d8:	b8 29 01 10 00       	mov    $0x100129,%eax
  1017dd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  1017e4:	00 
  1017e5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1017ec:	00 
  1017ed:	89 44 24 04          	mov    %eax,0x4(%esp)
  1017f1:	c7 04 24 1b 00 00 00 	movl   $0x1b,(%esp)
  1017f8:	e8 c8 00 00 00       	call   1018c5 <idt_set_gate>
  1017fd:	b8 30 01 10 00       	mov    $0x100130,%eax
  101802:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101809:	00 
  10180a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101811:	00 
  101812:	89 44 24 04          	mov    %eax,0x4(%esp)
  101816:	c7 04 24 1c 00 00 00 	movl   $0x1c,(%esp)
  10181d:	e8 a3 00 00 00       	call   1018c5 <idt_set_gate>
  101822:	b8 37 01 10 00       	mov    $0x100137,%eax
  101827:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10182e:	00 
  10182f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101836:	00 
  101837:	89 44 24 04          	mov    %eax,0x4(%esp)
  10183b:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
  101842:	e8 7e 00 00 00       	call   1018c5 <idt_set_gate>
  101847:	b8 3e 01 10 00       	mov    $0x10013e,%eax
  10184c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101853:	00 
  101854:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  10185b:	00 
  10185c:	89 44 24 04          	mov    %eax,0x4(%esp)
  101860:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
  101867:	e8 59 00 00 00       	call   1018c5 <idt_set_gate>
  10186c:	b8 45 01 10 00       	mov    $0x100145,%eax
  101871:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  101878:	00 
  101879:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  101880:	00 
  101881:	89 44 24 04          	mov    %eax,0x4(%esp)
  101885:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
  10188c:	e8 34 00 00 00       	call   1018c5 <idt_set_gate>
  101891:	b8 4c 01 10 00       	mov    $0x10014c,%eax
  101896:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
  10189d:	00 
  10189e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
  1018a5:	00 
  1018a6:	89 44 24 04          	mov    %eax,0x4(%esp)
  1018aa:	c7 04 24 ff 00 00 00 	movl   $0xff,(%esp)
  1018b1:	e8 0f 00 00 00       	call   1018c5 <idt_set_gate>
  1018b6:	b8 40 c0 10 00       	mov    $0x10c040,%eax
  1018bb:	89 04 24             	mov    %eax,(%esp)
  1018be:	e8 bf e8 ff ff       	call   100182 <idt_flush>
  1018c3:	c9                   	leave  
  1018c4:	c3                   	ret    

001018c5 <idt_set_gate>:
  1018c5:	55                   	push   %ebp
  1018c6:	89 e5                	mov    %esp,%ebp
  1018c8:	83 ec 0c             	sub    $0xc,%esp
  1018cb:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1018ce:	8b 55 10             	mov    0x10(%ebp),%edx
  1018d1:	8b 45 14             	mov    0x14(%ebp),%eax
  1018d4:	88 4d fc             	mov    %cl,-0x4(%ebp)
  1018d7:	66 89 55 f8          	mov    %dx,-0x8(%ebp)
  1018db:	88 45 f4             	mov    %al,-0xc(%ebp)
  1018de:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1018e2:	8b 55 0c             	mov    0xc(%ebp),%edx
  1018e5:	66 89 14 c5 60 c0 10 	mov    %dx,0x10c060(,%eax,8)
  1018ec:	00 
  1018ed:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  1018f1:	8b 55 0c             	mov    0xc(%ebp),%edx
  1018f4:	c1 ea 10             	shr    $0x10,%edx
  1018f7:	66 89 14 c5 66 c0 10 	mov    %dx,0x10c066(,%eax,8)
  1018fe:	00 
  1018ff:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  101903:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
  101907:	66 89 14 c5 62 c0 10 	mov    %dx,0x10c062(,%eax,8)
  10190e:	00 
  10190f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  101913:	c6 04 c5 64 c0 10 00 	movb   $0x0,0x10c064(,%eax,8)
  10191a:	00 
  10191b:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  10191f:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
  101923:	88 14 c5 65 c0 10 00 	mov    %dl,0x10c065(,%eax,8)
  10192a:	c9                   	leave  
  10192b:	c3                   	ret    

0010192c <isr_handler>:
  10192c:	55                   	push   %ebp
  10192d:	89 e5                	mov    %esp,%ebp
  10192f:	83 ec 18             	sub    $0x18,%esp
  101932:	8b 45 08             	mov    0x8(%ebp),%eax
  101935:	8b 40 24             	mov    0x24(%eax),%eax
  101938:	8b 04 85 60 c8 10 00 	mov    0x10c860(,%eax,4),%eax
  10193f:	85 c0                	test   %eax,%eax
  101941:	74 17                	je     10195a <isr_handler+0x2e>
  101943:	8b 45 08             	mov    0x8(%ebp),%eax
  101946:	8b 40 24             	mov    0x24(%eax),%eax
  101949:	8b 04 85 60 c8 10 00 	mov    0x10c860(,%eax,4),%eax
  101950:	8b 55 08             	mov    0x8(%ebp),%edx
  101953:	89 14 24             	mov    %edx,(%esp)
  101956:	ff d0                	call   *%eax
  101958:	eb 16                	jmp    101970 <isr_handler+0x44>
  10195a:	8b 45 08             	mov    0x8(%ebp),%eax
  10195d:	8b 40 24             	mov    0x24(%eax),%eax
  101960:	89 44 24 04          	mov    %eax,0x4(%esp)
  101964:	c7 04 24 62 25 10 00 	movl   $0x102562,(%esp)
  10196b:	e8 97 ea ff ff       	call   100407 <printk>
  101970:	c9                   	leave  
  101971:	c3                   	ret    

00101972 <register_interrupt_handler>:
  101972:	55                   	push   %ebp
  101973:	89 e5                	mov    %esp,%ebp
  101975:	83 ec 04             	sub    $0x4,%esp
  101978:	8b 45 08             	mov    0x8(%ebp),%eax
  10197b:	88 45 fc             	mov    %al,-0x4(%ebp)
  10197e:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  101982:	8b 55 0c             	mov    0xc(%ebp),%edx
  101985:	89 14 85 60 c8 10 00 	mov    %edx,0x10c860(,%eax,4)
  10198c:	c9                   	leave  
  10198d:	c3                   	ret    

0010198e <irq_handler>:
  10198e:	55                   	push   %ebp
  10198f:	89 e5                	mov    %esp,%ebp
  101991:	83 ec 18             	sub    $0x18,%esp
  101994:	8b 45 08             	mov    0x8(%ebp),%eax
  101997:	8b 40 24             	mov    0x24(%eax),%eax
  10199a:	83 f8 27             	cmp    $0x27,%eax
  10199d:	76 14                	jbe    1019b3 <irq_handler+0x25>
  10199f:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  1019a6:	00 
  1019a7:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
  1019ae:	e8 1d ee ff ff       	call   1007d0 <outb>
  1019b3:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  1019ba:	00 
  1019bb:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
  1019c2:	e8 09 ee ff ff       	call   1007d0 <outb>
  1019c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1019ca:	8b 40 24             	mov    0x24(%eax),%eax
  1019cd:	8b 04 85 60 c8 10 00 	mov    0x10c860(,%eax,4),%eax
  1019d4:	85 c0                	test   %eax,%eax
  1019d6:	74 15                	je     1019ed <irq_handler+0x5f>
  1019d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1019db:	8b 40 24             	mov    0x24(%eax),%eax
  1019de:	8b 04 85 60 c8 10 00 	mov    0x10c860(,%eax,4),%eax
  1019e5:	8b 55 08             	mov    0x8(%ebp),%edx
  1019e8:	89 14 24             	mov    %edx,(%esp)
  1019eb:	ff d0                	call   *%eax
  1019ed:	c9                   	leave  
  1019ee:	c3                   	ret    
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
