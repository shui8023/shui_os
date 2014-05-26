
shui：     文件格式 elf32-i386


Disassembly of section .text:

00100000 <start-0xc>:
  100000:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  100006:	00 00                	add    %al,(%eax)
  100008:	fb                   	sti    
  100009:	4f                   	dec    %edi
  10000a:	52                   	push   %edx
  10000b:	e4 fa                	in     $0xfa,%al

0010000c <start>:
  10000c:	fa                   	cli    
  10000d:	bc 03 80 00 00       	mov    $0x8003,%esp
  100012:	bd 00 00 00 00       	mov    $0x0,%ebp
  100017:	81 e4 f0 ff ff 0f    	and    $0xffffff0,%esp
  10001d:	89 1d 00 a0 10 00    	mov    %ebx,0x10a000
  100023:	e8 cc 0b 00 00       	call   100bf4 <entry>

00100028 <stop>:
  100028:	f4                   	hlt    
  100029:	eb fd                	jmp    100028 <stop>
  10002b:	66 90                	xchg   %ax,%ax
  10002d:	66 90                	xchg   %ax,%ax
  10002f:	90                   	nop

00100030 <gdt_flush>:
  100030:	8b 44 24 04          	mov    0x4(%esp),%eax
  100034:	0f 01 10             	lgdtl  (%eax)
  100037:	66 b8 10 00          	mov    $0x10,%ax
  10003b:	8e d8                	mov    %eax,%ds
  10003d:	8e c0                	mov    %eax,%es
  10003f:	8e e0                	mov    %eax,%fs
  100041:	8e e8                	mov    %eax,%gs
  100043:	8e d0                	mov    %eax,%ss
  100045:	ea 4c 00 10 00 08 00 	ljmp   $0x8,$0x10004c

0010004c <gdt_flush.flush>:
  10004c:	c3                   	ret    
  10004d:	66 90                	xchg   %ax,%ax
  10004f:	90                   	nop

00100050 <elf_form_multiboot>:
  100050:	55                   	push   %ebp
  100051:	89 e5                	mov    %esp,%ebp
  100053:	83 ec 38             	sub    $0x38,%esp
  100056:	8b 45 0c             	mov    0xc(%ebp),%eax
  100059:	8b 40 24             	mov    0x24(%eax),%eax
  10005c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10005f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100062:	8b 50 28             	mov    0x28(%eax),%edx
  100065:	89 d0                	mov    %edx,%eax
  100067:	c1 e0 02             	shl    $0x2,%eax
  10006a:	01 d0                	add    %edx,%eax
  10006c:	c1 e0 03             	shl    $0x3,%eax
  10006f:	89 c2                	mov    %eax,%edx
  100071:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100074:	01 d0                	add    %edx,%eax
  100076:	8b 40 0c             	mov    0xc(%eax),%eax
  100079:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10007c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100083:	eb 6d                	jmp    1000f2 <elf_form_multiboot+0xa2>
  100085:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100088:	89 d0                	mov    %edx,%eax
  10008a:	c1 e0 02             	shl    $0x2,%eax
  10008d:	01 d0                	add    %edx,%eax
  10008f:	c1 e0 03             	shl    $0x3,%eax
  100092:	89 c2                	mov    %eax,%edx
  100094:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100097:	01 d0                	add    %edx,%eax
  100099:	8b 10                	mov    (%eax),%edx
  10009b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10009e:	01 d0                	add    %edx,%eax
  1000a0:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1000a3:	c7 44 24 04 a4 13 10 	movl   $0x1013a4,0x4(%esp)
  1000aa:	00 
  1000ab:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1000ae:	89 04 24             	mov    %eax,(%esp)
  1000b1:	e8 61 02 00 00       	call   100317 <strcmp>
  1000b6:	85 c0                	test   %eax,%eax
  1000b8:	75 34                	jne    1000ee <elf_form_multiboot+0x9e>
  1000ba:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1000bd:	89 d0                	mov    %edx,%eax
  1000bf:	c1 e0 02             	shl    $0x2,%eax
  1000c2:	01 d0                	add    %edx,%eax
  1000c4:	c1 e0 03             	shl    $0x3,%eax
  1000c7:	89 c2                	mov    %eax,%edx
  1000c9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1000cc:	01 d0                	add    %edx,%eax
  1000ce:	8b 40 0c             	mov    0xc(%eax),%eax
  1000d1:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1000d4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1000d7:	89 d0                	mov    %edx,%eax
  1000d9:	c1 e0 02             	shl    $0x2,%eax
  1000dc:	01 d0                	add    %edx,%eax
  1000de:	c1 e0 03             	shl    $0x3,%eax
  1000e1:	89 c2                	mov    %eax,%edx
  1000e3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1000e6:	01 d0                	add    %edx,%eax
  1000e8:	8b 40 14             	mov    0x14(%eax),%eax
  1000eb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1000ee:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000f2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1000f5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000f8:	8b 40 1c             	mov    0x1c(%eax),%eax
  1000fb:	39 c2                	cmp    %eax,%edx
  1000fd:	72 86                	jb     100085 <elf_form_multiboot+0x35>
  1000ff:	8b 45 08             	mov    0x8(%ebp),%eax
  100102:	8b 55 d8             	mov    -0x28(%ebp),%edx
  100105:	89 10                	mov    %edx,(%eax)
  100107:	8b 55 dc             	mov    -0x24(%ebp),%edx
  10010a:	89 50 04             	mov    %edx,0x4(%eax)
  10010d:	8b 55 e0             	mov    -0x20(%ebp),%edx
  100110:	89 50 08             	mov    %edx,0x8(%eax)
  100113:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100116:	89 50 0c             	mov    %edx,0xc(%eax)
  100119:	8b 45 08             	mov    0x8(%ebp),%eax
  10011c:	c9                   	leave  
  10011d:	c2 04 00             	ret    $0x4

00100120 <elf_look_symbol>:
  100120:	55                   	push   %ebp
  100121:	89 e5                	mov    %esp,%ebp
  100123:	83 ec 10             	sub    $0x10,%esp
  100126:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10012d:	eb 78                	jmp    1001a7 <elf_look_symbol+0x87>
  10012f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100132:	8b 00                	mov    (%eax),%eax
  100134:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100137:	c1 e2 04             	shl    $0x4,%edx
  10013a:	01 d0                	add    %edx,%eax
  10013c:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
  100140:	0f b6 c0             	movzbl %al,%eax
  100143:	83 e0 0f             	and    $0xf,%eax
  100146:	83 f8 02             	cmp    $0x2,%eax
  100149:	75 57                	jne    1001a2 <elf_look_symbol+0x82>
  10014b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10014e:	8b 00                	mov    (%eax),%eax
  100150:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100153:	c1 e2 04             	shl    $0x4,%edx
  100156:	01 d0                	add    %edx,%eax
  100158:	8b 40 04             	mov    0x4(%eax),%eax
  10015b:	3b 45 08             	cmp    0x8(%ebp),%eax
  10015e:	77 43                	ja     1001a3 <elf_look_symbol+0x83>
  100160:	8b 45 0c             	mov    0xc(%ebp),%eax
  100163:	8b 00                	mov    (%eax),%eax
  100165:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100168:	c1 e2 04             	shl    $0x4,%edx
  10016b:	01 d0                	add    %edx,%eax
  10016d:	8b 50 04             	mov    0x4(%eax),%edx
  100170:	8b 45 0c             	mov    0xc(%ebp),%eax
  100173:	8b 00                	mov    (%eax),%eax
  100175:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100178:	c1 e1 04             	shl    $0x4,%ecx
  10017b:	01 c8                	add    %ecx,%eax
  10017d:	8b 40 08             	mov    0x8(%eax),%eax
  100180:	01 d0                	add    %edx,%eax
  100182:	3b 45 08             	cmp    0x8(%ebp),%eax
  100185:	76 1c                	jbe    1001a3 <elf_look_symbol+0x83>
  100187:	8b 45 0c             	mov    0xc(%ebp),%eax
  10018a:	8b 40 08             	mov    0x8(%eax),%eax
  10018d:	89 c2                	mov    %eax,%edx
  10018f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100192:	8b 00                	mov    (%eax),%eax
  100194:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100197:	c1 e1 04             	shl    $0x4,%ecx
  10019a:	01 c8                	add    %ecx,%eax
  10019c:	8b 00                	mov    (%eax),%eax
  10019e:	01 d0                	add    %edx,%eax
  1001a0:	eb 1e                	jmp    1001c0 <elf_look_symbol+0xa0>
  1001a2:	90                   	nop
  1001a3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1001a7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1001aa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001ad:	8b 40 04             	mov    0x4(%eax),%eax
  1001b0:	c1 e8 04             	shr    $0x4,%eax
  1001b3:	39 c2                	cmp    %eax,%edx
  1001b5:	0f 82 74 ff ff ff    	jb     10012f <elf_look_symbol+0xf>
  1001bb:	b8 00 00 00 00       	mov    $0x0,%eax
  1001c0:	c9                   	leave  
  1001c1:	c3                   	ret    
  1001c2:	66 90                	xchg   %ax,%ax

001001c4 <memcpy>:
  1001c4:	55                   	push   %ebp
  1001c5:	89 e5                	mov    %esp,%ebp
  1001c7:	83 ec 10             	sub    $0x10,%esp
  1001ca:	8b 45 08             	mov    0x8(%ebp),%eax
  1001cd:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1001d0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001d3:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1001d6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1001dd:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1001e1:	74 06                	je     1001e9 <memcpy+0x25>
  1001e3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1001e7:	75 1e                	jne    100207 <memcpy+0x43>
  1001e9:	8b 45 08             	mov    0x8(%ebp),%eax
  1001ec:	eb 25                	jmp    100213 <memcpy+0x4f>
  1001ee:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1001f1:	0f b6 10             	movzbl (%eax),%edx
  1001f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1001f7:	88 10                	mov    %dl,(%eax)
  1001f9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1001fd:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100201:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100205:	eb 01                	jmp    100208 <memcpy+0x44>
  100207:	90                   	nop
  100208:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10020b:	3b 45 10             	cmp    0x10(%ebp),%eax
  10020e:	72 de                	jb     1001ee <memcpy+0x2a>
  100210:	8b 45 08             	mov    0x8(%ebp),%eax
  100213:	c9                   	leave  
  100214:	c3                   	ret    

00100215 <memset>:
  100215:	55                   	push   %ebp
  100216:	89 e5                	mov    %esp,%ebp
  100218:	83 ec 14             	sub    $0x14,%esp
  10021b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10021e:	88 45 ec             	mov    %al,-0x14(%ebp)
  100221:	8b 45 08             	mov    0x8(%ebp),%eax
  100224:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100227:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10022e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100235:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100239:	75 08                	jne    100243 <memset+0x2e>
  10023b:	eb 62                	jmp    10029f <memset+0x8a>
  10023d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100241:	eb 01                	jmp    100244 <memset+0x2f>
  100243:	90                   	nop
  100244:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100247:	0f b6 00             	movzbl (%eax),%eax
  10024a:	84 c0                	test   %al,%al
  10024c:	75 ef                	jne    10023d <memset+0x28>
  10024e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100251:	3b 45 10             	cmp    0x10(%ebp),%eax
  100254:	77 1d                	ja     100273 <memset+0x5e>
  100256:	eb 11                	jmp    100269 <memset+0x54>
  100258:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10025b:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  10025f:	88 10                	mov    %dl,(%eax)
  100261:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100265:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100269:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10026c:	3b 45 10             	cmp    0x10(%ebp),%eax
  10026f:	72 e7                	jb     100258 <memset+0x43>
  100271:	eb 22                	jmp    100295 <memset+0x80>
  100273:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10027a:	eb 11                	jmp    10028d <memset+0x78>
  10027c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10027f:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
  100283:	88 10                	mov    %dl,(%eax)
  100285:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100289:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  10028d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100290:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100293:	7c e7                	jl     10027c <memset+0x67>
  100295:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100298:	c6 00 00             	movb   $0x0,(%eax)
  10029b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10029f:	c9                   	leave  
  1002a0:	c3                   	ret    

001002a1 <bzer>:
  1002a1:	55                   	push   %ebp
  1002a2:	89 e5                	mov    %esp,%ebp
  1002a4:	83 ec 10             	sub    $0x10,%esp
  1002a7:	8b 45 08             	mov    0x8(%ebp),%eax
  1002aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1002ad:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1002b4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1002bb:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1002bf:	75 08                	jne    1002c9 <bzer+0x28>
  1002c1:	eb 52                	jmp    100315 <bzer+0x74>
  1002c3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1002c7:	eb 01                	jmp    1002ca <bzer+0x29>
  1002c9:	90                   	nop
  1002ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002cd:	0f b6 00             	movzbl (%eax),%eax
  1002d0:	84 c0                	test   %al,%al
  1002d2:	75 ef                	jne    1002c3 <bzer+0x22>
  1002d4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002d7:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1002da:	72 1a                	jb     1002f6 <bzer+0x55>
  1002dc:	eb 0e                	jmp    1002ec <bzer+0x4b>
  1002de:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002e1:	c6 00 00             	movb   $0x0,(%eax)
  1002e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002e8:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1002ec:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002ef:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1002f2:	72 ea                	jb     1002de <bzer+0x3d>
  1002f4:	eb 1f                	jmp    100315 <bzer+0x74>
  1002f6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1002fd:	eb 0e                	jmp    10030d <bzer+0x6c>
  1002ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100302:	c6 00 00             	movb   $0x0,(%eax)
  100305:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100309:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  10030d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100310:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  100313:	7c ea                	jl     1002ff <bzer+0x5e>
  100315:	c9                   	leave  
  100316:	c3                   	ret    

00100317 <strcmp>:
  100317:	55                   	push   %ebp
  100318:	89 e5                	mov    %esp,%ebp
  10031a:	83 ec 10             	sub    $0x10,%esp
  10031d:	8b 45 08             	mov    0x8(%ebp),%eax
  100320:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100323:	8b 45 0c             	mov    0xc(%ebp),%eax
  100326:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100329:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10032c:	0f b6 00             	movzbl (%eax),%eax
  10032f:	88 45 f7             	mov    %al,-0x9(%ebp)
  100332:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100336:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100339:	0f b6 00             	movzbl (%eax),%eax
  10033c:	88 45 f6             	mov    %al,-0xa(%ebp)
  10033f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100343:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  100347:	75 10                	jne    100359 <strcmp+0x42>
  100349:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  10034d:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  100351:	89 d1                	mov    %edx,%ecx
  100353:	29 c1                	sub    %eax,%ecx
  100355:	89 c8                	mov    %ecx,%eax
  100357:	eb 17                	jmp    100370 <strcmp+0x59>
  100359:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  10035d:	3a 45 f6             	cmp    -0xa(%ebp),%al
  100360:	74 c7                	je     100329 <strcmp+0x12>
  100362:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  100366:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
  10036a:	89 d1                	mov    %edx,%ecx
  10036c:	29 c1                	sub    %eax,%ecx
  10036e:	89 c8                	mov    %ecx,%eax
  100370:	c9                   	leave  
  100371:	c3                   	ret    

00100372 <strcpy>:
  100372:	55                   	push   %ebp
  100373:	89 e5                	mov    %esp,%ebp
  100375:	83 ec 10             	sub    $0x10,%esp
  100378:	8b 45 08             	mov    0x8(%ebp),%eax
  10037b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10037e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100381:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100384:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100388:	74 06                	je     100390 <strcpy+0x1e>
  10038a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10038e:	75 05                	jne    100395 <strcpy+0x23>
  100390:	8b 45 08             	mov    0x8(%ebp),%eax
  100393:	eb 25                	jmp    1003ba <strcpy+0x48>
  100395:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100398:	0f b6 10             	movzbl (%eax),%edx
  10039b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10039e:	88 10                	mov    %dl,(%eax)
  1003a0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003a4:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003a7:	0f b6 00             	movzbl (%eax),%eax
  1003aa:	84 c0                	test   %al,%al
  1003ac:	0f 95 c0             	setne  %al
  1003af:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1003b3:	84 c0                	test   %al,%al
  1003b5:	75 de                	jne    100395 <strcpy+0x23>
  1003b7:	8b 45 08             	mov    0x8(%ebp),%eax
  1003ba:	c9                   	leave  
  1003bb:	c3                   	ret    

001003bc <strcat>:
  1003bc:	55                   	push   %ebp
  1003bd:	89 e5                	mov    %esp,%ebp
  1003bf:	83 ec 10             	sub    $0x10,%esp
  1003c2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1003c5:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1003c8:	8b 45 08             	mov    0x8(%ebp),%eax
  1003cb:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1003ce:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1003d2:	74 06                	je     1003da <strcat+0x1e>
  1003d4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1003d8:	75 07                	jne    1003e1 <strcat+0x25>
  1003da:	b8 00 00 00 00       	mov    $0x0,%eax
  1003df:	eb 3b                	jmp    10041c <strcat+0x60>
  1003e1:	90                   	nop
  1003e2:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e5:	0f b6 00             	movzbl (%eax),%eax
  1003e8:	84 c0                	test   %al,%al
  1003ea:	0f 95 c0             	setne  %al
  1003ed:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  1003f1:	84 c0                	test   %al,%al
  1003f3:	75 ed                	jne    1003e2 <strcat+0x26>
  1003f5:	eb 0f                	jmp    100406 <strcat+0x4a>
  1003f7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003fa:	0f b6 10             	movzbl (%eax),%edx
  1003fd:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100400:	88 10                	mov    %dl,(%eax)
  100402:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100406:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100409:	0f b6 00             	movzbl (%eax),%eax
  10040c:	84 c0                	test   %al,%al
  10040e:	0f 95 c0             	setne  %al
  100411:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100415:	84 c0                	test   %al,%al
  100417:	75 de                	jne    1003f7 <strcat+0x3b>
  100419:	8b 45 08             	mov    0x8(%ebp),%eax
  10041c:	c9                   	leave  
  10041d:	c3                   	ret    

0010041e <strlen>:
  10041e:	55                   	push   %ebp
  10041f:	89 e5                	mov    %esp,%ebp
  100421:	83 ec 10             	sub    $0x10,%esp
  100424:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10042b:	eb 04                	jmp    100431 <strlen+0x13>
  10042d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100431:	8b 45 08             	mov    0x8(%ebp),%eax
  100434:	0f b6 00             	movzbl (%eax),%eax
  100437:	84 c0                	test   %al,%al
  100439:	0f 95 c0             	setne  %al
  10043c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  100440:	84 c0                	test   %al,%al
  100442:	75 e9                	jne    10042d <strlen+0xf>
  100444:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100447:	c9                   	leave  
  100448:	c3                   	ret    
  100449:	66 90                	xchg   %ax,%ax
  10044b:	90                   	nop

0010044c <move_point>:
  10044c:	55                   	push   %ebp
  10044d:	89 e5                	mov    %esp,%ebp
  10044f:	83 ec 28             	sub    $0x28,%esp
  100452:	0f b7 05 04 a0 10 00 	movzwl 0x10a004,%eax
  100459:	89 c2                	mov    %eax,%edx
  10045b:	89 d0                	mov    %edx,%eax
  10045d:	c1 e0 02             	shl    $0x2,%eax
  100460:	01 d0                	add    %edx,%eax
  100462:	c1 e0 04             	shl    $0x4,%eax
  100465:	89 c2                	mov    %eax,%edx
  100467:	0f b7 05 06 a0 10 00 	movzwl 0x10a006,%eax
  10046e:	01 d0                	add    %edx,%eax
  100470:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  100474:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
  10047b:	00 
  10047c:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  100483:	e8 c8 01 00 00       	call   100650 <outb>
  100488:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  10048c:	66 c1 e8 08          	shr    $0x8,%ax
  100490:	0f b7 c0             	movzwl %ax,%eax
  100493:	89 44 24 04          	mov    %eax,0x4(%esp)
  100497:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  10049e:	e8 ad 01 00 00       	call   100650 <outb>
  1004a3:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
  1004aa:	00 
  1004ab:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  1004b2:	e8 99 01 00 00       	call   100650 <outb>
  1004b7:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  1004bb:	89 44 24 04          	mov    %eax,0x4(%esp)
  1004bf:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  1004c6:	e8 85 01 00 00       	call   100650 <outb>
  1004cb:	c9                   	leave  
  1004cc:	c3                   	ret    

001004cd <screen_clear>:
  1004cd:	55                   	push   %ebp
  1004ce:	89 e5                	mov    %esp,%ebp
  1004d0:	83 ec 18             	sub    $0x18,%esp
  1004d3:	66 c7 45 f2 20 07    	movw   $0x720,-0xe(%ebp)
  1004d9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1004e0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1004e7:	eb 17                	jmp    100500 <screen_clear+0x33>
  1004e9:	a1 a0 13 10 00       	mov    0x1013a0,%eax
  1004ee:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1004f1:	01 d2                	add    %edx,%edx
  1004f3:	01 c2                	add    %eax,%edx
  1004f5:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  1004f9:	66 89 02             	mov    %ax,(%edx)
  1004fc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100500:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  100507:	7e e0                	jle    1004e9 <screen_clear+0x1c>
  100509:	66 c7 05 04 a0 10 00 	movw   $0x0,0x10a004
  100510:	00 00 
  100512:	66 c7 05 06 a0 10 00 	movw   $0x0,0x10a006
  100519:	00 00 
  10051b:	e8 2c ff ff ff       	call   10044c <move_point>
  100520:	c9                   	leave  
  100521:	c3                   	ret    

00100522 <screen_char>:
  100522:	55                   	push   %ebp
  100523:	89 e5                	mov    %esp,%ebp
  100525:	83 ec 28             	sub    $0x28,%esp
  100528:	8b 45 08             	mov    0x8(%ebp),%eax
  10052b:	88 45 e4             	mov    %al,-0x1c(%ebp)
  10052e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100531:	89 c2                	mov    %eax,%edx
  100533:	8b 45 10             	mov    0x10(%ebp),%eax
  100536:	09 d0                	or     %edx,%eax
  100538:	89 c2                	mov    %eax,%edx
  10053a:	c1 e2 08             	shl    $0x8,%edx
  10053d:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
  100542:	09 d0                	or     %edx,%eax
  100544:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
  100548:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
  10054c:	75 1b                	jne    100569 <screen_char+0x47>
  10054e:	0f b7 05 04 a0 10 00 	movzwl 0x10a004,%eax
  100555:	83 c0 01             	add    $0x1,%eax
  100558:	66 a3 04 a0 10 00    	mov    %ax,0x10a004
  10055e:	66 c7 05 06 a0 10 00 	movw   $0x0,0x10a006
  100565:	00 00 
  100567:	eb 72                	jmp    1005db <screen_char+0xb9>
  100569:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
  10056d:	75 12                	jne    100581 <screen_char+0x5f>
  10056f:	0f b7 05 06 a0 10 00 	movzwl 0x10a006,%eax
  100576:	83 c0 08             	add    $0x8,%eax
  100579:	66 a3 06 a0 10 00    	mov    %ax,0x10a006
  10057f:	eb 5a                	jmp    1005db <screen_char+0xb9>
  100581:	80 7d e4 20          	cmpb   $0x20,-0x1c(%ebp)
  100585:	75 12                	jne    100599 <screen_char+0x77>
  100587:	0f b7 05 06 a0 10 00 	movzwl 0x10a006,%eax
  10058e:	83 c0 01             	add    $0x1,%eax
  100591:	66 a3 06 a0 10 00    	mov    %ax,0x10a006
  100597:	eb 42                	jmp    1005db <screen_char+0xb9>
  100599:	8b 0d a0 13 10 00    	mov    0x1013a0,%ecx
  10059f:	0f b7 05 04 a0 10 00 	movzwl 0x10a004,%eax
  1005a6:	0f bf d0             	movswl %ax,%edx
  1005a9:	89 d0                	mov    %edx,%eax
  1005ab:	c1 e0 02             	shl    $0x2,%eax
  1005ae:	01 d0                	add    %edx,%eax
  1005b0:	c1 e0 04             	shl    $0x4,%eax
  1005b3:	89 c2                	mov    %eax,%edx
  1005b5:	0f b7 05 06 a0 10 00 	movzwl 0x10a006,%eax
  1005bc:	98                   	cwtl   
  1005bd:	01 d0                	add    %edx,%eax
  1005bf:	01 c0                	add    %eax,%eax
  1005c1:	8d 14 01             	lea    (%ecx,%eax,1),%edx
  1005c4:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  1005c8:	66 89 02             	mov    %ax,(%edx)
  1005cb:	0f b7 05 06 a0 10 00 	movzwl 0x10a006,%eax
  1005d2:	83 c0 01             	add    $0x1,%eax
  1005d5:	66 a3 06 a0 10 00    	mov    %ax,0x10a006
  1005db:	0f b7 05 06 a0 10 00 	movzwl 0x10a006,%eax
  1005e2:	66 83 f8 50          	cmp    $0x50,%ax
  1005e6:	7e 19                	jle    100601 <screen_char+0xdf>
  1005e8:	0f b7 05 04 a0 10 00 	movzwl 0x10a004,%eax
  1005ef:	83 c0 01             	add    $0x1,%eax
  1005f2:	66 a3 04 a0 10 00    	mov    %ax,0x10a004
  1005f8:	66 c7 05 06 a0 10 00 	movw   $0x0,0x10a006
  1005ff:	00 00 
  100601:	e8 46 fe ff ff       	call   10044c <move_point>
  100606:	c9                   	leave  
  100607:	c3                   	ret    

00100608 <screen_string>:
  100608:	55                   	push   %ebp
  100609:	89 e5                	mov    %esp,%ebp
  10060b:	83 ec 28             	sub    $0x28,%esp
  10060e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100615:	eb 28                	jmp    10063f <screen_string+0x37>
  100617:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10061a:	8b 45 08             	mov    0x8(%ebp),%eax
  10061d:	01 d0                	add    %edx,%eax
  10061f:	0f b6 00             	movzbl (%eax),%eax
  100622:	0f be c0             	movsbl %al,%eax
  100625:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100629:	8b 55 10             	mov    0x10(%ebp),%edx
  10062c:	89 54 24 08          	mov    %edx,0x8(%esp)
  100630:	8b 55 0c             	mov    0xc(%ebp),%edx
  100633:	89 54 24 04          	mov    %edx,0x4(%esp)
  100637:	89 04 24             	mov    %eax,(%esp)
  10063a:	e8 e3 fe ff ff       	call   100522 <screen_char>
  10063f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100642:	8b 45 08             	mov    0x8(%ebp),%eax
  100645:	01 d0                	add    %edx,%eax
  100647:	0f b6 00             	movzbl (%eax),%eax
  10064a:	84 c0                	test   %al,%al
  10064c:	75 c9                	jne    100617 <screen_string+0xf>
  10064e:	c9                   	leave  
  10064f:	c3                   	ret    

00100650 <outb>:
  100650:	55                   	push   %ebp
  100651:	89 e5                	mov    %esp,%ebp
  100653:	83 ec 08             	sub    $0x8,%esp
  100656:	8b 55 08             	mov    0x8(%ebp),%edx
  100659:	8b 45 0c             	mov    0xc(%ebp),%eax
  10065c:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
  100660:	88 45 f8             	mov    %al,-0x8(%ebp)
  100663:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
  100667:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
  10066b:	ee                   	out    %al,(%dx)
  10066c:	c9                   	leave  
  10066d:	c3                   	ret    

0010066e <inb>:
  10066e:	55                   	push   %ebp
  10066f:	89 e5                	mov    %esp,%ebp
  100671:	53                   	push   %ebx
  100672:	83 ec 14             	sub    $0x14,%esp
  100675:	8b 45 08             	mov    0x8(%ebp),%eax
  100678:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
  10067c:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  100680:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  100684:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  100688:	ec                   	in     (%dx),%al
  100689:	89 c3                	mov    %eax,%ebx
  10068b:	88 5d fb             	mov    %bl,-0x5(%ebp)
  10068e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  100692:	83 c4 14             	add    $0x14,%esp
  100695:	5b                   	pop    %ebx
  100696:	5d                   	pop    %ebp
  100697:	c3                   	ret    

00100698 <inw>:
  100698:	55                   	push   %ebp
  100699:	89 e5                	mov    %esp,%ebp
  10069b:	53                   	push   %ebx
  10069c:	83 ec 14             	sub    $0x14,%esp
  10069f:	8b 45 08             	mov    0x8(%ebp),%eax
  1006a2:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
  1006a6:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  1006aa:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
  1006ae:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  1006b2:	66 ed                	in     (%dx),%ax
  1006b4:	89 c3                	mov    %eax,%ebx
  1006b6:	66 89 5d fa          	mov    %bx,-0x6(%ebp)
  1006ba:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
  1006be:	83 c4 14             	add    $0x14,%esp
  1006c1:	5b                   	pop    %ebx
  1006c2:	5d                   	pop    %ebp
  1006c3:	c3                   	ret    

001006c4 <prints>:
  1006c4:	55                   	push   %ebp
  1006c5:	89 e5                	mov    %esp,%ebp
  1006c7:	83 ec 18             	sub    $0x18,%esp
  1006ca:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  1006d1:	00 
  1006d2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1006d9:	00 
  1006da:	8b 45 08             	mov    0x8(%ebp),%eax
  1006dd:	89 04 24             	mov    %eax,(%esp)
  1006e0:	e8 23 ff ff ff       	call   100608 <screen_string>
  1006e5:	c9                   	leave  
  1006e6:	c3                   	ret    

001006e7 <printchar>:
  1006e7:	55                   	push   %ebp
  1006e8:	89 e5                	mov    %esp,%ebp
  1006ea:	83 ec 28             	sub    $0x28,%esp
  1006ed:	8b 45 08             	mov    0x8(%ebp),%eax
  1006f0:	88 45 f4             	mov    %al,-0xc(%ebp)
  1006f3:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1006f7:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  1006fe:	00 
  1006ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100706:	00 
  100707:	89 04 24             	mov    %eax,(%esp)
  10070a:	e8 13 fe ff ff       	call   100522 <screen_char>
  10070f:	c9                   	leave  
  100710:	c3                   	ret    

00100711 <printi>:
  100711:	55                   	push   %ebp
  100712:	89 e5                	mov    %esp,%ebp
  100714:	83 ec 48             	sub    $0x48,%esp
  100717:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10071e:	8b 45 08             	mov    0x8(%ebp),%eax
  100721:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100724:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100728:	79 03                	jns    10072d <printi+0x1c>
  10072a:	f7 5d 08             	negl   0x8(%ebp)
  10072d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100730:	ba 67 66 66 66       	mov    $0x66666667,%edx
  100735:	89 c8                	mov    %ecx,%eax
  100737:	f7 ea                	imul   %edx
  100739:	c1 fa 02             	sar    $0x2,%edx
  10073c:	89 c8                	mov    %ecx,%eax
  10073e:	c1 f8 1f             	sar    $0x1f,%eax
  100741:	29 c2                	sub    %eax,%edx
  100743:	89 d0                	mov    %edx,%eax
  100745:	c1 e0 02             	shl    $0x2,%eax
  100748:	01 d0                	add    %edx,%eax
  10074a:	01 c0                	add    %eax,%eax
  10074c:	89 ca                	mov    %ecx,%edx
  10074e:	29 c2                	sub    %eax,%edx
  100750:	89 d0                	mov    %edx,%eax
  100752:	83 c0 30             	add    $0x30,%eax
  100755:	8d 4d d0             	lea    -0x30(%ebp),%ecx
  100758:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10075b:	01 ca                	add    %ecx,%edx
  10075d:	88 02                	mov    %al,(%edx)
  10075f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100763:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100766:	ba 67 66 66 66       	mov    $0x66666667,%edx
  10076b:	89 c8                	mov    %ecx,%eax
  10076d:	f7 ea                	imul   %edx
  10076f:	c1 fa 02             	sar    $0x2,%edx
  100772:	89 c8                	mov    %ecx,%eax
  100774:	c1 f8 1f             	sar    $0x1f,%eax
  100777:	89 d1                	mov    %edx,%ecx
  100779:	29 c1                	sub    %eax,%ecx
  10077b:	89 c8                	mov    %ecx,%eax
  10077d:	89 45 08             	mov    %eax,0x8(%ebp)
  100780:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100784:	7f a7                	jg     10072d <printi+0x1c>
  100786:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  10078a:	79 0f                	jns    10079b <printi+0x8a>
  10078c:	8d 55 d0             	lea    -0x30(%ebp),%edx
  10078f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100792:	01 d0                	add    %edx,%eax
  100794:	c6 00 2d             	movb   $0x2d,(%eax)
  100797:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10079b:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  10079f:	eb 2a                	jmp    1007cb <printi+0xba>
  1007a1:	8d 55 d0             	lea    -0x30(%ebp),%edx
  1007a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1007a7:	01 d0                	add    %edx,%eax
  1007a9:	0f b6 00             	movzbl (%eax),%eax
  1007ac:	0f be c0             	movsbl %al,%eax
  1007af:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
  1007b6:	00 
  1007b7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  1007be:	00 
  1007bf:	89 04 24             	mov    %eax,(%esp)
  1007c2:	e8 5b fd ff ff       	call   100522 <screen_char>
  1007c7:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1007cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1007cf:	79 d0                	jns    1007a1 <printi+0x90>
  1007d1:	c9                   	leave  
  1007d2:	c3                   	ret    

001007d3 <printk>:
  1007d3:	55                   	push   %ebp
  1007d4:	89 e5                	mov    %esp,%ebp
  1007d6:	83 ec 28             	sub    $0x28,%esp
  1007d9:	8d 45 0c             	lea    0xc(%ebp),%eax
  1007dc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1007df:	8b 45 08             	mov    0x8(%ebp),%eax
  1007e2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1007e5:	89 54 24 04          	mov    %edx,0x4(%esp)
  1007e9:	89 04 24             	mov    %eax,(%esp)
  1007ec:	e8 0f 00 00 00       	call   100800 <vprintk>
  1007f1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1007f4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1007fe:	c9                   	leave  
  1007ff:	c3                   	ret    

00100800 <vprintk>:
  100800:	55                   	push   %ebp
  100801:	89 e5                	mov    %esp,%ebp
  100803:	83 ec 28             	sub    $0x28,%esp
  100806:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10080d:	e9 af 00 00 00       	jmp    1008c1 <vprintk+0xc1>
  100812:	8b 45 08             	mov    0x8(%ebp),%eax
  100815:	0f b6 00             	movzbl (%eax),%eax
  100818:	3c 25                	cmp    $0x25,%al
  10081a:	0f 85 88 00 00 00    	jne    1008a8 <vprintk+0xa8>
  100820:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  100824:	8b 45 08             	mov    0x8(%ebp),%eax
  100827:	0f b6 00             	movzbl (%eax),%eax
  10082a:	3c 63                	cmp    $0x63,%al
  10082c:	75 1d                	jne    10084b <vprintk+0x4b>
  10082e:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100832:	8b 45 0c             	mov    0xc(%ebp),%eax
  100835:	83 e8 04             	sub    $0x4,%eax
  100838:	8b 00                	mov    (%eax),%eax
  10083a:	0f be c0             	movsbl %al,%eax
  10083d:	89 04 24             	mov    %eax,(%esp)
  100840:	e8 a2 fe ff ff       	call   1006e7 <printchar>
  100845:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100849:	eb 72                	jmp    1008bd <vprintk+0xbd>
  10084b:	8b 45 08             	mov    0x8(%ebp),%eax
  10084e:	0f b6 00             	movzbl (%eax),%eax
  100851:	3c 64                	cmp    $0x64,%al
  100853:	75 1a                	jne    10086f <vprintk+0x6f>
  100855:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
  100859:	8b 45 0c             	mov    0xc(%ebp),%eax
  10085c:	83 e8 04             	sub    $0x4,%eax
  10085f:	8b 00                	mov    (%eax),%eax
  100861:	89 04 24             	mov    %eax,(%esp)
  100864:	e8 a8 fe ff ff       	call   100711 <printi>
  100869:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10086d:	eb 4e                	jmp    1008bd <vprintk+0xbd>
  10086f:	8b 45 08             	mov    0x8(%ebp),%eax
  100872:	0f b6 00             	movzbl (%eax),%eax
  100875:	3c 73                	cmp    $0x73,%al
  100877:	75 18                	jne    100891 <vprintk+0x91>
  100879:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  10087d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100880:	83 e8 01             	sub    $0x1,%eax
  100883:	89 04 24             	mov    %eax,(%esp)
  100886:	e8 39 fe ff ff       	call   1006c4 <prints>
  10088b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10088f:	eb 2c                	jmp    1008bd <vprintk+0xbd>
  100891:	8b 45 08             	mov    0x8(%ebp),%eax
  100894:	0f b6 00             	movzbl (%eax),%eax
  100897:	0f be c0             	movsbl %al,%eax
  10089a:	89 04 24             	mov    %eax,(%esp)
  10089d:	e8 45 fe ff ff       	call   1006e7 <printchar>
  1008a2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1008a6:	eb 15                	jmp    1008bd <vprintk+0xbd>
  1008a8:	8b 45 08             	mov    0x8(%ebp),%eax
  1008ab:	0f b6 00             	movzbl (%eax),%eax
  1008ae:	0f be c0             	movsbl %al,%eax
  1008b1:	89 04 24             	mov    %eax,(%esp)
  1008b4:	e8 2e fe ff ff       	call   1006e7 <printchar>
  1008b9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1008bd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1008c1:	8b 45 08             	mov    0x8(%ebp),%eax
  1008c4:	0f b6 00             	movzbl (%eax),%eax
  1008c7:	84 c0                	test   %al,%al
  1008c9:	0f 85 43 ff ff ff    	jne    100812 <vprintk+0x12>
  1008cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1008d2:	c9                   	leave  
  1008d3:	c3                   	ret    

001008d4 <init_debug>:
  1008d4:	55                   	push   %ebp
  1008d5:	89 e5                	mov    %esp,%ebp
  1008d7:	83 ec 28             	sub    $0x28,%esp
  1008da:	8b 15 00 a0 10 00    	mov    0x10a000,%edx
  1008e0:	8d 45 e8             	lea    -0x18(%ebp),%eax
  1008e3:	89 54 24 04          	mov    %edx,0x4(%esp)
  1008e7:	89 04 24             	mov    %eax,(%esp)
  1008ea:	e8 61 f7 ff ff       	call   100050 <elf_form_multiboot>
  1008ef:	83 ec 04             	sub    $0x4,%esp
  1008f2:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1008f5:	a3 08 a0 10 00       	mov    %eax,0x10a008
  1008fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1008fd:	a3 0c a0 10 00       	mov    %eax,0x10a00c
  100902:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100905:	a3 10 a0 10 00       	mov    %eax,0x10a010
  10090a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10090d:	a3 14 a0 10 00       	mov    %eax,0x10a014
  100912:	c9                   	leave  
  100913:	c3                   	ret    

00100914 <print_cur_status>:
  100914:	55                   	push   %ebp
  100915:	89 e5                	mov    %esp,%ebp
  100917:	83 ec 28             	sub    $0x28,%esp
  10091a:	8c 4d f6             	mov    %cs,-0xa(%ebp)
  10091d:	8c 5d f4             	mov    %ds,-0xc(%ebp)
  100920:	8c 45 f2             	mov    %es,-0xe(%ebp)
  100923:	8c 55 f0             	mov    %ss,-0x10(%ebp)
  100926:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  10092a:	0f b7 c0             	movzwl %ax,%eax
  10092d:	89 c2                	mov    %eax,%edx
  10092f:	83 e2 03             	and    $0x3,%edx
  100932:	a1 18 a0 10 00       	mov    0x10a018,%eax
  100937:	89 54 24 08          	mov    %edx,0x8(%esp)
  10093b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10093f:	c7 04 24 ac 13 10 00 	movl   $0x1013ac,(%esp)
  100946:	e8 88 fe ff ff       	call   1007d3 <printk>
  10094b:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
  10094f:	0f b7 d0             	movzwl %ax,%edx
  100952:	a1 18 a0 10 00       	mov    0x10a018,%eax
  100957:	89 54 24 08          	mov    %edx,0x8(%esp)
  10095b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10095f:	c7 04 24 b9 13 10 00 	movl   $0x1013b9,(%esp)
  100966:	e8 68 fe ff ff       	call   1007d3 <printk>
  10096b:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
  10096f:	0f b7 d0             	movzwl %ax,%edx
  100972:	a1 18 a0 10 00       	mov    0x10a018,%eax
  100977:	89 54 24 08          	mov    %edx,0x8(%esp)
  10097b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10097f:	c7 04 24 c6 13 10 00 	movl   $0x1013c6,(%esp)
  100986:	e8 48 fe ff ff       	call   1007d3 <printk>
  10098b:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  10098f:	0f b7 d0             	movzwl %ax,%edx
  100992:	a1 18 a0 10 00       	mov    0x10a018,%eax
  100997:	89 54 24 08          	mov    %edx,0x8(%esp)
  10099b:	89 44 24 04          	mov    %eax,0x4(%esp)
  10099f:	c7 04 24 d3 13 10 00 	movl   $0x1013d3,(%esp)
  1009a6:	e8 28 fe ff ff       	call   1007d3 <printk>
  1009ab:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
  1009af:	0f b7 d0             	movzwl %ax,%edx
  1009b2:	a1 18 a0 10 00       	mov    0x10a018,%eax
  1009b7:	89 54 24 08          	mov    %edx,0x8(%esp)
  1009bb:	89 44 24 04          	mov    %eax,0x4(%esp)
  1009bf:	c7 04 24 e0 13 10 00 	movl   $0x1013e0,(%esp)
  1009c6:	e8 08 fe ff ff       	call   1007d3 <printk>
  1009cb:	c9                   	leave  
  1009cc:	c3                   	ret    

001009cd <panic>:
  1009cd:	55                   	push   %ebp
  1009ce:	89 e5                	mov    %esp,%ebp
  1009d0:	83 ec 18             	sub    $0x18,%esp
  1009d3:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d6:	89 44 24 04          	mov    %eax,0x4(%esp)
  1009da:	c7 04 24 ed 13 10 00 	movl   $0x1013ed,(%esp)
  1009e1:	e8 ed fd ff ff       	call   1007d3 <printk>
  1009e6:	e8 0e 00 00 00       	call   1009f9 <print_stack_trace>
  1009eb:	c7 04 24 05 14 10 00 	movl   $0x101405,(%esp)
  1009f2:	e8 dc fd ff ff       	call   1007d3 <printk>
  1009f7:	eb fe                	jmp    1009f7 <panic+0x2a>

001009f9 <print_stack_trace>:
  1009f9:	55                   	push   %ebp
  1009fa:	89 e5                	mov    %esp,%ebp
  1009fc:	53                   	push   %ebx
  1009fd:	83 ec 24             	sub    $0x24,%esp
  100a00:	89 eb                	mov    %ebp,%ebx
  100a02:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  100a05:	eb 3f                	jmp    100a46 <print_stack_trace+0x4d>
  100a07:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a0a:	83 c0 04             	add    $0x4,%eax
  100a0d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100a10:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100a13:	8b 00                	mov    (%eax),%eax
  100a15:	c7 44 24 04 08 a0 10 	movl   $0x10a008,0x4(%esp)
  100a1c:	00 
  100a1d:	89 04 24             	mov    %eax,(%esp)
  100a20:	e8 fb f6 ff ff       	call   100120 <elf_look_symbol>
  100a25:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100a28:	8b 12                	mov    (%edx),%edx
  100a2a:	89 44 24 08          	mov    %eax,0x8(%esp)
  100a2e:	89 54 24 04          	mov    %edx,0x4(%esp)
  100a32:	c7 04 24 0b 14 10 00 	movl   $0x10140b,(%esp)
  100a39:	e8 95 fd ff ff       	call   1007d3 <printk>
  100a3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a41:	8b 00                	mov    (%eax),%eax
  100a43:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a46:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100a4a:	75 bb                	jne    100a07 <print_stack_trace+0xe>
  100a4c:	83 c4 24             	add    $0x24,%esp
  100a4f:	5b                   	pop    %ebx
  100a50:	5d                   	pop    %ebp
  100a51:	c3                   	ret    
  100a52:	66 90                	xchg   %ax,%ax

00100a54 <init_gdt>:
  100a54:	55                   	push   %ebp
  100a55:	89 e5                	mov    %esp,%ebp
  100a57:	83 ec 28             	sub    $0x28,%esp
  100a5a:	66 c7 05 28 b0 10 00 	movw   $0x27,0x10b028
  100a61:	27 00 
  100a63:	b8 00 b0 10 00       	mov    $0x10b000,%eax
  100a68:	a3 2a b0 10 00       	mov    %eax,0x10b02a
  100a6d:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
  100a74:	00 
  100a75:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  100a7c:	00 
  100a7d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  100a84:	00 
  100a85:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100a8c:	00 
  100a8d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  100a94:	e8 bf 00 00 00       	call   100b58 <gdt_set_gate>
  100a99:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100aa0:	00 
  100aa1:	c7 44 24 0c 9a 00 00 	movl   $0x9a,0xc(%esp)
  100aa8:	00 
  100aa9:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100ab0:	ff 
  100ab1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100ab8:	00 
  100ab9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  100ac0:	e8 93 00 00 00       	call   100b58 <gdt_set_gate>
  100ac5:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100acc:	00 
  100acd:	c7 44 24 0c 92 00 00 	movl   $0x92,0xc(%esp)
  100ad4:	00 
  100ad5:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100adc:	ff 
  100add:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100ae4:	00 
  100ae5:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  100aec:	e8 67 00 00 00       	call   100b58 <gdt_set_gate>
  100af1:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100af8:	00 
  100af9:	c7 44 24 0c fa 00 00 	movl   $0xfa,0xc(%esp)
  100b00:	00 
  100b01:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100b08:	ff 
  100b09:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100b10:	00 
  100b11:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  100b18:	e8 3b 00 00 00       	call   100b58 <gdt_set_gate>
  100b1d:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
  100b24:	00 
  100b25:	c7 44 24 0c f2 00 00 	movl   $0xf2,0xc(%esp)
  100b2c:	00 
  100b2d:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
  100b34:	ff 
  100b35:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100b3c:	00 
  100b3d:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
  100b44:	e8 0f 00 00 00       	call   100b58 <gdt_set_gate>
  100b49:	b8 28 b0 10 00       	mov    $0x10b028,%eax
  100b4e:	89 04 24             	mov    %eax,(%esp)
  100b51:	e8 da f4 ff ff       	call   100030 <gdt_flush>
  100b56:	c9                   	leave  
  100b57:	c3                   	ret    

00100b58 <gdt_set_gate>:
  100b58:	55                   	push   %ebp
  100b59:	89 e5                	mov    %esp,%ebp
  100b5b:	83 ec 08             	sub    $0x8,%esp
  100b5e:	8b 55 14             	mov    0x14(%ebp),%edx
  100b61:	8b 45 18             	mov    0x18(%ebp),%eax
  100b64:	88 55 fc             	mov    %dl,-0x4(%ebp)
  100b67:	88 45 f8             	mov    %al,-0x8(%ebp)
  100b6a:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b6d:	89 c2                	mov    %eax,%edx
  100b6f:	8b 45 08             	mov    0x8(%ebp),%eax
  100b72:	66 89 14 c5 02 b0 10 	mov    %dx,0x10b002(,%eax,8)
  100b79:	00 
  100b7a:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b7d:	c1 e8 10             	shr    $0x10,%eax
  100b80:	89 c2                	mov    %eax,%edx
  100b82:	8b 45 08             	mov    0x8(%ebp),%eax
  100b85:	88 14 c5 04 b0 10 00 	mov    %dl,0x10b004(,%eax,8)
  100b8c:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b8f:	c1 e8 18             	shr    $0x18,%eax
  100b92:	89 c2                	mov    %eax,%edx
  100b94:	8b 45 08             	mov    0x8(%ebp),%eax
  100b97:	88 14 c5 07 b0 10 00 	mov    %dl,0x10b007(,%eax,8)
  100b9e:	8b 45 10             	mov    0x10(%ebp),%eax
  100ba1:	89 c2                	mov    %eax,%edx
  100ba3:	8b 45 08             	mov    0x8(%ebp),%eax
  100ba6:	66 89 14 c5 00 b0 10 	mov    %dx,0x10b000(,%eax,8)
  100bad:	00 
  100bae:	8b 45 10             	mov    0x10(%ebp),%eax
  100bb1:	c1 e8 10             	shr    $0x10,%eax
  100bb4:	89 c2                	mov    %eax,%edx
  100bb6:	83 e2 0f             	and    $0xf,%edx
  100bb9:	8b 45 08             	mov    0x8(%ebp),%eax
  100bbc:	88 14 c5 06 b0 10 00 	mov    %dl,0x10b006(,%eax,8)
  100bc3:	8b 45 08             	mov    0x8(%ebp),%eax
  100bc6:	0f b6 04 c5 06 b0 10 	movzbl 0x10b006(,%eax,8),%eax
  100bcd:	00 
  100bce:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
  100bd2:	83 e2 f0             	and    $0xfffffff0,%edx
  100bd5:	09 d0                	or     %edx,%eax
  100bd7:	89 c2                	mov    %eax,%edx
  100bd9:	8b 45 08             	mov    0x8(%ebp),%eax
  100bdc:	88 14 c5 06 b0 10 00 	mov    %dl,0x10b006(,%eax,8)
  100be3:	8b 45 08             	mov    0x8(%ebp),%eax
  100be6:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
  100bea:	88 14 c5 05 b0 10 00 	mov    %dl,0x10b005(,%eax,8)
  100bf1:	c9                   	leave  
  100bf2:	c3                   	ret    
  100bf3:	90                   	nop

00100bf4 <entry>:
  100bf4:	55                   	push   %ebp
  100bf5:	89 e5                	mov    %esp,%ebp
  100bf7:	83 ec 18             	sub    $0x18,%esp
  100bfa:	e8 d5 fc ff ff       	call   1008d4 <init_debug>
  100bff:	e8 c9 f8 ff ff       	call   1004cd <screen_clear>
  100c04:	c7 04 24 1b 14 10 00 	movl   $0x10141b,(%esp)
  100c0b:	e8 c3 fb ff ff       	call   1007d3 <printk>
  100c10:	c7 04 24 28 14 10 00 	movl   $0x101428,(%esp)
  100c17:	e8 b1 fd ff ff       	call   1009cd <panic>
  100c1c:	b8 00 00 00 00       	mov    $0x0,%eax
  100c21:	c9                   	leave  
  100c22:	c3                   	ret    
  100c23:	66 90                	xchg   %ax,%ax
  100c25:	66 90                	xchg   %ax,%ax
  100c27:	66 90                	xchg   %ax,%ax
  100c29:	66 90                	xchg   %ax,%ax
  100c2b:	66 90                	xchg   %ax,%ax
  100c2d:	66 90                	xchg   %ax,%ax
  100c2f:	66 90                	xchg   %ax,%ax
  100c31:	66 90                	xchg   %ax,%ax
  100c33:	66 90                	xchg   %ax,%ax
  100c35:	66 90                	xchg   %ax,%ax
  100c37:	66 90                	xchg   %ax,%ax
  100c39:	66 90                	xchg   %ax,%ax
  100c3b:	66 90                	xchg   %ax,%ax
  100c3d:	66 90                	xchg   %ax,%ax
  100c3f:	66 90                	xchg   %ax,%ax
  100c41:	66 90                	xchg   %ax,%ax
  100c43:	66 90                	xchg   %ax,%ax
  100c45:	66 90                	xchg   %ax,%ax
  100c47:	66 90                	xchg   %ax,%ax
  100c49:	66 90                	xchg   %ax,%ax
  100c4b:	66 90                	xchg   %ax,%ax
  100c4d:	66 90                	xchg   %ax,%ax
  100c4f:	66 90                	xchg   %ax,%ax
  100c51:	66 90                	xchg   %ax,%ax
  100c53:	66 90                	xchg   %ax,%ax
  100c55:	66 90                	xchg   %ax,%ax
  100c57:	66 90                	xchg   %ax,%ax
  100c59:	66 90                	xchg   %ax,%ax
  100c5b:	66 90                	xchg   %ax,%ax
  100c5d:	66 90                	xchg   %ax,%ax
  100c5f:	66 90                	xchg   %ax,%ax
  100c61:	66 90                	xchg   %ax,%ax
  100c63:	66 90                	xchg   %ax,%ax
  100c65:	66 90                	xchg   %ax,%ax
  100c67:	66 90                	xchg   %ax,%ax
  100c69:	66 90                	xchg   %ax,%ax
  100c6b:	66 90                	xchg   %ax,%ax
  100c6d:	66 90                	xchg   %ax,%ax
  100c6f:	66 90                	xchg   %ax,%ax
  100c71:	66 90                	xchg   %ax,%ax
  100c73:	66 90                	xchg   %ax,%ax
  100c75:	66 90                	xchg   %ax,%ax
  100c77:	66 90                	xchg   %ax,%ax
  100c79:	66 90                	xchg   %ax,%ax
  100c7b:	66 90                	xchg   %ax,%ax
  100c7d:	66 90                	xchg   %ax,%ax
  100c7f:	66 90                	xchg   %ax,%ax
  100c81:	66 90                	xchg   %ax,%ax
  100c83:	66 90                	xchg   %ax,%ax
  100c85:	66 90                	xchg   %ax,%ax
  100c87:	66 90                	xchg   %ax,%ax
  100c89:	66 90                	xchg   %ax,%ax
  100c8b:	66 90                	xchg   %ax,%ax
  100c8d:	66 90                	xchg   %ax,%ax
  100c8f:	66 90                	xchg   %ax,%ax
  100c91:	66 90                	xchg   %ax,%ax
  100c93:	66 90                	xchg   %ax,%ax
  100c95:	66 90                	xchg   %ax,%ax
  100c97:	66 90                	xchg   %ax,%ax
  100c99:	66 90                	xchg   %ax,%ax
  100c9b:	66 90                	xchg   %ax,%ax
  100c9d:	66 90                	xchg   %ax,%ax
  100c9f:	66 90                	xchg   %ax,%ax
  100ca1:	66 90                	xchg   %ax,%ax
  100ca3:	66 90                	xchg   %ax,%ax
  100ca5:	66 90                	xchg   %ax,%ax
  100ca7:	66 90                	xchg   %ax,%ax
  100ca9:	66 90                	xchg   %ax,%ax
  100cab:	66 90                	xchg   %ax,%ax
  100cad:	66 90                	xchg   %ax,%ax
  100caf:	66 90                	xchg   %ax,%ax
  100cb1:	66 90                	xchg   %ax,%ax
  100cb3:	66 90                	xchg   %ax,%ax
  100cb5:	66 90                	xchg   %ax,%ax
  100cb7:	66 90                	xchg   %ax,%ax
  100cb9:	66 90                	xchg   %ax,%ax
  100cbb:	66 90                	xchg   %ax,%ax
  100cbd:	66 90                	xchg   %ax,%ax
  100cbf:	66 90                	xchg   %ax,%ax
  100cc1:	66 90                	xchg   %ax,%ax
  100cc3:	66 90                	xchg   %ax,%ax
  100cc5:	66 90                	xchg   %ax,%ax
  100cc7:	66 90                	xchg   %ax,%ax
  100cc9:	66 90                	xchg   %ax,%ax
  100ccb:	66 90                	xchg   %ax,%ax
  100ccd:	66 90                	xchg   %ax,%ax
  100ccf:	66 90                	xchg   %ax,%ax
  100cd1:	66 90                	xchg   %ax,%ax
  100cd3:	66 90                	xchg   %ax,%ax
  100cd5:	66 90                	xchg   %ax,%ax
  100cd7:	66 90                	xchg   %ax,%ax
  100cd9:	66 90                	xchg   %ax,%ax
  100cdb:	66 90                	xchg   %ax,%ax
  100cdd:	66 90                	xchg   %ax,%ax
  100cdf:	66 90                	xchg   %ax,%ax
  100ce1:	66 90                	xchg   %ax,%ax
  100ce3:	66 90                	xchg   %ax,%ax
  100ce5:	66 90                	xchg   %ax,%ax
  100ce7:	66 90                	xchg   %ax,%ax
  100ce9:	66 90                	xchg   %ax,%ax
  100ceb:	66 90                	xchg   %ax,%ax
  100ced:	66 90                	xchg   %ax,%ax
  100cef:	66 90                	xchg   %ax,%ax
  100cf1:	66 90                	xchg   %ax,%ax
  100cf3:	66 90                	xchg   %ax,%ax
  100cf5:	66 90                	xchg   %ax,%ax
  100cf7:	66 90                	xchg   %ax,%ax
  100cf9:	66 90                	xchg   %ax,%ax
  100cfb:	66 90                	xchg   %ax,%ax
  100cfd:	66 90                	xchg   %ax,%ax
  100cff:	66 90                	xchg   %ax,%ax
  100d01:	66 90                	xchg   %ax,%ax
  100d03:	66 90                	xchg   %ax,%ax
  100d05:	66 90                	xchg   %ax,%ax
  100d07:	66 90                	xchg   %ax,%ax
  100d09:	66 90                	xchg   %ax,%ax
  100d0b:	66 90                	xchg   %ax,%ax
  100d0d:	66 90                	xchg   %ax,%ax
  100d0f:	66 90                	xchg   %ax,%ax
  100d11:	66 90                	xchg   %ax,%ax
  100d13:	66 90                	xchg   %ax,%ax
  100d15:	66 90                	xchg   %ax,%ax
  100d17:	66 90                	xchg   %ax,%ax
  100d19:	66 90                	xchg   %ax,%ax
  100d1b:	66 90                	xchg   %ax,%ax
  100d1d:	66 90                	xchg   %ax,%ax
  100d1f:	66 90                	xchg   %ax,%ax
  100d21:	66 90                	xchg   %ax,%ax
  100d23:	66 90                	xchg   %ax,%ax
  100d25:	66 90                	xchg   %ax,%ax
  100d27:	66 90                	xchg   %ax,%ax
  100d29:	66 90                	xchg   %ax,%ax
  100d2b:	66 90                	xchg   %ax,%ax
  100d2d:	66 90                	xchg   %ax,%ax
  100d2f:	66 90                	xchg   %ax,%ax
  100d31:	66 90                	xchg   %ax,%ax
  100d33:	66 90                	xchg   %ax,%ax
  100d35:	66 90                	xchg   %ax,%ax
  100d37:	66 90                	xchg   %ax,%ax
  100d39:	66 90                	xchg   %ax,%ax
  100d3b:	66 90                	xchg   %ax,%ax
  100d3d:	66 90                	xchg   %ax,%ax
  100d3f:	66 90                	xchg   %ax,%ax
  100d41:	66 90                	xchg   %ax,%ax
  100d43:	66 90                	xchg   %ax,%ax
  100d45:	66 90                	xchg   %ax,%ax
  100d47:	66 90                	xchg   %ax,%ax
  100d49:	66 90                	xchg   %ax,%ax
  100d4b:	66 90                	xchg   %ax,%ax
  100d4d:	66 90                	xchg   %ax,%ax
  100d4f:	66 90                	xchg   %ax,%ax
  100d51:	66 90                	xchg   %ax,%ax
  100d53:	66 90                	xchg   %ax,%ax
  100d55:	66 90                	xchg   %ax,%ax
  100d57:	66 90                	xchg   %ax,%ax
  100d59:	66 90                	xchg   %ax,%ax
  100d5b:	66 90                	xchg   %ax,%ax
  100d5d:	66 90                	xchg   %ax,%ax
  100d5f:	66 90                	xchg   %ax,%ax
  100d61:	66 90                	xchg   %ax,%ax
  100d63:	66 90                	xchg   %ax,%ax
  100d65:	66 90                	xchg   %ax,%ax
  100d67:	66 90                	xchg   %ax,%ax
  100d69:	66 90                	xchg   %ax,%ax
  100d6b:	66 90                	xchg   %ax,%ax
  100d6d:	66 90                	xchg   %ax,%ax
  100d6f:	66 90                	xchg   %ax,%ax
  100d71:	66 90                	xchg   %ax,%ax
  100d73:	66 90                	xchg   %ax,%ax
  100d75:	66 90                	xchg   %ax,%ax
  100d77:	66 90                	xchg   %ax,%ax
  100d79:	66 90                	xchg   %ax,%ax
  100d7b:	66 90                	xchg   %ax,%ax
  100d7d:	66 90                	xchg   %ax,%ax
  100d7f:	66 90                	xchg   %ax,%ax
  100d81:	66 90                	xchg   %ax,%ax
  100d83:	66 90                	xchg   %ax,%ax
  100d85:	66 90                	xchg   %ax,%ax
  100d87:	66 90                	xchg   %ax,%ax
  100d89:	66 90                	xchg   %ax,%ax
  100d8b:	66 90                	xchg   %ax,%ax
  100d8d:	66 90                	xchg   %ax,%ax
  100d8f:	66 90                	xchg   %ax,%ax
  100d91:	66 90                	xchg   %ax,%ax
  100d93:	66 90                	xchg   %ax,%ax
  100d95:	66 90                	xchg   %ax,%ax
  100d97:	66 90                	xchg   %ax,%ax
  100d99:	66 90                	xchg   %ax,%ax
  100d9b:	66 90                	xchg   %ax,%ax
  100d9d:	66 90                	xchg   %ax,%ax
  100d9f:	66 90                	xchg   %ax,%ax
  100da1:	66 90                	xchg   %ax,%ax
  100da3:	66 90                	xchg   %ax,%ax
  100da5:	66 90                	xchg   %ax,%ax
  100da7:	66 90                	xchg   %ax,%ax
  100da9:	66 90                	xchg   %ax,%ax
  100dab:	66 90                	xchg   %ax,%ax
  100dad:	66 90                	xchg   %ax,%ax
  100daf:	66 90                	xchg   %ax,%ax
  100db1:	66 90                	xchg   %ax,%ax
  100db3:	66 90                	xchg   %ax,%ax
  100db5:	66 90                	xchg   %ax,%ax
  100db7:	66 90                	xchg   %ax,%ax
  100db9:	66 90                	xchg   %ax,%ax
  100dbb:	66 90                	xchg   %ax,%ax
  100dbd:	66 90                	xchg   %ax,%ax
  100dbf:	66 90                	xchg   %ax,%ax
  100dc1:	66 90                	xchg   %ax,%ax
  100dc3:	66 90                	xchg   %ax,%ax
  100dc5:	66 90                	xchg   %ax,%ax
  100dc7:	66 90                	xchg   %ax,%ax
  100dc9:	66 90                	xchg   %ax,%ax
  100dcb:	66 90                	xchg   %ax,%ax
  100dcd:	66 90                	xchg   %ax,%ax
  100dcf:	66 90                	xchg   %ax,%ax
  100dd1:	66 90                	xchg   %ax,%ax
  100dd3:	66 90                	xchg   %ax,%ax
  100dd5:	66 90                	xchg   %ax,%ax
  100dd7:	66 90                	xchg   %ax,%ax
  100dd9:	66 90                	xchg   %ax,%ax
  100ddb:	66 90                	xchg   %ax,%ax
  100ddd:	66 90                	xchg   %ax,%ax
  100ddf:	66 90                	xchg   %ax,%ax
  100de1:	66 90                	xchg   %ax,%ax
  100de3:	66 90                	xchg   %ax,%ax
  100de5:	66 90                	xchg   %ax,%ax
  100de7:	66 90                	xchg   %ax,%ax
  100de9:	66 90                	xchg   %ax,%ax
  100deb:	66 90                	xchg   %ax,%ax
  100ded:	66 90                	xchg   %ax,%ax
  100def:	66 90                	xchg   %ax,%ax
  100df1:	66 90                	xchg   %ax,%ax
  100df3:	66 90                	xchg   %ax,%ax
  100df5:	66 90                	xchg   %ax,%ax
  100df7:	66 90                	xchg   %ax,%ax
  100df9:	66 90                	xchg   %ax,%ax
  100dfb:	66 90                	xchg   %ax,%ax
  100dfd:	66 90                	xchg   %ax,%ax
  100dff:	66 90                	xchg   %ax,%ax
  100e01:	66 90                	xchg   %ax,%ax
  100e03:	66 90                	xchg   %ax,%ax
  100e05:	66 90                	xchg   %ax,%ax
  100e07:	66 90                	xchg   %ax,%ax
  100e09:	66 90                	xchg   %ax,%ax
  100e0b:	66 90                	xchg   %ax,%ax
  100e0d:	66 90                	xchg   %ax,%ax
  100e0f:	66 90                	xchg   %ax,%ax
  100e11:	66 90                	xchg   %ax,%ax
  100e13:	66 90                	xchg   %ax,%ax
  100e15:	66 90                	xchg   %ax,%ax
  100e17:	66 90                	xchg   %ax,%ax
  100e19:	66 90                	xchg   %ax,%ax
  100e1b:	66 90                	xchg   %ax,%ax
  100e1d:	66 90                	xchg   %ax,%ax
  100e1f:	66 90                	xchg   %ax,%ax
  100e21:	66 90                	xchg   %ax,%ax
  100e23:	66 90                	xchg   %ax,%ax
  100e25:	66 90                	xchg   %ax,%ax
  100e27:	66 90                	xchg   %ax,%ax
  100e29:	66 90                	xchg   %ax,%ax
  100e2b:	66 90                	xchg   %ax,%ax
  100e2d:	66 90                	xchg   %ax,%ax
  100e2f:	66 90                	xchg   %ax,%ax
  100e31:	66 90                	xchg   %ax,%ax
  100e33:	66 90                	xchg   %ax,%ax
  100e35:	66 90                	xchg   %ax,%ax
  100e37:	66 90                	xchg   %ax,%ax
  100e39:	66 90                	xchg   %ax,%ax
  100e3b:	66 90                	xchg   %ax,%ax
  100e3d:	66 90                	xchg   %ax,%ax
  100e3f:	66 90                	xchg   %ax,%ax
  100e41:	66 90                	xchg   %ax,%ax
  100e43:	66 90                	xchg   %ax,%ax
  100e45:	66 90                	xchg   %ax,%ax
  100e47:	66 90                	xchg   %ax,%ax
  100e49:	66 90                	xchg   %ax,%ax
  100e4b:	66 90                	xchg   %ax,%ax
  100e4d:	66 90                	xchg   %ax,%ax
  100e4f:	66 90                	xchg   %ax,%ax
  100e51:	66 90                	xchg   %ax,%ax
  100e53:	66 90                	xchg   %ax,%ax
  100e55:	66 90                	xchg   %ax,%ax
  100e57:	66 90                	xchg   %ax,%ax
  100e59:	66 90                	xchg   %ax,%ax
  100e5b:	66 90                	xchg   %ax,%ax
  100e5d:	66 90                	xchg   %ax,%ax
  100e5f:	66 90                	xchg   %ax,%ax
  100e61:	66 90                	xchg   %ax,%ax
  100e63:	66 90                	xchg   %ax,%ax
  100e65:	66 90                	xchg   %ax,%ax
  100e67:	66 90                	xchg   %ax,%ax
  100e69:	66 90                	xchg   %ax,%ax
  100e6b:	66 90                	xchg   %ax,%ax
  100e6d:	66 90                	xchg   %ax,%ax
  100e6f:	66 90                	xchg   %ax,%ax
  100e71:	66 90                	xchg   %ax,%ax
  100e73:	66 90                	xchg   %ax,%ax
  100e75:	66 90                	xchg   %ax,%ax
  100e77:	66 90                	xchg   %ax,%ax
  100e79:	66 90                	xchg   %ax,%ax
  100e7b:	66 90                	xchg   %ax,%ax
  100e7d:	66 90                	xchg   %ax,%ax
  100e7f:	66 90                	xchg   %ax,%ax
  100e81:	66 90                	xchg   %ax,%ax
  100e83:	66 90                	xchg   %ax,%ax
  100e85:	66 90                	xchg   %ax,%ax
  100e87:	66 90                	xchg   %ax,%ax
  100e89:	66 90                	xchg   %ax,%ax
  100e8b:	66 90                	xchg   %ax,%ax
  100e8d:	66 90                	xchg   %ax,%ax
  100e8f:	66 90                	xchg   %ax,%ax
  100e91:	66 90                	xchg   %ax,%ax
  100e93:	66 90                	xchg   %ax,%ax
  100e95:	66 90                	xchg   %ax,%ax
  100e97:	66 90                	xchg   %ax,%ax
  100e99:	66 90                	xchg   %ax,%ax
  100e9b:	66 90                	xchg   %ax,%ax
  100e9d:	66 90                	xchg   %ax,%ax
  100e9f:	66 90                	xchg   %ax,%ax
  100ea1:	66 90                	xchg   %ax,%ax
  100ea3:	66 90                	xchg   %ax,%ax
  100ea5:	66 90                	xchg   %ax,%ax
  100ea7:	66 90                	xchg   %ax,%ax
  100ea9:	66 90                	xchg   %ax,%ax
  100eab:	66 90                	xchg   %ax,%ax
  100ead:	66 90                	xchg   %ax,%ax
  100eaf:	66 90                	xchg   %ax,%ax
  100eb1:	66 90                	xchg   %ax,%ax
  100eb3:	66 90                	xchg   %ax,%ax
  100eb5:	66 90                	xchg   %ax,%ax
  100eb7:	66 90                	xchg   %ax,%ax
  100eb9:	66 90                	xchg   %ax,%ax
  100ebb:	66 90                	xchg   %ax,%ax
  100ebd:	66 90                	xchg   %ax,%ax
  100ebf:	66 90                	xchg   %ax,%ax
  100ec1:	66 90                	xchg   %ax,%ax
  100ec3:	66 90                	xchg   %ax,%ax
  100ec5:	66 90                	xchg   %ax,%ax
  100ec7:	66 90                	xchg   %ax,%ax
  100ec9:	66 90                	xchg   %ax,%ax
  100ecb:	66 90                	xchg   %ax,%ax
  100ecd:	66 90                	xchg   %ax,%ax
  100ecf:	66 90                	xchg   %ax,%ax
  100ed1:	66 90                	xchg   %ax,%ax
  100ed3:	66 90                	xchg   %ax,%ax
  100ed5:	66 90                	xchg   %ax,%ax
  100ed7:	66 90                	xchg   %ax,%ax
  100ed9:	66 90                	xchg   %ax,%ax
  100edb:	66 90                	xchg   %ax,%ax
  100edd:	66 90                	xchg   %ax,%ax
  100edf:	66 90                	xchg   %ax,%ax
  100ee1:	66 90                	xchg   %ax,%ax
  100ee3:	66 90                	xchg   %ax,%ax
  100ee5:	66 90                	xchg   %ax,%ax
  100ee7:	66 90                	xchg   %ax,%ax
  100ee9:	66 90                	xchg   %ax,%ax
  100eeb:	66 90                	xchg   %ax,%ax
  100eed:	66 90                	xchg   %ax,%ax
  100eef:	66 90                	xchg   %ax,%ax
  100ef1:	66 90                	xchg   %ax,%ax
  100ef3:	66 90                	xchg   %ax,%ax
  100ef5:	66 90                	xchg   %ax,%ax
  100ef7:	66 90                	xchg   %ax,%ax
  100ef9:	66 90                	xchg   %ax,%ax
  100efb:	66 90                	xchg   %ax,%ax
  100efd:	66 90                	xchg   %ax,%ax
  100eff:	66 90                	xchg   %ax,%ax
  100f01:	66 90                	xchg   %ax,%ax
  100f03:	66 90                	xchg   %ax,%ax
  100f05:	66 90                	xchg   %ax,%ax
  100f07:	66 90                	xchg   %ax,%ax
  100f09:	66 90                	xchg   %ax,%ax
  100f0b:	66 90                	xchg   %ax,%ax
  100f0d:	66 90                	xchg   %ax,%ax
  100f0f:	66 90                	xchg   %ax,%ax
  100f11:	66 90                	xchg   %ax,%ax
  100f13:	66 90                	xchg   %ax,%ax
  100f15:	66 90                	xchg   %ax,%ax
  100f17:	66 90                	xchg   %ax,%ax
  100f19:	66 90                	xchg   %ax,%ax
  100f1b:	66 90                	xchg   %ax,%ax
  100f1d:	66 90                	xchg   %ax,%ax
  100f1f:	66 90                	xchg   %ax,%ax
  100f21:	66 90                	xchg   %ax,%ax
  100f23:	66 90                	xchg   %ax,%ax
  100f25:	66 90                	xchg   %ax,%ax
  100f27:	66 90                	xchg   %ax,%ax
  100f29:	66 90                	xchg   %ax,%ax
  100f2b:	66 90                	xchg   %ax,%ax
  100f2d:	66 90                	xchg   %ax,%ax
  100f2f:	66 90                	xchg   %ax,%ax
  100f31:	66 90                	xchg   %ax,%ax
  100f33:	66 90                	xchg   %ax,%ax
  100f35:	66 90                	xchg   %ax,%ax
  100f37:	66 90                	xchg   %ax,%ax
  100f39:	66 90                	xchg   %ax,%ax
  100f3b:	66 90                	xchg   %ax,%ax
  100f3d:	66 90                	xchg   %ax,%ax
  100f3f:	66 90                	xchg   %ax,%ax
  100f41:	66 90                	xchg   %ax,%ax
  100f43:	66 90                	xchg   %ax,%ax
  100f45:	66 90                	xchg   %ax,%ax
  100f47:	66 90                	xchg   %ax,%ax
  100f49:	66 90                	xchg   %ax,%ax
  100f4b:	66 90                	xchg   %ax,%ax
  100f4d:	66 90                	xchg   %ax,%ax
  100f4f:	66 90                	xchg   %ax,%ax
  100f51:	66 90                	xchg   %ax,%ax
  100f53:	66 90                	xchg   %ax,%ax
  100f55:	66 90                	xchg   %ax,%ax
  100f57:	66 90                	xchg   %ax,%ax
  100f59:	66 90                	xchg   %ax,%ax
  100f5b:	66 90                	xchg   %ax,%ax
  100f5d:	66 90                	xchg   %ax,%ax
  100f5f:	66 90                	xchg   %ax,%ax
  100f61:	66 90                	xchg   %ax,%ax
  100f63:	66 90                	xchg   %ax,%ax
  100f65:	66 90                	xchg   %ax,%ax
  100f67:	66 90                	xchg   %ax,%ax
  100f69:	66 90                	xchg   %ax,%ax
  100f6b:	66 90                	xchg   %ax,%ax
  100f6d:	66 90                	xchg   %ax,%ax
  100f6f:	66 90                	xchg   %ax,%ax
  100f71:	66 90                	xchg   %ax,%ax
  100f73:	66 90                	xchg   %ax,%ax
  100f75:	66 90                	xchg   %ax,%ax
  100f77:	66 90                	xchg   %ax,%ax
  100f79:	66 90                	xchg   %ax,%ax
  100f7b:	66 90                	xchg   %ax,%ax
  100f7d:	66 90                	xchg   %ax,%ax
  100f7f:	66 90                	xchg   %ax,%ax
  100f81:	66 90                	xchg   %ax,%ax
  100f83:	66 90                	xchg   %ax,%ax
  100f85:	66 90                	xchg   %ax,%ax
  100f87:	66 90                	xchg   %ax,%ax
  100f89:	66 90                	xchg   %ax,%ax
  100f8b:	66 90                	xchg   %ax,%ax
  100f8d:	66 90                	xchg   %ax,%ax
  100f8f:	66 90                	xchg   %ax,%ax
  100f91:	66 90                	xchg   %ax,%ax
  100f93:	66 90                	xchg   %ax,%ax
  100f95:	66 90                	xchg   %ax,%ax
  100f97:	66 90                	xchg   %ax,%ax
  100f99:	66 90                	xchg   %ax,%ax
  100f9b:	66 90                	xchg   %ax,%ax
  100f9d:	66 90                	xchg   %ax,%ax
  100f9f:	66 90                	xchg   %ax,%ax
  100fa1:	66 90                	xchg   %ax,%ax
  100fa3:	66 90                	xchg   %ax,%ax
  100fa5:	66 90                	xchg   %ax,%ax
  100fa7:	66 90                	xchg   %ax,%ax
  100fa9:	66 90                	xchg   %ax,%ax
  100fab:	66 90                	xchg   %ax,%ax
  100fad:	66 90                	xchg   %ax,%ax
  100faf:	66 90                	xchg   %ax,%ax
  100fb1:	66 90                	xchg   %ax,%ax
  100fb3:	66 90                	xchg   %ax,%ax
  100fb5:	66 90                	xchg   %ax,%ax
  100fb7:	66 90                	xchg   %ax,%ax
  100fb9:	66 90                	xchg   %ax,%ax
  100fbb:	66 90                	xchg   %ax,%ax
  100fbd:	66 90                	xchg   %ax,%ax
  100fbf:	66 90                	xchg   %ax,%ax
  100fc1:	66 90                	xchg   %ax,%ax
  100fc3:	66 90                	xchg   %ax,%ax
  100fc5:	66 90                	xchg   %ax,%ax
  100fc7:	66 90                	xchg   %ax,%ax
  100fc9:	66 90                	xchg   %ax,%ax
  100fcb:	66 90                	xchg   %ax,%ax
  100fcd:	66 90                	xchg   %ax,%ax
  100fcf:	66 90                	xchg   %ax,%ax
  100fd1:	66 90                	xchg   %ax,%ax
  100fd3:	66 90                	xchg   %ax,%ax
  100fd5:	66 90                	xchg   %ax,%ax
  100fd7:	66 90                	xchg   %ax,%ax
  100fd9:	66 90                	xchg   %ax,%ax
  100fdb:	66 90                	xchg   %ax,%ax
  100fdd:	66 90                	xchg   %ax,%ax
  100fdf:	66 90                	xchg   %ax,%ax
  100fe1:	66 90                	xchg   %ax,%ax
  100fe3:	66 90                	xchg   %ax,%ax
  100fe5:	66 90                	xchg   %ax,%ax
  100fe7:	66 90                	xchg   %ax,%ax
  100fe9:	66 90                	xchg   %ax,%ax
  100feb:	66 90                	xchg   %ax,%ax
  100fed:	66 90                	xchg   %ax,%ax
  100fef:	66 90                	xchg   %ax,%ax
  100ff1:	66 90                	xchg   %ax,%ax
  100ff3:	66 90                	xchg   %ax,%ax
  100ff5:	66 90                	xchg   %ax,%ax
  100ff7:	66 90                	xchg   %ax,%ax
  100ff9:	66 90                	xchg   %ax,%ax
  100ffb:	66 90                	xchg   %ax,%ax
  100ffd:	66 90                	xchg   %ax,%ax
  100fff:	90                   	nop
