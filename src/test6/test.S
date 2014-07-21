
shui：     文件格式 elf32-i386


Disassembly of section .init.text:

00100000 <start-0xc>:
  100000:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  100006:	00 00                	add    %al,(%eax)
  100008:	fb                   	sti    
  100009:	4f                   	dec    %edi
  10000a:	52                   	push   %edx
  10000b:	e4 fa                	in     $0xfa,%al

0010000c <start>:
  10000c:	fa                   	cli    
  10000d:	89 1d 00 14 10 00    	mov    %ebx,0x101400
  100013:	bc ff 03 00 00       	mov    $0x3ff,%esp
  100018:	83 e4 f0             	and    $0xfffffff0,%esp
  10001b:	bd 00 00 00 00       	mov    $0x0,%ebp
  100020:	e8 00 00 00 00       	call   100025 <entry>

00100025 <entry>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	53                   	push   %ebx
  100029:	83 ec 14             	sub    $0x14,%esp
  10002c:	a1 04 14 10 00       	mov    0x101404,%eax
  100031:	8b 15 08 14 10 00    	mov    0x101408,%edx
  100037:	83 ca 03             	or     $0x3,%edx
  10003a:	89 10                	mov    %edx,(%eax)
  10003c:	a1 04 14 10 00       	mov    0x101404,%eax
  100041:	05 00 0c 00 00       	add    $0xc00,%eax
  100046:	8b 15 0c 14 10 00    	mov    0x10140c,%edx
  10004c:	83 ca 03             	or     $0x3,%edx
  10004f:	89 10                	mov    %edx,(%eax)
  100051:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100058:	eb 1c                	jmp    100076 <entry+0x51>
  10005a:	a1 08 14 10 00       	mov    0x101408,%eax
  10005f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100062:	c1 e2 02             	shl    $0x2,%edx
  100065:	01 c2                	add    %eax,%edx
  100067:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10006a:	c1 e0 0c             	shl    $0xc,%eax
  10006d:	83 c8 03             	or     $0x3,%eax
  100070:	89 02                	mov    %eax,(%edx)
  100072:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100076:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  10007d:	7e db                	jle    10005a <entry+0x35>
  10007f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100086:	eb 1c                	jmp    1000a4 <entry+0x7f>
  100088:	a1 0c 14 10 00       	mov    0x10140c,%eax
  10008d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100090:	c1 e2 02             	shl    $0x2,%edx
  100093:	01 c2                	add    %eax,%edx
  100095:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100098:	c1 e0 0c             	shl    $0xc,%eax
  10009b:	83 c8 03             	or     $0x3,%eax
  10009e:	89 02                	mov    %eax,(%edx)
  1000a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000a4:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
  1000ab:	7e db                	jle    100088 <entry+0x63>
  1000ad:	a1 04 14 10 00       	mov    0x101404,%eax
  1000b2:	0f 22 d8             	mov    %eax,%cr3
  1000b5:	0f 20 c3             	mov    %cr0,%ebx
  1000b8:	89 5d f0             	mov    %ebx,-0x10(%ebp)
  1000bb:	81 4d f0 00 00 00 80 	orl    $0x80000000,-0x10(%ebp)
  1000c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1000c5:	0f 22 c0             	mov    %eax,%cr0
  1000c8:	b8 40 90 20 c0       	mov    $0xc0209040,%eax
  1000cd:	05 00 20 00 00       	add    $0x2000,%eax
  1000d2:	83 e0 f0             	and    $0xfffffff0,%eax
  1000d5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000d8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000db:	89 c4                	mov    %eax,%esp
  1000dd:	31 ed                	xor    %ebp,%ebp
  1000df:	a1 00 14 10 00       	mov    0x101400,%eax
  1000e4:	a3 20 90 20 c0       	mov    %eax,0xc0209020
  1000e9:	e8 02 34 00 c0       	call   c01034f0 <kernel_init>
  1000ee:	83 c4 14             	add    $0x14,%esp
  1000f1:	5b                   	pop    %ebx
  1000f2:	5d                   	pop    %ebp
  1000f3:	c3                   	ret    
  1000f4:	66 90                	xchg   %ax,%ax
  1000f6:	66 90                	xchg   %ax,%ax
  1000f8:	66 90                	xchg   %ax,%ax
  1000fa:	66 90                	xchg   %ax,%ax
  1000fc:	66 90                	xchg   %ax,%ax
  1000fe:	66 90                	xchg   %ax,%ax
  100100:	66 90                	xchg   %ax,%ax
  100102:	66 90                	xchg   %ax,%ax
  100104:	66 90                	xchg   %ax,%ax
  100106:	66 90                	xchg   %ax,%ax
  100108:	66 90                	xchg   %ax,%ax
  10010a:	66 90                	xchg   %ax,%ax
  10010c:	66 90                	xchg   %ax,%ax
  10010e:	66 90                	xchg   %ax,%ax
  100110:	66 90                	xchg   %ax,%ax
  100112:	66 90                	xchg   %ax,%ax
  100114:	66 90                	xchg   %ax,%ax
  100116:	66 90                	xchg   %ax,%ax
  100118:	66 90                	xchg   %ax,%ax
  10011a:	66 90                	xchg   %ax,%ax
  10011c:	66 90                	xchg   %ax,%ax
  10011e:	66 90                	xchg   %ax,%ax
  100120:	66 90                	xchg   %ax,%ax
  100122:	66 90                	xchg   %ax,%ax
  100124:	66 90                	xchg   %ax,%ax
  100126:	66 90                	xchg   %ax,%ax
  100128:	66 90                	xchg   %ax,%ax
  10012a:	66 90                	xchg   %ax,%ax
  10012c:	66 90                	xchg   %ax,%ax
  10012e:	66 90                	xchg   %ax,%ax
  100130:	66 90                	xchg   %ax,%ax
  100132:	66 90                	xchg   %ax,%ax
  100134:	66 90                	xchg   %ax,%ax
  100136:	66 90                	xchg   %ax,%ax
  100138:	66 90                	xchg   %ax,%ax
  10013a:	66 90                	xchg   %ax,%ax
  10013c:	66 90                	xchg   %ax,%ax
  10013e:	66 90                	xchg   %ax,%ax
  100140:	66 90                	xchg   %ax,%ax
  100142:	66 90                	xchg   %ax,%ax
  100144:	66 90                	xchg   %ax,%ax
  100146:	66 90                	xchg   %ax,%ax
  100148:	66 90                	xchg   %ax,%ax
  10014a:	66 90                	xchg   %ax,%ax
  10014c:	66 90                	xchg   %ax,%ax
  10014e:	66 90                	xchg   %ax,%ax
  100150:	66 90                	xchg   %ax,%ax
  100152:	66 90                	xchg   %ax,%ax
  100154:	66 90                	xchg   %ax,%ax
  100156:	66 90                	xchg   %ax,%ax
  100158:	66 90                	xchg   %ax,%ax
  10015a:	66 90                	xchg   %ax,%ax
  10015c:	66 90                	xchg   %ax,%ax
  10015e:	66 90                	xchg   %ax,%ax
  100160:	66 90                	xchg   %ax,%ax
  100162:	66 90                	xchg   %ax,%ax
  100164:	66 90                	xchg   %ax,%ax
  100166:	66 90                	xchg   %ax,%ax
  100168:	66 90                	xchg   %ax,%ax
  10016a:	66 90                	xchg   %ax,%ax
  10016c:	66 90                	xchg   %ax,%ax
  10016e:	66 90                	xchg   %ax,%ax
  100170:	66 90                	xchg   %ax,%ax
  100172:	66 90                	xchg   %ax,%ax
  100174:	66 90                	xchg   %ax,%ax
  100176:	66 90                	xchg   %ax,%ax
  100178:	66 90                	xchg   %ax,%ax
  10017a:	66 90                	xchg   %ax,%ax
  10017c:	66 90                	xchg   %ax,%ax
  10017e:	66 90                	xchg   %ax,%ax
  100180:	66 90                	xchg   %ax,%ax
  100182:	66 90                	xchg   %ax,%ax
  100184:	66 90                	xchg   %ax,%ax
  100186:	66 90                	xchg   %ax,%ax
  100188:	66 90                	xchg   %ax,%ax
  10018a:	66 90                	xchg   %ax,%ax
  10018c:	66 90                	xchg   %ax,%ax
  10018e:	66 90                	xchg   %ax,%ax
  100190:	66 90                	xchg   %ax,%ax
  100192:	66 90                	xchg   %ax,%ax
  100194:	66 90                	xchg   %ax,%ax
  100196:	66 90                	xchg   %ax,%ax
  100198:	66 90                	xchg   %ax,%ax
  10019a:	66 90                	xchg   %ax,%ax
  10019c:	66 90                	xchg   %ax,%ax
  10019e:	66 90                	xchg   %ax,%ax
  1001a0:	66 90                	xchg   %ax,%ax
  1001a2:	66 90                	xchg   %ax,%ax
  1001a4:	66 90                	xchg   %ax,%ax
  1001a6:	66 90                	xchg   %ax,%ax
  1001a8:	66 90                	xchg   %ax,%ax
  1001aa:	66 90                	xchg   %ax,%ax
  1001ac:	66 90                	xchg   %ax,%ax
  1001ae:	66 90                	xchg   %ax,%ax
  1001b0:	66 90                	xchg   %ax,%ax
  1001b2:	66 90                	xchg   %ax,%ax
  1001b4:	66 90                	xchg   %ax,%ax
  1001b6:	66 90                	xchg   %ax,%ax
  1001b8:	66 90                	xchg   %ax,%ax
  1001ba:	66 90                	xchg   %ax,%ax
  1001bc:	66 90                	xchg   %ax,%ax
  1001be:	66 90                	xchg   %ax,%ax
  1001c0:	66 90                	xchg   %ax,%ax
  1001c2:	66 90                	xchg   %ax,%ax
  1001c4:	66 90                	xchg   %ax,%ax
  1001c6:	66 90                	xchg   %ax,%ax
  1001c8:	66 90                	xchg   %ax,%ax
  1001ca:	66 90                	xchg   %ax,%ax
  1001cc:	66 90                	xchg   %ax,%ax
  1001ce:	66 90                	xchg   %ax,%ax
  1001d0:	66 90                	xchg   %ax,%ax
  1001d2:	66 90                	xchg   %ax,%ax
  1001d4:	66 90                	xchg   %ax,%ax
  1001d6:	66 90                	xchg   %ax,%ax
  1001d8:	66 90                	xchg   %ax,%ax
  1001da:	66 90                	xchg   %ax,%ax
  1001dc:	66 90                	xchg   %ax,%ax
  1001de:	66 90                	xchg   %ax,%ax
  1001e0:	66 90                	xchg   %ax,%ax
  1001e2:	66 90                	xchg   %ax,%ax
  1001e4:	66 90                	xchg   %ax,%ax
  1001e6:	66 90                	xchg   %ax,%ax
  1001e8:	66 90                	xchg   %ax,%ax
  1001ea:	66 90                	xchg   %ax,%ax
  1001ec:	66 90                	xchg   %ax,%ax
  1001ee:	66 90                	xchg   %ax,%ax
  1001f0:	66 90                	xchg   %ax,%ax
  1001f2:	66 90                	xchg   %ax,%ax
  1001f4:	66 90                	xchg   %ax,%ax
  1001f6:	66 90                	xchg   %ax,%ax
  1001f8:	66 90                	xchg   %ax,%ax
  1001fa:	66 90                	xchg   %ax,%ax
  1001fc:	66 90                	xchg   %ax,%ax
  1001fe:	66 90                	xchg   %ax,%ax
  100200:	66 90                	xchg   %ax,%ax
  100202:	66 90                	xchg   %ax,%ax
  100204:	66 90                	xchg   %ax,%ax
  100206:	66 90                	xchg   %ax,%ax
  100208:	66 90                	xchg   %ax,%ax
  10020a:	66 90                	xchg   %ax,%ax
  10020c:	66 90                	xchg   %ax,%ax
  10020e:	66 90                	xchg   %ax,%ax
  100210:	66 90                	xchg   %ax,%ax
  100212:	66 90                	xchg   %ax,%ax
  100214:	66 90                	xchg   %ax,%ax
  100216:	66 90                	xchg   %ax,%ax
  100218:	66 90                	xchg   %ax,%ax
  10021a:	66 90                	xchg   %ax,%ax
  10021c:	66 90                	xchg   %ax,%ax
  10021e:	66 90                	xchg   %ax,%ax
  100220:	66 90                	xchg   %ax,%ax
  100222:	66 90                	xchg   %ax,%ax
  100224:	66 90                	xchg   %ax,%ax
  100226:	66 90                	xchg   %ax,%ax
  100228:	66 90                	xchg   %ax,%ax
  10022a:	66 90                	xchg   %ax,%ax
  10022c:	66 90                	xchg   %ax,%ax
  10022e:	66 90                	xchg   %ax,%ax
  100230:	66 90                	xchg   %ax,%ax
  100232:	66 90                	xchg   %ax,%ax
  100234:	66 90                	xchg   %ax,%ax
  100236:	66 90                	xchg   %ax,%ax
  100238:	66 90                	xchg   %ax,%ax
  10023a:	66 90                	xchg   %ax,%ax
  10023c:	66 90                	xchg   %ax,%ax
  10023e:	66 90                	xchg   %ax,%ax
  100240:	66 90                	xchg   %ax,%ax
  100242:	66 90                	xchg   %ax,%ax
  100244:	66 90                	xchg   %ax,%ax
  100246:	66 90                	xchg   %ax,%ax
  100248:	66 90                	xchg   %ax,%ax
  10024a:	66 90                	xchg   %ax,%ax
  10024c:	66 90                	xchg   %ax,%ax
  10024e:	66 90                	xchg   %ax,%ax
  100250:	66 90                	xchg   %ax,%ax
  100252:	66 90                	xchg   %ax,%ax
  100254:	66 90                	xchg   %ax,%ax
  100256:	66 90                	xchg   %ax,%ax
  100258:	66 90                	xchg   %ax,%ax
  10025a:	66 90                	xchg   %ax,%ax
  10025c:	66 90                	xchg   %ax,%ax
  10025e:	66 90                	xchg   %ax,%ax
  100260:	66 90                	xchg   %ax,%ax
  100262:	66 90                	xchg   %ax,%ax
  100264:	66 90                	xchg   %ax,%ax
  100266:	66 90                	xchg   %ax,%ax
  100268:	66 90                	xchg   %ax,%ax
  10026a:	66 90                	xchg   %ax,%ax
  10026c:	66 90                	xchg   %ax,%ax
  10026e:	66 90                	xchg   %ax,%ax
  100270:	66 90                	xchg   %ax,%ax
  100272:	66 90                	xchg   %ax,%ax
  100274:	66 90                	xchg   %ax,%ax
  100276:	66 90                	xchg   %ax,%ax
  100278:	66 90                	xchg   %ax,%ax
  10027a:	66 90                	xchg   %ax,%ax
  10027c:	66 90                	xchg   %ax,%ax
  10027e:	66 90                	xchg   %ax,%ax
  100280:	66 90                	xchg   %ax,%ax
  100282:	66 90                	xchg   %ax,%ax
  100284:	66 90                	xchg   %ax,%ax
  100286:	66 90                	xchg   %ax,%ax
  100288:	66 90                	xchg   %ax,%ax
  10028a:	66 90                	xchg   %ax,%ax
  10028c:	66 90                	xchg   %ax,%ax
  10028e:	66 90                	xchg   %ax,%ax
  100290:	66 90                	xchg   %ax,%ax
  100292:	66 90                	xchg   %ax,%ax
  100294:	66 90                	xchg   %ax,%ax
  100296:	66 90                	xchg   %ax,%ax
  100298:	66 90                	xchg   %ax,%ax
  10029a:	66 90                	xchg   %ax,%ax
  10029c:	66 90                	xchg   %ax,%ax
  10029e:	66 90                	xchg   %ax,%ax
  1002a0:	66 90                	xchg   %ax,%ax
  1002a2:	66 90                	xchg   %ax,%ax
  1002a4:	66 90                	xchg   %ax,%ax
  1002a6:	66 90                	xchg   %ax,%ax
  1002a8:	66 90                	xchg   %ax,%ax
  1002aa:	66 90                	xchg   %ax,%ax
  1002ac:	66 90                	xchg   %ax,%ax
  1002ae:	66 90                	xchg   %ax,%ax
  1002b0:	66 90                	xchg   %ax,%ax
  1002b2:	66 90                	xchg   %ax,%ax
  1002b4:	66 90                	xchg   %ax,%ax
  1002b6:	66 90                	xchg   %ax,%ax
  1002b8:	66 90                	xchg   %ax,%ax
  1002ba:	66 90                	xchg   %ax,%ax
  1002bc:	66 90                	xchg   %ax,%ax
  1002be:	66 90                	xchg   %ax,%ax
  1002c0:	66 90                	xchg   %ax,%ax
  1002c2:	66 90                	xchg   %ax,%ax
  1002c4:	66 90                	xchg   %ax,%ax
  1002c6:	66 90                	xchg   %ax,%ax
  1002c8:	66 90                	xchg   %ax,%ax
  1002ca:	66 90                	xchg   %ax,%ax
  1002cc:	66 90                	xchg   %ax,%ax
  1002ce:	66 90                	xchg   %ax,%ax
  1002d0:	66 90                	xchg   %ax,%ax
  1002d2:	66 90                	xchg   %ax,%ax
  1002d4:	66 90                	xchg   %ax,%ax
  1002d6:	66 90                	xchg   %ax,%ax
  1002d8:	66 90                	xchg   %ax,%ax
  1002da:	66 90                	xchg   %ax,%ax
  1002dc:	66 90                	xchg   %ax,%ax
  1002de:	66 90                	xchg   %ax,%ax
  1002e0:	66 90                	xchg   %ax,%ax
  1002e2:	66 90                	xchg   %ax,%ax
  1002e4:	66 90                	xchg   %ax,%ax
  1002e6:	66 90                	xchg   %ax,%ax
  1002e8:	66 90                	xchg   %ax,%ax
  1002ea:	66 90                	xchg   %ax,%ax
  1002ec:	66 90                	xchg   %ax,%ax
  1002ee:	66 90                	xchg   %ax,%ax
  1002f0:	66 90                	xchg   %ax,%ax
  1002f2:	66 90                	xchg   %ax,%ax
  1002f4:	66 90                	xchg   %ax,%ax
  1002f6:	66 90                	xchg   %ax,%ax
  1002f8:	66 90                	xchg   %ax,%ax
  1002fa:	66 90                	xchg   %ax,%ax
  1002fc:	66 90                	xchg   %ax,%ax
  1002fe:	66 90                	xchg   %ax,%ax
  100300:	66 90                	xchg   %ax,%ax
  100302:	66 90                	xchg   %ax,%ax
  100304:	66 90                	xchg   %ax,%ax
  100306:	66 90                	xchg   %ax,%ax
  100308:	66 90                	xchg   %ax,%ax
  10030a:	66 90                	xchg   %ax,%ax
  10030c:	66 90                	xchg   %ax,%ax
  10030e:	66 90                	xchg   %ax,%ax
  100310:	66 90                	xchg   %ax,%ax
  100312:	66 90                	xchg   %ax,%ax
  100314:	66 90                	xchg   %ax,%ax
  100316:	66 90                	xchg   %ax,%ax
  100318:	66 90                	xchg   %ax,%ax
  10031a:	66 90                	xchg   %ax,%ax
  10031c:	66 90                	xchg   %ax,%ax
  10031e:	66 90                	xchg   %ax,%ax
  100320:	66 90                	xchg   %ax,%ax
  100322:	66 90                	xchg   %ax,%ax
  100324:	66 90                	xchg   %ax,%ax
  100326:	66 90                	xchg   %ax,%ax
  100328:	66 90                	xchg   %ax,%ax
  10032a:	66 90                	xchg   %ax,%ax
  10032c:	66 90                	xchg   %ax,%ax
  10032e:	66 90                	xchg   %ax,%ax
  100330:	66 90                	xchg   %ax,%ax
  100332:	66 90                	xchg   %ax,%ax
  100334:	66 90                	xchg   %ax,%ax
  100336:	66 90                	xchg   %ax,%ax
  100338:	66 90                	xchg   %ax,%ax
  10033a:	66 90                	xchg   %ax,%ax
  10033c:	66 90                	xchg   %ax,%ax
  10033e:	66 90                	xchg   %ax,%ax
  100340:	66 90                	xchg   %ax,%ax
  100342:	66 90                	xchg   %ax,%ax
  100344:	66 90                	xchg   %ax,%ax
  100346:	66 90                	xchg   %ax,%ax
  100348:	66 90                	xchg   %ax,%ax
  10034a:	66 90                	xchg   %ax,%ax
  10034c:	66 90                	xchg   %ax,%ax
  10034e:	66 90                	xchg   %ax,%ax
  100350:	66 90                	xchg   %ax,%ax
  100352:	66 90                	xchg   %ax,%ax
  100354:	66 90                	xchg   %ax,%ax
  100356:	66 90                	xchg   %ax,%ax
  100358:	66 90                	xchg   %ax,%ax
  10035a:	66 90                	xchg   %ax,%ax
  10035c:	66 90                	xchg   %ax,%ax
  10035e:	66 90                	xchg   %ax,%ax
  100360:	66 90                	xchg   %ax,%ax
  100362:	66 90                	xchg   %ax,%ax
  100364:	66 90                	xchg   %ax,%ax
  100366:	66 90                	xchg   %ax,%ax
  100368:	66 90                	xchg   %ax,%ax
  10036a:	66 90                	xchg   %ax,%ax
  10036c:	66 90                	xchg   %ax,%ax
  10036e:	66 90                	xchg   %ax,%ax
  100370:	66 90                	xchg   %ax,%ax
  100372:	66 90                	xchg   %ax,%ax
  100374:	66 90                	xchg   %ax,%ax
  100376:	66 90                	xchg   %ax,%ax
  100378:	66 90                	xchg   %ax,%ax
  10037a:	66 90                	xchg   %ax,%ax
  10037c:	66 90                	xchg   %ax,%ax
  10037e:	66 90                	xchg   %ax,%ax
  100380:	66 90                	xchg   %ax,%ax
  100382:	66 90                	xchg   %ax,%ax
  100384:	66 90                	xchg   %ax,%ax
  100386:	66 90                	xchg   %ax,%ax
  100388:	66 90                	xchg   %ax,%ax
  10038a:	66 90                	xchg   %ax,%ax
  10038c:	66 90                	xchg   %ax,%ax
  10038e:	66 90                	xchg   %ax,%ax
  100390:	66 90                	xchg   %ax,%ax
  100392:	66 90                	xchg   %ax,%ax
  100394:	66 90                	xchg   %ax,%ax
  100396:	66 90                	xchg   %ax,%ax
  100398:	66 90                	xchg   %ax,%ax
  10039a:	66 90                	xchg   %ax,%ax
  10039c:	66 90                	xchg   %ax,%ax
  10039e:	66 90                	xchg   %ax,%ax
  1003a0:	66 90                	xchg   %ax,%ax
  1003a2:	66 90                	xchg   %ax,%ax
  1003a4:	66 90                	xchg   %ax,%ax
  1003a6:	66 90                	xchg   %ax,%ax
  1003a8:	66 90                	xchg   %ax,%ax
  1003aa:	66 90                	xchg   %ax,%ax
  1003ac:	66 90                	xchg   %ax,%ax
  1003ae:	66 90                	xchg   %ax,%ax
  1003b0:	66 90                	xchg   %ax,%ax
  1003b2:	66 90                	xchg   %ax,%ax
  1003b4:	66 90                	xchg   %ax,%ax
  1003b6:	66 90                	xchg   %ax,%ax
  1003b8:	66 90                	xchg   %ax,%ax
  1003ba:	66 90                	xchg   %ax,%ax
  1003bc:	66 90                	xchg   %ax,%ax
  1003be:	66 90                	xchg   %ax,%ax
  1003c0:	66 90                	xchg   %ax,%ax
  1003c2:	66 90                	xchg   %ax,%ax
  1003c4:	66 90                	xchg   %ax,%ax
  1003c6:	66 90                	xchg   %ax,%ax
  1003c8:	66 90                	xchg   %ax,%ax
  1003ca:	66 90                	xchg   %ax,%ax
  1003cc:	66 90                	xchg   %ax,%ax
  1003ce:	66 90                	xchg   %ax,%ax
  1003d0:	66 90                	xchg   %ax,%ax
  1003d2:	66 90                	xchg   %ax,%ax
  1003d4:	66 90                	xchg   %ax,%ax
  1003d6:	66 90                	xchg   %ax,%ax
  1003d8:	66 90                	xchg   %ax,%ax
  1003da:	66 90                	xchg   %ax,%ax
  1003dc:	66 90                	xchg   %ax,%ax
  1003de:	66 90                	xchg   %ax,%ax
  1003e0:	66 90                	xchg   %ax,%ax
  1003e2:	66 90                	xchg   %ax,%ax
  1003e4:	66 90                	xchg   %ax,%ax
  1003e6:	66 90                	xchg   %ax,%ax
  1003e8:	66 90                	xchg   %ax,%ax
  1003ea:	66 90                	xchg   %ax,%ax
  1003ec:	66 90                	xchg   %ax,%ax
  1003ee:	66 90                	xchg   %ax,%ax
  1003f0:	66 90                	xchg   %ax,%ax
  1003f2:	66 90                	xchg   %ax,%ax
  1003f4:	66 90                	xchg   %ax,%ax
  1003f6:	66 90                	xchg   %ax,%ax
  1003f8:	66 90                	xchg   %ax,%ax
  1003fa:	66 90                	xchg   %ax,%ax
  1003fc:	66 90                	xchg   %ax,%ax
  1003fe:	66 90                	xchg   %ax,%ax
  100400:	66 90                	xchg   %ax,%ax
  100402:	66 90                	xchg   %ax,%ax
  100404:	66 90                	xchg   %ax,%ax
  100406:	66 90                	xchg   %ax,%ax
  100408:	66 90                	xchg   %ax,%ax
  10040a:	66 90                	xchg   %ax,%ax
  10040c:	66 90                	xchg   %ax,%ax
  10040e:	66 90                	xchg   %ax,%ax
  100410:	66 90                	xchg   %ax,%ax
  100412:	66 90                	xchg   %ax,%ax
  100414:	66 90                	xchg   %ax,%ax
  100416:	66 90                	xchg   %ax,%ax
  100418:	66 90                	xchg   %ax,%ax
  10041a:	66 90                	xchg   %ax,%ax
  10041c:	66 90                	xchg   %ax,%ax
  10041e:	66 90                	xchg   %ax,%ax
  100420:	66 90                	xchg   %ax,%ax
  100422:	66 90                	xchg   %ax,%ax
  100424:	66 90                	xchg   %ax,%ax
  100426:	66 90                	xchg   %ax,%ax
  100428:	66 90                	xchg   %ax,%ax
  10042a:	66 90                	xchg   %ax,%ax
  10042c:	66 90                	xchg   %ax,%ax
  10042e:	66 90                	xchg   %ax,%ax
  100430:	66 90                	xchg   %ax,%ax
  100432:	66 90                	xchg   %ax,%ax
  100434:	66 90                	xchg   %ax,%ax
  100436:	66 90                	xchg   %ax,%ax
  100438:	66 90                	xchg   %ax,%ax
  10043a:	66 90                	xchg   %ax,%ax
  10043c:	66 90                	xchg   %ax,%ax
  10043e:	66 90                	xchg   %ax,%ax
  100440:	66 90                	xchg   %ax,%ax
  100442:	66 90                	xchg   %ax,%ax
  100444:	66 90                	xchg   %ax,%ax
  100446:	66 90                	xchg   %ax,%ax
  100448:	66 90                	xchg   %ax,%ax
  10044a:	66 90                	xchg   %ax,%ax
  10044c:	66 90                	xchg   %ax,%ax
  10044e:	66 90                	xchg   %ax,%ax
  100450:	66 90                	xchg   %ax,%ax
  100452:	66 90                	xchg   %ax,%ax
  100454:	66 90                	xchg   %ax,%ax
  100456:	66 90                	xchg   %ax,%ax
  100458:	66 90                	xchg   %ax,%ax
  10045a:	66 90                	xchg   %ax,%ax
  10045c:	66 90                	xchg   %ax,%ax
  10045e:	66 90                	xchg   %ax,%ax
  100460:	66 90                	xchg   %ax,%ax
  100462:	66 90                	xchg   %ax,%ax
  100464:	66 90                	xchg   %ax,%ax
  100466:	66 90                	xchg   %ax,%ax
  100468:	66 90                	xchg   %ax,%ax
  10046a:	66 90                	xchg   %ax,%ax
  10046c:	66 90                	xchg   %ax,%ax
  10046e:	66 90                	xchg   %ax,%ax
  100470:	66 90                	xchg   %ax,%ax
  100472:	66 90                	xchg   %ax,%ax
  100474:	66 90                	xchg   %ax,%ax
  100476:	66 90                	xchg   %ax,%ax
  100478:	66 90                	xchg   %ax,%ax
  10047a:	66 90                	xchg   %ax,%ax
  10047c:	66 90                	xchg   %ax,%ax
  10047e:	66 90                	xchg   %ax,%ax
  100480:	66 90                	xchg   %ax,%ax
  100482:	66 90                	xchg   %ax,%ax
  100484:	66 90                	xchg   %ax,%ax
  100486:	66 90                	xchg   %ax,%ax
  100488:	66 90                	xchg   %ax,%ax
  10048a:	66 90                	xchg   %ax,%ax
  10048c:	66 90                	xchg   %ax,%ax
  10048e:	66 90                	xchg   %ax,%ax
  100490:	66 90                	xchg   %ax,%ax
  100492:	66 90                	xchg   %ax,%ax
  100494:	66 90                	xchg   %ax,%ax
  100496:	66 90                	xchg   %ax,%ax
  100498:	66 90                	xchg   %ax,%ax
  10049a:	66 90                	xchg   %ax,%ax
  10049c:	66 90                	xchg   %ax,%ax
  10049e:	66 90                	xchg   %ax,%ax
  1004a0:	66 90                	xchg   %ax,%ax
  1004a2:	66 90                	xchg   %ax,%ax
  1004a4:	66 90                	xchg   %ax,%ax
  1004a6:	66 90                	xchg   %ax,%ax
  1004a8:	66 90                	xchg   %ax,%ax
  1004aa:	66 90                	xchg   %ax,%ax
  1004ac:	66 90                	xchg   %ax,%ax
  1004ae:	66 90                	xchg   %ax,%ax
  1004b0:	66 90                	xchg   %ax,%ax
  1004b2:	66 90                	xchg   %ax,%ax
  1004b4:	66 90                	xchg   %ax,%ax
  1004b6:	66 90                	xchg   %ax,%ax
  1004b8:	66 90                	xchg   %ax,%ax
  1004ba:	66 90                	xchg   %ax,%ax
  1004bc:	66 90                	xchg   %ax,%ax
  1004be:	66 90                	xchg   %ax,%ax
  1004c0:	66 90                	xchg   %ax,%ax
  1004c2:	66 90                	xchg   %ax,%ax
  1004c4:	66 90                	xchg   %ax,%ax
  1004c6:	66 90                	xchg   %ax,%ax
  1004c8:	66 90                	xchg   %ax,%ax
  1004ca:	66 90                	xchg   %ax,%ax
  1004cc:	66 90                	xchg   %ax,%ax
  1004ce:	66 90                	xchg   %ax,%ax
  1004d0:	66 90                	xchg   %ax,%ax
  1004d2:	66 90                	xchg   %ax,%ax
  1004d4:	66 90                	xchg   %ax,%ax
  1004d6:	66 90                	xchg   %ax,%ax
  1004d8:	66 90                	xchg   %ax,%ax
  1004da:	66 90                	xchg   %ax,%ax
  1004dc:	66 90                	xchg   %ax,%ax
  1004de:	66 90                	xchg   %ax,%ax
  1004e0:	66 90                	xchg   %ax,%ax
  1004e2:	66 90                	xchg   %ax,%ax
  1004e4:	66 90                	xchg   %ax,%ax
  1004e6:	66 90                	xchg   %ax,%ax
  1004e8:	66 90                	xchg   %ax,%ax
  1004ea:	66 90                	xchg   %ax,%ax
  1004ec:	66 90                	xchg   %ax,%ax
  1004ee:	66 90                	xchg   %ax,%ax
  1004f0:	66 90                	xchg   %ax,%ax
  1004f2:	66 90                	xchg   %ax,%ax
  1004f4:	66 90                	xchg   %ax,%ax
  1004f6:	66 90                	xchg   %ax,%ax
  1004f8:	66 90                	xchg   %ax,%ax
  1004fa:	66 90                	xchg   %ax,%ax
  1004fc:	66 90                	xchg   %ax,%ax
  1004fe:	66 90                	xchg   %ax,%ax
  100500:	66 90                	xchg   %ax,%ax
  100502:	66 90                	xchg   %ax,%ax
  100504:	66 90                	xchg   %ax,%ax
  100506:	66 90                	xchg   %ax,%ax
  100508:	66 90                	xchg   %ax,%ax
  10050a:	66 90                	xchg   %ax,%ax
  10050c:	66 90                	xchg   %ax,%ax
  10050e:	66 90                	xchg   %ax,%ax
  100510:	66 90                	xchg   %ax,%ax
  100512:	66 90                	xchg   %ax,%ax
  100514:	66 90                	xchg   %ax,%ax
  100516:	66 90                	xchg   %ax,%ax
  100518:	66 90                	xchg   %ax,%ax
  10051a:	66 90                	xchg   %ax,%ax
  10051c:	66 90                	xchg   %ax,%ax
  10051e:	66 90                	xchg   %ax,%ax
  100520:	66 90                	xchg   %ax,%ax
  100522:	66 90                	xchg   %ax,%ax
  100524:	66 90                	xchg   %ax,%ax
  100526:	66 90                	xchg   %ax,%ax
  100528:	66 90                	xchg   %ax,%ax
  10052a:	66 90                	xchg   %ax,%ax
  10052c:	66 90                	xchg   %ax,%ax
  10052e:	66 90                	xchg   %ax,%ax
  100530:	66 90                	xchg   %ax,%ax
  100532:	66 90                	xchg   %ax,%ax
  100534:	66 90                	xchg   %ax,%ax
  100536:	66 90                	xchg   %ax,%ax
  100538:	66 90                	xchg   %ax,%ax
  10053a:	66 90                	xchg   %ax,%ax
  10053c:	66 90                	xchg   %ax,%ax
  10053e:	66 90                	xchg   %ax,%ax
  100540:	66 90                	xchg   %ax,%ax
  100542:	66 90                	xchg   %ax,%ax
  100544:	66 90                	xchg   %ax,%ax
  100546:	66 90                	xchg   %ax,%ax
  100548:	66 90                	xchg   %ax,%ax
  10054a:	66 90                	xchg   %ax,%ax
  10054c:	66 90                	xchg   %ax,%ax
  10054e:	66 90                	xchg   %ax,%ax
  100550:	66 90                	xchg   %ax,%ax
  100552:	66 90                	xchg   %ax,%ax
  100554:	66 90                	xchg   %ax,%ax
  100556:	66 90                	xchg   %ax,%ax
  100558:	66 90                	xchg   %ax,%ax
  10055a:	66 90                	xchg   %ax,%ax
  10055c:	66 90                	xchg   %ax,%ax
  10055e:	66 90                	xchg   %ax,%ax
  100560:	66 90                	xchg   %ax,%ax
  100562:	66 90                	xchg   %ax,%ax
  100564:	66 90                	xchg   %ax,%ax
  100566:	66 90                	xchg   %ax,%ax
  100568:	66 90                	xchg   %ax,%ax
  10056a:	66 90                	xchg   %ax,%ax
  10056c:	66 90                	xchg   %ax,%ax
  10056e:	66 90                	xchg   %ax,%ax
  100570:	66 90                	xchg   %ax,%ax
  100572:	66 90                	xchg   %ax,%ax
  100574:	66 90                	xchg   %ax,%ax
  100576:	66 90                	xchg   %ax,%ax
  100578:	66 90                	xchg   %ax,%ax
  10057a:	66 90                	xchg   %ax,%ax
  10057c:	66 90                	xchg   %ax,%ax
  10057e:	66 90                	xchg   %ax,%ax
  100580:	66 90                	xchg   %ax,%ax
  100582:	66 90                	xchg   %ax,%ax
  100584:	66 90                	xchg   %ax,%ax
  100586:	66 90                	xchg   %ax,%ax
  100588:	66 90                	xchg   %ax,%ax
  10058a:	66 90                	xchg   %ax,%ax
  10058c:	66 90                	xchg   %ax,%ax
  10058e:	66 90                	xchg   %ax,%ax
  100590:	66 90                	xchg   %ax,%ax
  100592:	66 90                	xchg   %ax,%ax
  100594:	66 90                	xchg   %ax,%ax
  100596:	66 90                	xchg   %ax,%ax
  100598:	66 90                	xchg   %ax,%ax
  10059a:	66 90                	xchg   %ax,%ax
  10059c:	66 90                	xchg   %ax,%ax
  10059e:	66 90                	xchg   %ax,%ax
  1005a0:	66 90                	xchg   %ax,%ax
  1005a2:	66 90                	xchg   %ax,%ax
  1005a4:	66 90                	xchg   %ax,%ax
  1005a6:	66 90                	xchg   %ax,%ax
  1005a8:	66 90                	xchg   %ax,%ax
  1005aa:	66 90                	xchg   %ax,%ax
  1005ac:	66 90                	xchg   %ax,%ax
  1005ae:	66 90                	xchg   %ax,%ax
  1005b0:	66 90                	xchg   %ax,%ax
  1005b2:	66 90                	xchg   %ax,%ax
  1005b4:	66 90                	xchg   %ax,%ax
  1005b6:	66 90                	xchg   %ax,%ax
  1005b8:	66 90                	xchg   %ax,%ax
  1005ba:	66 90                	xchg   %ax,%ax
  1005bc:	66 90                	xchg   %ax,%ax
  1005be:	66 90                	xchg   %ax,%ax
  1005c0:	66 90                	xchg   %ax,%ax
  1005c2:	66 90                	xchg   %ax,%ax
  1005c4:	66 90                	xchg   %ax,%ax
  1005c6:	66 90                	xchg   %ax,%ax
  1005c8:	66 90                	xchg   %ax,%ax
  1005ca:	66 90                	xchg   %ax,%ax
  1005cc:	66 90                	xchg   %ax,%ax
  1005ce:	66 90                	xchg   %ax,%ax
  1005d0:	66 90                	xchg   %ax,%ax
  1005d2:	66 90                	xchg   %ax,%ax
  1005d4:	66 90                	xchg   %ax,%ax
  1005d6:	66 90                	xchg   %ax,%ax
  1005d8:	66 90                	xchg   %ax,%ax
  1005da:	66 90                	xchg   %ax,%ax
  1005dc:	66 90                	xchg   %ax,%ax
  1005de:	66 90                	xchg   %ax,%ax
  1005e0:	66 90                	xchg   %ax,%ax
  1005e2:	66 90                	xchg   %ax,%ax
  1005e4:	66 90                	xchg   %ax,%ax
  1005e6:	66 90                	xchg   %ax,%ax
  1005e8:	66 90                	xchg   %ax,%ax
  1005ea:	66 90                	xchg   %ax,%ax
  1005ec:	66 90                	xchg   %ax,%ax
  1005ee:	66 90                	xchg   %ax,%ax
  1005f0:	66 90                	xchg   %ax,%ax
  1005f2:	66 90                	xchg   %ax,%ax
  1005f4:	66 90                	xchg   %ax,%ax
  1005f6:	66 90                	xchg   %ax,%ax
  1005f8:	66 90                	xchg   %ax,%ax
  1005fa:	66 90                	xchg   %ax,%ax
  1005fc:	66 90                	xchg   %ax,%ax
  1005fe:	66 90                	xchg   %ax,%ax
  100600:	66 90                	xchg   %ax,%ax
  100602:	66 90                	xchg   %ax,%ax
  100604:	66 90                	xchg   %ax,%ax
  100606:	66 90                	xchg   %ax,%ax
  100608:	66 90                	xchg   %ax,%ax
  10060a:	66 90                	xchg   %ax,%ax
  10060c:	66 90                	xchg   %ax,%ax
  10060e:	66 90                	xchg   %ax,%ax
  100610:	66 90                	xchg   %ax,%ax
  100612:	66 90                	xchg   %ax,%ax
  100614:	66 90                	xchg   %ax,%ax
  100616:	66 90                	xchg   %ax,%ax
  100618:	66 90                	xchg   %ax,%ax
  10061a:	66 90                	xchg   %ax,%ax
  10061c:	66 90                	xchg   %ax,%ax
  10061e:	66 90                	xchg   %ax,%ax
  100620:	66 90                	xchg   %ax,%ax
  100622:	66 90                	xchg   %ax,%ax
  100624:	66 90                	xchg   %ax,%ax
  100626:	66 90                	xchg   %ax,%ax
  100628:	66 90                	xchg   %ax,%ax
  10062a:	66 90                	xchg   %ax,%ax
  10062c:	66 90                	xchg   %ax,%ax
  10062e:	66 90                	xchg   %ax,%ax
  100630:	66 90                	xchg   %ax,%ax
  100632:	66 90                	xchg   %ax,%ax
  100634:	66 90                	xchg   %ax,%ax
  100636:	66 90                	xchg   %ax,%ax
  100638:	66 90                	xchg   %ax,%ax
  10063a:	66 90                	xchg   %ax,%ax
  10063c:	66 90                	xchg   %ax,%ax
  10063e:	66 90                	xchg   %ax,%ax
  100640:	66 90                	xchg   %ax,%ax
  100642:	66 90                	xchg   %ax,%ax
  100644:	66 90                	xchg   %ax,%ax
  100646:	66 90                	xchg   %ax,%ax
  100648:	66 90                	xchg   %ax,%ax
  10064a:	66 90                	xchg   %ax,%ax
  10064c:	66 90                	xchg   %ax,%ax
  10064e:	66 90                	xchg   %ax,%ax
  100650:	66 90                	xchg   %ax,%ax
  100652:	66 90                	xchg   %ax,%ax
  100654:	66 90                	xchg   %ax,%ax
  100656:	66 90                	xchg   %ax,%ax
  100658:	66 90                	xchg   %ax,%ax
  10065a:	66 90                	xchg   %ax,%ax
  10065c:	66 90                	xchg   %ax,%ax
  10065e:	66 90                	xchg   %ax,%ax
  100660:	66 90                	xchg   %ax,%ax
  100662:	66 90                	xchg   %ax,%ax
  100664:	66 90                	xchg   %ax,%ax
  100666:	66 90                	xchg   %ax,%ax
  100668:	66 90                	xchg   %ax,%ax
  10066a:	66 90                	xchg   %ax,%ax
  10066c:	66 90                	xchg   %ax,%ax
  10066e:	66 90                	xchg   %ax,%ax
  100670:	66 90                	xchg   %ax,%ax
  100672:	66 90                	xchg   %ax,%ax
  100674:	66 90                	xchg   %ax,%ax
  100676:	66 90                	xchg   %ax,%ax
  100678:	66 90                	xchg   %ax,%ax
  10067a:	66 90                	xchg   %ax,%ax
  10067c:	66 90                	xchg   %ax,%ax
  10067e:	66 90                	xchg   %ax,%ax
  100680:	66 90                	xchg   %ax,%ax
  100682:	66 90                	xchg   %ax,%ax
  100684:	66 90                	xchg   %ax,%ax
  100686:	66 90                	xchg   %ax,%ax
  100688:	66 90                	xchg   %ax,%ax
  10068a:	66 90                	xchg   %ax,%ax
  10068c:	66 90                	xchg   %ax,%ax
  10068e:	66 90                	xchg   %ax,%ax
  100690:	66 90                	xchg   %ax,%ax
  100692:	66 90                	xchg   %ax,%ax
  100694:	66 90                	xchg   %ax,%ax
  100696:	66 90                	xchg   %ax,%ax
  100698:	66 90                	xchg   %ax,%ax
  10069a:	66 90                	xchg   %ax,%ax
  10069c:	66 90                	xchg   %ax,%ax
  10069e:	66 90                	xchg   %ax,%ax
  1006a0:	66 90                	xchg   %ax,%ax
  1006a2:	66 90                	xchg   %ax,%ax
  1006a4:	66 90                	xchg   %ax,%ax
  1006a6:	66 90                	xchg   %ax,%ax
  1006a8:	66 90                	xchg   %ax,%ax
  1006aa:	66 90                	xchg   %ax,%ax
  1006ac:	66 90                	xchg   %ax,%ax
  1006ae:	66 90                	xchg   %ax,%ax
  1006b0:	66 90                	xchg   %ax,%ax
  1006b2:	66 90                	xchg   %ax,%ax
  1006b4:	66 90                	xchg   %ax,%ax
  1006b6:	66 90                	xchg   %ax,%ax
  1006b8:	66 90                	xchg   %ax,%ax
  1006ba:	66 90                	xchg   %ax,%ax
  1006bc:	66 90                	xchg   %ax,%ax
  1006be:	66 90                	xchg   %ax,%ax
  1006c0:	66 90                	xchg   %ax,%ax
  1006c2:	66 90                	xchg   %ax,%ax
  1006c4:	66 90                	xchg   %ax,%ax
  1006c6:	66 90                	xchg   %ax,%ax
  1006c8:	66 90                	xchg   %ax,%ax
  1006ca:	66 90                	xchg   %ax,%ax
  1006cc:	66 90                	xchg   %ax,%ax
  1006ce:	66 90                	xchg   %ax,%ax
  1006d0:	66 90                	xchg   %ax,%ax
  1006d2:	66 90                	xchg   %ax,%ax
  1006d4:	66 90                	xchg   %ax,%ax
  1006d6:	66 90                	xchg   %ax,%ax
  1006d8:	66 90                	xchg   %ax,%ax
  1006da:	66 90                	xchg   %ax,%ax
  1006dc:	66 90                	xchg   %ax,%ax
  1006de:	66 90                	xchg   %ax,%ax
  1006e0:	66 90                	xchg   %ax,%ax
  1006e2:	66 90                	xchg   %ax,%ax
  1006e4:	66 90                	xchg   %ax,%ax
  1006e6:	66 90                	xchg   %ax,%ax
  1006e8:	66 90                	xchg   %ax,%ax
  1006ea:	66 90                	xchg   %ax,%ax
  1006ec:	66 90                	xchg   %ax,%ax
  1006ee:	66 90                	xchg   %ax,%ax
  1006f0:	66 90                	xchg   %ax,%ax
  1006f2:	66 90                	xchg   %ax,%ax
  1006f4:	66 90                	xchg   %ax,%ax
  1006f6:	66 90                	xchg   %ax,%ax
  1006f8:	66 90                	xchg   %ax,%ax
  1006fa:	66 90                	xchg   %ax,%ax
  1006fc:	66 90                	xchg   %ax,%ax
  1006fe:	66 90                	xchg   %ax,%ax
  100700:	66 90                	xchg   %ax,%ax
  100702:	66 90                	xchg   %ax,%ax
  100704:	66 90                	xchg   %ax,%ax
  100706:	66 90                	xchg   %ax,%ax
  100708:	66 90                	xchg   %ax,%ax
  10070a:	66 90                	xchg   %ax,%ax
  10070c:	66 90                	xchg   %ax,%ax
  10070e:	66 90                	xchg   %ax,%ax
  100710:	66 90                	xchg   %ax,%ax
  100712:	66 90                	xchg   %ax,%ax
  100714:	66 90                	xchg   %ax,%ax
  100716:	66 90                	xchg   %ax,%ax
  100718:	66 90                	xchg   %ax,%ax
  10071a:	66 90                	xchg   %ax,%ax
  10071c:	66 90                	xchg   %ax,%ax
  10071e:	66 90                	xchg   %ax,%ax
  100720:	66 90                	xchg   %ax,%ax
  100722:	66 90                	xchg   %ax,%ax
  100724:	66 90                	xchg   %ax,%ax
  100726:	66 90                	xchg   %ax,%ax
  100728:	66 90                	xchg   %ax,%ax
  10072a:	66 90                	xchg   %ax,%ax
  10072c:	66 90                	xchg   %ax,%ax
  10072e:	66 90                	xchg   %ax,%ax
  100730:	66 90                	xchg   %ax,%ax
  100732:	66 90                	xchg   %ax,%ax
  100734:	66 90                	xchg   %ax,%ax
  100736:	66 90                	xchg   %ax,%ax
  100738:	66 90                	xchg   %ax,%ax
  10073a:	66 90                	xchg   %ax,%ax
  10073c:	66 90                	xchg   %ax,%ax
  10073e:	66 90                	xchg   %ax,%ax
  100740:	66 90                	xchg   %ax,%ax
  100742:	66 90                	xchg   %ax,%ax
  100744:	66 90                	xchg   %ax,%ax
  100746:	66 90                	xchg   %ax,%ax
  100748:	66 90                	xchg   %ax,%ax
  10074a:	66 90                	xchg   %ax,%ax
  10074c:	66 90                	xchg   %ax,%ax
  10074e:	66 90                	xchg   %ax,%ax
  100750:	66 90                	xchg   %ax,%ax
  100752:	66 90                	xchg   %ax,%ax
  100754:	66 90                	xchg   %ax,%ax
  100756:	66 90                	xchg   %ax,%ax
  100758:	66 90                	xchg   %ax,%ax
  10075a:	66 90                	xchg   %ax,%ax
  10075c:	66 90                	xchg   %ax,%ax
  10075e:	66 90                	xchg   %ax,%ax
  100760:	66 90                	xchg   %ax,%ax
  100762:	66 90                	xchg   %ax,%ax
  100764:	66 90                	xchg   %ax,%ax
  100766:	66 90                	xchg   %ax,%ax
  100768:	66 90                	xchg   %ax,%ax
  10076a:	66 90                	xchg   %ax,%ax
  10076c:	66 90                	xchg   %ax,%ax
  10076e:	66 90                	xchg   %ax,%ax
  100770:	66 90                	xchg   %ax,%ax
  100772:	66 90                	xchg   %ax,%ax
  100774:	66 90                	xchg   %ax,%ax
  100776:	66 90                	xchg   %ax,%ax
  100778:	66 90                	xchg   %ax,%ax
  10077a:	66 90                	xchg   %ax,%ax
  10077c:	66 90                	xchg   %ax,%ax
  10077e:	66 90                	xchg   %ax,%ax
  100780:	66 90                	xchg   %ax,%ax
  100782:	66 90                	xchg   %ax,%ax
  100784:	66 90                	xchg   %ax,%ax
  100786:	66 90                	xchg   %ax,%ax
  100788:	66 90                	xchg   %ax,%ax
  10078a:	66 90                	xchg   %ax,%ax
  10078c:	66 90                	xchg   %ax,%ax
  10078e:	66 90                	xchg   %ax,%ax
  100790:	66 90                	xchg   %ax,%ax
  100792:	66 90                	xchg   %ax,%ax
  100794:	66 90                	xchg   %ax,%ax
  100796:	66 90                	xchg   %ax,%ax
  100798:	66 90                	xchg   %ax,%ax
  10079a:	66 90                	xchg   %ax,%ax
  10079c:	66 90                	xchg   %ax,%ax
  10079e:	66 90                	xchg   %ax,%ax
  1007a0:	66 90                	xchg   %ax,%ax
  1007a2:	66 90                	xchg   %ax,%ax
  1007a4:	66 90                	xchg   %ax,%ax
  1007a6:	66 90                	xchg   %ax,%ax
  1007a8:	66 90                	xchg   %ax,%ax
  1007aa:	66 90                	xchg   %ax,%ax
  1007ac:	66 90                	xchg   %ax,%ax
  1007ae:	66 90                	xchg   %ax,%ax
  1007b0:	66 90                	xchg   %ax,%ax
  1007b2:	66 90                	xchg   %ax,%ax
  1007b4:	66 90                	xchg   %ax,%ax
  1007b6:	66 90                	xchg   %ax,%ax
  1007b8:	66 90                	xchg   %ax,%ax
  1007ba:	66 90                	xchg   %ax,%ax
  1007bc:	66 90                	xchg   %ax,%ax
  1007be:	66 90                	xchg   %ax,%ax
  1007c0:	66 90                	xchg   %ax,%ax
  1007c2:	66 90                	xchg   %ax,%ax
  1007c4:	66 90                	xchg   %ax,%ax
  1007c6:	66 90                	xchg   %ax,%ax
  1007c8:	66 90                	xchg   %ax,%ax
  1007ca:	66 90                	xchg   %ax,%ax
  1007cc:	66 90                	xchg   %ax,%ax
  1007ce:	66 90                	xchg   %ax,%ax
  1007d0:	66 90                	xchg   %ax,%ax
  1007d2:	66 90                	xchg   %ax,%ax
  1007d4:	66 90                	xchg   %ax,%ax
  1007d6:	66 90                	xchg   %ax,%ax
  1007d8:	66 90                	xchg   %ax,%ax
  1007da:	66 90                	xchg   %ax,%ax
  1007dc:	66 90                	xchg   %ax,%ax
  1007de:	66 90                	xchg   %ax,%ax
  1007e0:	66 90                	xchg   %ax,%ax
  1007e2:	66 90                	xchg   %ax,%ax
  1007e4:	66 90                	xchg   %ax,%ax
  1007e6:	66 90                	xchg   %ax,%ax
  1007e8:	66 90                	xchg   %ax,%ax
  1007ea:	66 90                	xchg   %ax,%ax
  1007ec:	66 90                	xchg   %ax,%ax
  1007ee:	66 90                	xchg   %ax,%ax
  1007f0:	66 90                	xchg   %ax,%ax
  1007f2:	66 90                	xchg   %ax,%ax
  1007f4:	66 90                	xchg   %ax,%ax
  1007f6:	66 90                	xchg   %ax,%ax
  1007f8:	66 90                	xchg   %ax,%ax
  1007fa:	66 90                	xchg   %ax,%ax
  1007fc:	66 90                	xchg   %ax,%ax
  1007fe:	66 90                	xchg   %ax,%ax
  100800:	66 90                	xchg   %ax,%ax
  100802:	66 90                	xchg   %ax,%ax
  100804:	66 90                	xchg   %ax,%ax
  100806:	66 90                	xchg   %ax,%ax
  100808:	66 90                	xchg   %ax,%ax
  10080a:	66 90                	xchg   %ax,%ax
  10080c:	66 90                	xchg   %ax,%ax
  10080e:	66 90                	xchg   %ax,%ax
  100810:	66 90                	xchg   %ax,%ax
  100812:	66 90                	xchg   %ax,%ax
  100814:	66 90                	xchg   %ax,%ax
  100816:	66 90                	xchg   %ax,%ax
  100818:	66 90                	xchg   %ax,%ax
  10081a:	66 90                	xchg   %ax,%ax
  10081c:	66 90                	xchg   %ax,%ax
  10081e:	66 90                	xchg   %ax,%ax
  100820:	66 90                	xchg   %ax,%ax
  100822:	66 90                	xchg   %ax,%ax
  100824:	66 90                	xchg   %ax,%ax
  100826:	66 90                	xchg   %ax,%ax
  100828:	66 90                	xchg   %ax,%ax
  10082a:	66 90                	xchg   %ax,%ax
  10082c:	66 90                	xchg   %ax,%ax
  10082e:	66 90                	xchg   %ax,%ax
  100830:	66 90                	xchg   %ax,%ax
  100832:	66 90                	xchg   %ax,%ax
  100834:	66 90                	xchg   %ax,%ax
  100836:	66 90                	xchg   %ax,%ax
  100838:	66 90                	xchg   %ax,%ax
  10083a:	66 90                	xchg   %ax,%ax
  10083c:	66 90                	xchg   %ax,%ax
  10083e:	66 90                	xchg   %ax,%ax
  100840:	66 90                	xchg   %ax,%ax
  100842:	66 90                	xchg   %ax,%ax
  100844:	66 90                	xchg   %ax,%ax
  100846:	66 90                	xchg   %ax,%ax
  100848:	66 90                	xchg   %ax,%ax
  10084a:	66 90                	xchg   %ax,%ax
  10084c:	66 90                	xchg   %ax,%ax
  10084e:	66 90                	xchg   %ax,%ax
  100850:	66 90                	xchg   %ax,%ax
  100852:	66 90                	xchg   %ax,%ax
  100854:	66 90                	xchg   %ax,%ax
  100856:	66 90                	xchg   %ax,%ax
  100858:	66 90                	xchg   %ax,%ax
  10085a:	66 90                	xchg   %ax,%ax
  10085c:	66 90                	xchg   %ax,%ax
  10085e:	66 90                	xchg   %ax,%ax
  100860:	66 90                	xchg   %ax,%ax
  100862:	66 90                	xchg   %ax,%ax
  100864:	66 90                	xchg   %ax,%ax
  100866:	66 90                	xchg   %ax,%ax
  100868:	66 90                	xchg   %ax,%ax
  10086a:	66 90                	xchg   %ax,%ax
  10086c:	66 90                	xchg   %ax,%ax
  10086e:	66 90                	xchg   %ax,%ax
  100870:	66 90                	xchg   %ax,%ax
  100872:	66 90                	xchg   %ax,%ax
  100874:	66 90                	xchg   %ax,%ax
  100876:	66 90                	xchg   %ax,%ax
  100878:	66 90                	xchg   %ax,%ax
  10087a:	66 90                	xchg   %ax,%ax
  10087c:	66 90                	xchg   %ax,%ax
  10087e:	66 90                	xchg   %ax,%ax
  100880:	66 90                	xchg   %ax,%ax
  100882:	66 90                	xchg   %ax,%ax
  100884:	66 90                	xchg   %ax,%ax
  100886:	66 90                	xchg   %ax,%ax
  100888:	66 90                	xchg   %ax,%ax
  10088a:	66 90                	xchg   %ax,%ax
  10088c:	66 90                	xchg   %ax,%ax
  10088e:	66 90                	xchg   %ax,%ax
  100890:	66 90                	xchg   %ax,%ax
  100892:	66 90                	xchg   %ax,%ax
  100894:	66 90                	xchg   %ax,%ax
  100896:	66 90                	xchg   %ax,%ax
  100898:	66 90                	xchg   %ax,%ax
  10089a:	66 90                	xchg   %ax,%ax
  10089c:	66 90                	xchg   %ax,%ax
  10089e:	66 90                	xchg   %ax,%ax
  1008a0:	66 90                	xchg   %ax,%ax
  1008a2:	66 90                	xchg   %ax,%ax
  1008a4:	66 90                	xchg   %ax,%ax
  1008a6:	66 90                	xchg   %ax,%ax
  1008a8:	66 90                	xchg   %ax,%ax
  1008aa:	66 90                	xchg   %ax,%ax
  1008ac:	66 90                	xchg   %ax,%ax
  1008ae:	66 90                	xchg   %ax,%ax
  1008b0:	66 90                	xchg   %ax,%ax
  1008b2:	66 90                	xchg   %ax,%ax
  1008b4:	66 90                	xchg   %ax,%ax
  1008b6:	66 90                	xchg   %ax,%ax
  1008b8:	66 90                	xchg   %ax,%ax
  1008ba:	66 90                	xchg   %ax,%ax
  1008bc:	66 90                	xchg   %ax,%ax
  1008be:	66 90                	xchg   %ax,%ax
  1008c0:	66 90                	xchg   %ax,%ax
  1008c2:	66 90                	xchg   %ax,%ax
  1008c4:	66 90                	xchg   %ax,%ax
  1008c6:	66 90                	xchg   %ax,%ax
  1008c8:	66 90                	xchg   %ax,%ax
  1008ca:	66 90                	xchg   %ax,%ax
  1008cc:	66 90                	xchg   %ax,%ax
  1008ce:	66 90                	xchg   %ax,%ax
  1008d0:	66 90                	xchg   %ax,%ax
  1008d2:	66 90                	xchg   %ax,%ax
  1008d4:	66 90                	xchg   %ax,%ax
  1008d6:	66 90                	xchg   %ax,%ax
  1008d8:	66 90                	xchg   %ax,%ax
  1008da:	66 90                	xchg   %ax,%ax
  1008dc:	66 90                	xchg   %ax,%ax
  1008de:	66 90                	xchg   %ax,%ax
  1008e0:	66 90                	xchg   %ax,%ax
  1008e2:	66 90                	xchg   %ax,%ax
  1008e4:	66 90                	xchg   %ax,%ax
  1008e6:	66 90                	xchg   %ax,%ax
  1008e8:	66 90                	xchg   %ax,%ax
  1008ea:	66 90                	xchg   %ax,%ax
  1008ec:	66 90                	xchg   %ax,%ax
  1008ee:	66 90                	xchg   %ax,%ax
  1008f0:	66 90                	xchg   %ax,%ax
  1008f2:	66 90                	xchg   %ax,%ax
  1008f4:	66 90                	xchg   %ax,%ax
  1008f6:	66 90                	xchg   %ax,%ax
  1008f8:	66 90                	xchg   %ax,%ax
  1008fa:	66 90                	xchg   %ax,%ax
  1008fc:	66 90                	xchg   %ax,%ax
  1008fe:	66 90                	xchg   %ax,%ax
  100900:	66 90                	xchg   %ax,%ax
  100902:	66 90                	xchg   %ax,%ax
  100904:	66 90                	xchg   %ax,%ax
  100906:	66 90                	xchg   %ax,%ax
  100908:	66 90                	xchg   %ax,%ax
  10090a:	66 90                	xchg   %ax,%ax
  10090c:	66 90                	xchg   %ax,%ax
  10090e:	66 90                	xchg   %ax,%ax
  100910:	66 90                	xchg   %ax,%ax
  100912:	66 90                	xchg   %ax,%ax
  100914:	66 90                	xchg   %ax,%ax
  100916:	66 90                	xchg   %ax,%ax
  100918:	66 90                	xchg   %ax,%ax
  10091a:	66 90                	xchg   %ax,%ax
  10091c:	66 90                	xchg   %ax,%ax
  10091e:	66 90                	xchg   %ax,%ax
  100920:	66 90                	xchg   %ax,%ax
  100922:	66 90                	xchg   %ax,%ax
  100924:	66 90                	xchg   %ax,%ax
  100926:	66 90                	xchg   %ax,%ax
  100928:	66 90                	xchg   %ax,%ax
  10092a:	66 90                	xchg   %ax,%ax
  10092c:	66 90                	xchg   %ax,%ax
  10092e:	66 90                	xchg   %ax,%ax
  100930:	66 90                	xchg   %ax,%ax
  100932:	66 90                	xchg   %ax,%ax
  100934:	66 90                	xchg   %ax,%ax
  100936:	66 90                	xchg   %ax,%ax
  100938:	66 90                	xchg   %ax,%ax
  10093a:	66 90                	xchg   %ax,%ax
  10093c:	66 90                	xchg   %ax,%ax
  10093e:	66 90                	xchg   %ax,%ax
  100940:	66 90                	xchg   %ax,%ax
  100942:	66 90                	xchg   %ax,%ax
  100944:	66 90                	xchg   %ax,%ax
  100946:	66 90                	xchg   %ax,%ax
  100948:	66 90                	xchg   %ax,%ax
  10094a:	66 90                	xchg   %ax,%ax
  10094c:	66 90                	xchg   %ax,%ax
  10094e:	66 90                	xchg   %ax,%ax
  100950:	66 90                	xchg   %ax,%ax
  100952:	66 90                	xchg   %ax,%ax
  100954:	66 90                	xchg   %ax,%ax
  100956:	66 90                	xchg   %ax,%ax
  100958:	66 90                	xchg   %ax,%ax
  10095a:	66 90                	xchg   %ax,%ax
  10095c:	66 90                	xchg   %ax,%ax
  10095e:	66 90                	xchg   %ax,%ax
  100960:	66 90                	xchg   %ax,%ax
  100962:	66 90                	xchg   %ax,%ax
  100964:	66 90                	xchg   %ax,%ax
  100966:	66 90                	xchg   %ax,%ax
  100968:	66 90                	xchg   %ax,%ax
  10096a:	66 90                	xchg   %ax,%ax
  10096c:	66 90                	xchg   %ax,%ax
  10096e:	66 90                	xchg   %ax,%ax
  100970:	66 90                	xchg   %ax,%ax
  100972:	66 90                	xchg   %ax,%ax
  100974:	66 90                	xchg   %ax,%ax
  100976:	66 90                	xchg   %ax,%ax
  100978:	66 90                	xchg   %ax,%ax
  10097a:	66 90                	xchg   %ax,%ax
  10097c:	66 90                	xchg   %ax,%ax
  10097e:	66 90                	xchg   %ax,%ax
  100980:	66 90                	xchg   %ax,%ax
  100982:	66 90                	xchg   %ax,%ax
  100984:	66 90                	xchg   %ax,%ax
  100986:	66 90                	xchg   %ax,%ax
  100988:	66 90                	xchg   %ax,%ax
  10098a:	66 90                	xchg   %ax,%ax
  10098c:	66 90                	xchg   %ax,%ax
  10098e:	66 90                	xchg   %ax,%ax
  100990:	66 90                	xchg   %ax,%ax
  100992:	66 90                	xchg   %ax,%ax
  100994:	66 90                	xchg   %ax,%ax
  100996:	66 90                	xchg   %ax,%ax
  100998:	66 90                	xchg   %ax,%ax
  10099a:	66 90                	xchg   %ax,%ax
  10099c:	66 90                	xchg   %ax,%ax
  10099e:	66 90                	xchg   %ax,%ax
  1009a0:	66 90                	xchg   %ax,%ax
  1009a2:	66 90                	xchg   %ax,%ax
  1009a4:	66 90                	xchg   %ax,%ax
  1009a6:	66 90                	xchg   %ax,%ax
  1009a8:	66 90                	xchg   %ax,%ax
  1009aa:	66 90                	xchg   %ax,%ax
  1009ac:	66 90                	xchg   %ax,%ax
  1009ae:	66 90                	xchg   %ax,%ax
  1009b0:	66 90                	xchg   %ax,%ax
  1009b2:	66 90                	xchg   %ax,%ax
  1009b4:	66 90                	xchg   %ax,%ax
  1009b6:	66 90                	xchg   %ax,%ax
  1009b8:	66 90                	xchg   %ax,%ax
  1009ba:	66 90                	xchg   %ax,%ax
  1009bc:	66 90                	xchg   %ax,%ax
  1009be:	66 90                	xchg   %ax,%ax
  1009c0:	66 90                	xchg   %ax,%ax
  1009c2:	66 90                	xchg   %ax,%ax
  1009c4:	66 90                	xchg   %ax,%ax
  1009c6:	66 90                	xchg   %ax,%ax
  1009c8:	66 90                	xchg   %ax,%ax
  1009ca:	66 90                	xchg   %ax,%ax
  1009cc:	66 90                	xchg   %ax,%ax
  1009ce:	66 90                	xchg   %ax,%ax
  1009d0:	66 90                	xchg   %ax,%ax
  1009d2:	66 90                	xchg   %ax,%ax
  1009d4:	66 90                	xchg   %ax,%ax
  1009d6:	66 90                	xchg   %ax,%ax
  1009d8:	66 90                	xchg   %ax,%ax
  1009da:	66 90                	xchg   %ax,%ax
  1009dc:	66 90                	xchg   %ax,%ax
  1009de:	66 90                	xchg   %ax,%ax
  1009e0:	66 90                	xchg   %ax,%ax
  1009e2:	66 90                	xchg   %ax,%ax
  1009e4:	66 90                	xchg   %ax,%ax
  1009e6:	66 90                	xchg   %ax,%ax
  1009e8:	66 90                	xchg   %ax,%ax
  1009ea:	66 90                	xchg   %ax,%ax
  1009ec:	66 90                	xchg   %ax,%ax
  1009ee:	66 90                	xchg   %ax,%ax
  1009f0:	66 90                	xchg   %ax,%ax
  1009f2:	66 90                	xchg   %ax,%ax
  1009f4:	66 90                	xchg   %ax,%ax
  1009f6:	66 90                	xchg   %ax,%ax
  1009f8:	66 90                	xchg   %ax,%ax
  1009fa:	66 90                	xchg   %ax,%ax
  1009fc:	66 90                	xchg   %ax,%ax
  1009fe:	66 90                	xchg   %ax,%ax
  100a00:	66 90                	xchg   %ax,%ax
  100a02:	66 90                	xchg   %ax,%ax
  100a04:	66 90                	xchg   %ax,%ax
  100a06:	66 90                	xchg   %ax,%ax
  100a08:	66 90                	xchg   %ax,%ax
  100a0a:	66 90                	xchg   %ax,%ax
  100a0c:	66 90                	xchg   %ax,%ax
  100a0e:	66 90                	xchg   %ax,%ax
  100a10:	66 90                	xchg   %ax,%ax
  100a12:	66 90                	xchg   %ax,%ax
  100a14:	66 90                	xchg   %ax,%ax
  100a16:	66 90                	xchg   %ax,%ax
  100a18:	66 90                	xchg   %ax,%ax
  100a1a:	66 90                	xchg   %ax,%ax
  100a1c:	66 90                	xchg   %ax,%ax
  100a1e:	66 90                	xchg   %ax,%ax
  100a20:	66 90                	xchg   %ax,%ax
  100a22:	66 90                	xchg   %ax,%ax
  100a24:	66 90                	xchg   %ax,%ax
  100a26:	66 90                	xchg   %ax,%ax
  100a28:	66 90                	xchg   %ax,%ax
  100a2a:	66 90                	xchg   %ax,%ax
  100a2c:	66 90                	xchg   %ax,%ax
  100a2e:	66 90                	xchg   %ax,%ax
  100a30:	66 90                	xchg   %ax,%ax
  100a32:	66 90                	xchg   %ax,%ax
  100a34:	66 90                	xchg   %ax,%ax
  100a36:	66 90                	xchg   %ax,%ax
  100a38:	66 90                	xchg   %ax,%ax
  100a3a:	66 90                	xchg   %ax,%ax
  100a3c:	66 90                	xchg   %ax,%ax
  100a3e:	66 90                	xchg   %ax,%ax
  100a40:	66 90                	xchg   %ax,%ax
  100a42:	66 90                	xchg   %ax,%ax
  100a44:	66 90                	xchg   %ax,%ax
  100a46:	66 90                	xchg   %ax,%ax
  100a48:	66 90                	xchg   %ax,%ax
  100a4a:	66 90                	xchg   %ax,%ax
  100a4c:	66 90                	xchg   %ax,%ax
  100a4e:	66 90                	xchg   %ax,%ax
  100a50:	66 90                	xchg   %ax,%ax
  100a52:	66 90                	xchg   %ax,%ax
  100a54:	66 90                	xchg   %ax,%ax
  100a56:	66 90                	xchg   %ax,%ax
  100a58:	66 90                	xchg   %ax,%ax
  100a5a:	66 90                	xchg   %ax,%ax
  100a5c:	66 90                	xchg   %ax,%ax
  100a5e:	66 90                	xchg   %ax,%ax
  100a60:	66 90                	xchg   %ax,%ax
  100a62:	66 90                	xchg   %ax,%ax
  100a64:	66 90                	xchg   %ax,%ax
  100a66:	66 90                	xchg   %ax,%ax
  100a68:	66 90                	xchg   %ax,%ax
  100a6a:	66 90                	xchg   %ax,%ax
  100a6c:	66 90                	xchg   %ax,%ax
  100a6e:	66 90                	xchg   %ax,%ax
  100a70:	66 90                	xchg   %ax,%ax
  100a72:	66 90                	xchg   %ax,%ax
  100a74:	66 90                	xchg   %ax,%ax
  100a76:	66 90                	xchg   %ax,%ax
  100a78:	66 90                	xchg   %ax,%ax
  100a7a:	66 90                	xchg   %ax,%ax
  100a7c:	66 90                	xchg   %ax,%ax
  100a7e:	66 90                	xchg   %ax,%ax
  100a80:	66 90                	xchg   %ax,%ax
  100a82:	66 90                	xchg   %ax,%ax
  100a84:	66 90                	xchg   %ax,%ax
  100a86:	66 90                	xchg   %ax,%ax
  100a88:	66 90                	xchg   %ax,%ax
  100a8a:	66 90                	xchg   %ax,%ax
  100a8c:	66 90                	xchg   %ax,%ax
  100a8e:	66 90                	xchg   %ax,%ax
  100a90:	66 90                	xchg   %ax,%ax
  100a92:	66 90                	xchg   %ax,%ax
  100a94:	66 90                	xchg   %ax,%ax
  100a96:	66 90                	xchg   %ax,%ax
  100a98:	66 90                	xchg   %ax,%ax
  100a9a:	66 90                	xchg   %ax,%ax
  100a9c:	66 90                	xchg   %ax,%ax
  100a9e:	66 90                	xchg   %ax,%ax
  100aa0:	66 90                	xchg   %ax,%ax
  100aa2:	66 90                	xchg   %ax,%ax
  100aa4:	66 90                	xchg   %ax,%ax
  100aa6:	66 90                	xchg   %ax,%ax
  100aa8:	66 90                	xchg   %ax,%ax
  100aaa:	66 90                	xchg   %ax,%ax
  100aac:	66 90                	xchg   %ax,%ax
  100aae:	66 90                	xchg   %ax,%ax
  100ab0:	66 90                	xchg   %ax,%ax
  100ab2:	66 90                	xchg   %ax,%ax
  100ab4:	66 90                	xchg   %ax,%ax
  100ab6:	66 90                	xchg   %ax,%ax
  100ab8:	66 90                	xchg   %ax,%ax
  100aba:	66 90                	xchg   %ax,%ax
  100abc:	66 90                	xchg   %ax,%ax
  100abe:	66 90                	xchg   %ax,%ax
  100ac0:	66 90                	xchg   %ax,%ax
  100ac2:	66 90                	xchg   %ax,%ax
  100ac4:	66 90                	xchg   %ax,%ax
  100ac6:	66 90                	xchg   %ax,%ax
  100ac8:	66 90                	xchg   %ax,%ax
  100aca:	66 90                	xchg   %ax,%ax
  100acc:	66 90                	xchg   %ax,%ax
  100ace:	66 90                	xchg   %ax,%ax
  100ad0:	66 90                	xchg   %ax,%ax
  100ad2:	66 90                	xchg   %ax,%ax
  100ad4:	66 90                	xchg   %ax,%ax
  100ad6:	66 90                	xchg   %ax,%ax
  100ad8:	66 90                	xchg   %ax,%ax
  100ada:	66 90                	xchg   %ax,%ax
  100adc:	66 90                	xchg   %ax,%ax
  100ade:	66 90                	xchg   %ax,%ax
  100ae0:	66 90                	xchg   %ax,%ax
  100ae2:	66 90                	xchg   %ax,%ax
  100ae4:	66 90                	xchg   %ax,%ax
  100ae6:	66 90                	xchg   %ax,%ax
  100ae8:	66 90                	xchg   %ax,%ax
  100aea:	66 90                	xchg   %ax,%ax
  100aec:	66 90                	xchg   %ax,%ax
  100aee:	66 90                	xchg   %ax,%ax
  100af0:	66 90                	xchg   %ax,%ax
  100af2:	66 90                	xchg   %ax,%ax
  100af4:	66 90                	xchg   %ax,%ax
  100af6:	66 90                	xchg   %ax,%ax
  100af8:	66 90                	xchg   %ax,%ax
  100afa:	66 90                	xchg   %ax,%ax
  100afc:	66 90                	xchg   %ax,%ax
  100afe:	66 90                	xchg   %ax,%ax
  100b00:	66 90                	xchg   %ax,%ax
  100b02:	66 90                	xchg   %ax,%ax
  100b04:	66 90                	xchg   %ax,%ax
  100b06:	66 90                	xchg   %ax,%ax
  100b08:	66 90                	xchg   %ax,%ax
  100b0a:	66 90                	xchg   %ax,%ax
  100b0c:	66 90                	xchg   %ax,%ax
  100b0e:	66 90                	xchg   %ax,%ax
  100b10:	66 90                	xchg   %ax,%ax
  100b12:	66 90                	xchg   %ax,%ax
  100b14:	66 90                	xchg   %ax,%ax
  100b16:	66 90                	xchg   %ax,%ax
  100b18:	66 90                	xchg   %ax,%ax
  100b1a:	66 90                	xchg   %ax,%ax
  100b1c:	66 90                	xchg   %ax,%ax
  100b1e:	66 90                	xchg   %ax,%ax
  100b20:	66 90                	xchg   %ax,%ax
  100b22:	66 90                	xchg   %ax,%ax
  100b24:	66 90                	xchg   %ax,%ax
  100b26:	66 90                	xchg   %ax,%ax
  100b28:	66 90                	xchg   %ax,%ax
  100b2a:	66 90                	xchg   %ax,%ax
  100b2c:	66 90                	xchg   %ax,%ax
  100b2e:	66 90                	xchg   %ax,%ax
  100b30:	66 90                	xchg   %ax,%ax
  100b32:	66 90                	xchg   %ax,%ax
  100b34:	66 90                	xchg   %ax,%ax
  100b36:	66 90                	xchg   %ax,%ax
  100b38:	66 90                	xchg   %ax,%ax
  100b3a:	66 90                	xchg   %ax,%ax
  100b3c:	66 90                	xchg   %ax,%ax
  100b3e:	66 90                	xchg   %ax,%ax
  100b40:	66 90                	xchg   %ax,%ax
  100b42:	66 90                	xchg   %ax,%ax
  100b44:	66 90                	xchg   %ax,%ax
  100b46:	66 90                	xchg   %ax,%ax
  100b48:	66 90                	xchg   %ax,%ax
  100b4a:	66 90                	xchg   %ax,%ax
  100b4c:	66 90                	xchg   %ax,%ax
  100b4e:	66 90                	xchg   %ax,%ax
  100b50:	66 90                	xchg   %ax,%ax
  100b52:	66 90                	xchg   %ax,%ax
  100b54:	66 90                	xchg   %ax,%ax
  100b56:	66 90                	xchg   %ax,%ax
  100b58:	66 90                	xchg   %ax,%ax
  100b5a:	66 90                	xchg   %ax,%ax
  100b5c:	66 90                	xchg   %ax,%ax
  100b5e:	66 90                	xchg   %ax,%ax
  100b60:	66 90                	xchg   %ax,%ax
  100b62:	66 90                	xchg   %ax,%ax
  100b64:	66 90                	xchg   %ax,%ax
  100b66:	66 90                	xchg   %ax,%ax
  100b68:	66 90                	xchg   %ax,%ax
  100b6a:	66 90                	xchg   %ax,%ax
  100b6c:	66 90                	xchg   %ax,%ax
  100b6e:	66 90                	xchg   %ax,%ax
  100b70:	66 90                	xchg   %ax,%ax
  100b72:	66 90                	xchg   %ax,%ax
  100b74:	66 90                	xchg   %ax,%ax
  100b76:	66 90                	xchg   %ax,%ax
  100b78:	66 90                	xchg   %ax,%ax
  100b7a:	66 90                	xchg   %ax,%ax
  100b7c:	66 90                	xchg   %ax,%ax
  100b7e:	66 90                	xchg   %ax,%ax
  100b80:	66 90                	xchg   %ax,%ax
  100b82:	66 90                	xchg   %ax,%ax
  100b84:	66 90                	xchg   %ax,%ax
  100b86:	66 90                	xchg   %ax,%ax
  100b88:	66 90                	xchg   %ax,%ax
  100b8a:	66 90                	xchg   %ax,%ax
  100b8c:	66 90                	xchg   %ax,%ax
  100b8e:	66 90                	xchg   %ax,%ax
  100b90:	66 90                	xchg   %ax,%ax
  100b92:	66 90                	xchg   %ax,%ax
  100b94:	66 90                	xchg   %ax,%ax
  100b96:	66 90                	xchg   %ax,%ax
  100b98:	66 90                	xchg   %ax,%ax
  100b9a:	66 90                	xchg   %ax,%ax
  100b9c:	66 90                	xchg   %ax,%ax
  100b9e:	66 90                	xchg   %ax,%ax
  100ba0:	66 90                	xchg   %ax,%ax
  100ba2:	66 90                	xchg   %ax,%ax
  100ba4:	66 90                	xchg   %ax,%ax
  100ba6:	66 90                	xchg   %ax,%ax
  100ba8:	66 90                	xchg   %ax,%ax
  100baa:	66 90                	xchg   %ax,%ax
  100bac:	66 90                	xchg   %ax,%ax
  100bae:	66 90                	xchg   %ax,%ax
  100bb0:	66 90                	xchg   %ax,%ax
  100bb2:	66 90                	xchg   %ax,%ax
  100bb4:	66 90                	xchg   %ax,%ax
  100bb6:	66 90                	xchg   %ax,%ax
  100bb8:	66 90                	xchg   %ax,%ax
  100bba:	66 90                	xchg   %ax,%ax
  100bbc:	66 90                	xchg   %ax,%ax
  100bbe:	66 90                	xchg   %ax,%ax
  100bc0:	66 90                	xchg   %ax,%ax
  100bc2:	66 90                	xchg   %ax,%ax
  100bc4:	66 90                	xchg   %ax,%ax
  100bc6:	66 90                	xchg   %ax,%ax
  100bc8:	66 90                	xchg   %ax,%ax
  100bca:	66 90                	xchg   %ax,%ax
  100bcc:	66 90                	xchg   %ax,%ax
  100bce:	66 90                	xchg   %ax,%ax
  100bd0:	66 90                	xchg   %ax,%ax
  100bd2:	66 90                	xchg   %ax,%ax
  100bd4:	66 90                	xchg   %ax,%ax
  100bd6:	66 90                	xchg   %ax,%ax
  100bd8:	66 90                	xchg   %ax,%ax
  100bda:	66 90                	xchg   %ax,%ax
  100bdc:	66 90                	xchg   %ax,%ax
  100bde:	66 90                	xchg   %ax,%ax
  100be0:	66 90                	xchg   %ax,%ax
  100be2:	66 90                	xchg   %ax,%ax
  100be4:	66 90                	xchg   %ax,%ax
  100be6:	66 90                	xchg   %ax,%ax
  100be8:	66 90                	xchg   %ax,%ax
  100bea:	66 90                	xchg   %ax,%ax
  100bec:	66 90                	xchg   %ax,%ax
  100bee:	66 90                	xchg   %ax,%ax
  100bf0:	66 90                	xchg   %ax,%ax
  100bf2:	66 90                	xchg   %ax,%ax
  100bf4:	66 90                	xchg   %ax,%ax
  100bf6:	66 90                	xchg   %ax,%ax
  100bf8:	66 90                	xchg   %ax,%ax
  100bfa:	66 90                	xchg   %ax,%ax
  100bfc:	66 90                	xchg   %ax,%ax
  100bfe:	66 90                	xchg   %ax,%ax
  100c00:	66 90                	xchg   %ax,%ax
  100c02:	66 90                	xchg   %ax,%ax
  100c04:	66 90                	xchg   %ax,%ax
  100c06:	66 90                	xchg   %ax,%ax
  100c08:	66 90                	xchg   %ax,%ax
  100c0a:	66 90                	xchg   %ax,%ax
  100c0c:	66 90                	xchg   %ax,%ax
  100c0e:	66 90                	xchg   %ax,%ax
  100c10:	66 90                	xchg   %ax,%ax
  100c12:	66 90                	xchg   %ax,%ax
  100c14:	66 90                	xchg   %ax,%ax
  100c16:	66 90                	xchg   %ax,%ax
  100c18:	66 90                	xchg   %ax,%ax
  100c1a:	66 90                	xchg   %ax,%ax
  100c1c:	66 90                	xchg   %ax,%ax
  100c1e:	66 90                	xchg   %ax,%ax
  100c20:	66 90                	xchg   %ax,%ax
  100c22:	66 90                	xchg   %ax,%ax
  100c24:	66 90                	xchg   %ax,%ax
  100c26:	66 90                	xchg   %ax,%ax
  100c28:	66 90                	xchg   %ax,%ax
  100c2a:	66 90                	xchg   %ax,%ax
  100c2c:	66 90                	xchg   %ax,%ax
  100c2e:	66 90                	xchg   %ax,%ax
  100c30:	66 90                	xchg   %ax,%ax
  100c32:	66 90                	xchg   %ax,%ax
  100c34:	66 90                	xchg   %ax,%ax
  100c36:	66 90                	xchg   %ax,%ax
  100c38:	66 90                	xchg   %ax,%ax
  100c3a:	66 90                	xchg   %ax,%ax
  100c3c:	66 90                	xchg   %ax,%ax
  100c3e:	66 90                	xchg   %ax,%ax
  100c40:	66 90                	xchg   %ax,%ax
  100c42:	66 90                	xchg   %ax,%ax
  100c44:	66 90                	xchg   %ax,%ax
  100c46:	66 90                	xchg   %ax,%ax
  100c48:	66 90                	xchg   %ax,%ax
  100c4a:	66 90                	xchg   %ax,%ax
  100c4c:	66 90                	xchg   %ax,%ax
  100c4e:	66 90                	xchg   %ax,%ax
  100c50:	66 90                	xchg   %ax,%ax
  100c52:	66 90                	xchg   %ax,%ax
  100c54:	66 90                	xchg   %ax,%ax
  100c56:	66 90                	xchg   %ax,%ax
  100c58:	66 90                	xchg   %ax,%ax
  100c5a:	66 90                	xchg   %ax,%ax
  100c5c:	66 90                	xchg   %ax,%ax
  100c5e:	66 90                	xchg   %ax,%ax
  100c60:	66 90                	xchg   %ax,%ax
  100c62:	66 90                	xchg   %ax,%ax
  100c64:	66 90                	xchg   %ax,%ax
  100c66:	66 90                	xchg   %ax,%ax
  100c68:	66 90                	xchg   %ax,%ax
  100c6a:	66 90                	xchg   %ax,%ax
  100c6c:	66 90                	xchg   %ax,%ax
  100c6e:	66 90                	xchg   %ax,%ax
  100c70:	66 90                	xchg   %ax,%ax
  100c72:	66 90                	xchg   %ax,%ax
  100c74:	66 90                	xchg   %ax,%ax
  100c76:	66 90                	xchg   %ax,%ax
  100c78:	66 90                	xchg   %ax,%ax
  100c7a:	66 90                	xchg   %ax,%ax
  100c7c:	66 90                	xchg   %ax,%ax
  100c7e:	66 90                	xchg   %ax,%ax
  100c80:	66 90                	xchg   %ax,%ax
  100c82:	66 90                	xchg   %ax,%ax
  100c84:	66 90                	xchg   %ax,%ax
  100c86:	66 90                	xchg   %ax,%ax
  100c88:	66 90                	xchg   %ax,%ax
  100c8a:	66 90                	xchg   %ax,%ax
  100c8c:	66 90                	xchg   %ax,%ax
  100c8e:	66 90                	xchg   %ax,%ax
  100c90:	66 90                	xchg   %ax,%ax
  100c92:	66 90                	xchg   %ax,%ax
  100c94:	66 90                	xchg   %ax,%ax
  100c96:	66 90                	xchg   %ax,%ax
  100c98:	66 90                	xchg   %ax,%ax
  100c9a:	66 90                	xchg   %ax,%ax
  100c9c:	66 90                	xchg   %ax,%ax
  100c9e:	66 90                	xchg   %ax,%ax
  100ca0:	66 90                	xchg   %ax,%ax
  100ca2:	66 90                	xchg   %ax,%ax
  100ca4:	66 90                	xchg   %ax,%ax
  100ca6:	66 90                	xchg   %ax,%ax
  100ca8:	66 90                	xchg   %ax,%ax
  100caa:	66 90                	xchg   %ax,%ax
  100cac:	66 90                	xchg   %ax,%ax
  100cae:	66 90                	xchg   %ax,%ax
  100cb0:	66 90                	xchg   %ax,%ax
  100cb2:	66 90                	xchg   %ax,%ax
  100cb4:	66 90                	xchg   %ax,%ax
  100cb6:	66 90                	xchg   %ax,%ax
  100cb8:	66 90                	xchg   %ax,%ax
  100cba:	66 90                	xchg   %ax,%ax
  100cbc:	66 90                	xchg   %ax,%ax
  100cbe:	66 90                	xchg   %ax,%ax
  100cc0:	66 90                	xchg   %ax,%ax
  100cc2:	66 90                	xchg   %ax,%ax
  100cc4:	66 90                	xchg   %ax,%ax
  100cc6:	66 90                	xchg   %ax,%ax
  100cc8:	66 90                	xchg   %ax,%ax
  100cca:	66 90                	xchg   %ax,%ax
  100ccc:	66 90                	xchg   %ax,%ax
  100cce:	66 90                	xchg   %ax,%ax
  100cd0:	66 90                	xchg   %ax,%ax
  100cd2:	66 90                	xchg   %ax,%ax
  100cd4:	66 90                	xchg   %ax,%ax
  100cd6:	66 90                	xchg   %ax,%ax
  100cd8:	66 90                	xchg   %ax,%ax
  100cda:	66 90                	xchg   %ax,%ax
  100cdc:	66 90                	xchg   %ax,%ax
  100cde:	66 90                	xchg   %ax,%ax
  100ce0:	66 90                	xchg   %ax,%ax
  100ce2:	66 90                	xchg   %ax,%ax
  100ce4:	66 90                	xchg   %ax,%ax
  100ce6:	66 90                	xchg   %ax,%ax
  100ce8:	66 90                	xchg   %ax,%ax
  100cea:	66 90                	xchg   %ax,%ax
  100cec:	66 90                	xchg   %ax,%ax
  100cee:	66 90                	xchg   %ax,%ax
  100cf0:	66 90                	xchg   %ax,%ax
  100cf2:	66 90                	xchg   %ax,%ax
  100cf4:	66 90                	xchg   %ax,%ax
  100cf6:	66 90                	xchg   %ax,%ax
  100cf8:	66 90                	xchg   %ax,%ax
  100cfa:	66 90                	xchg   %ax,%ax
  100cfc:	66 90                	xchg   %ax,%ax
  100cfe:	66 90                	xchg   %ax,%ax
  100d00:	66 90                	xchg   %ax,%ax
  100d02:	66 90                	xchg   %ax,%ax
  100d04:	66 90                	xchg   %ax,%ax
  100d06:	66 90                	xchg   %ax,%ax
  100d08:	66 90                	xchg   %ax,%ax
  100d0a:	66 90                	xchg   %ax,%ax
  100d0c:	66 90                	xchg   %ax,%ax
  100d0e:	66 90                	xchg   %ax,%ax
  100d10:	66 90                	xchg   %ax,%ax
  100d12:	66 90                	xchg   %ax,%ax
  100d14:	66 90                	xchg   %ax,%ax
  100d16:	66 90                	xchg   %ax,%ax
  100d18:	66 90                	xchg   %ax,%ax
  100d1a:	66 90                	xchg   %ax,%ax
  100d1c:	66 90                	xchg   %ax,%ax
  100d1e:	66 90                	xchg   %ax,%ax
  100d20:	66 90                	xchg   %ax,%ax
  100d22:	66 90                	xchg   %ax,%ax
  100d24:	66 90                	xchg   %ax,%ax
  100d26:	66 90                	xchg   %ax,%ax
  100d28:	66 90                	xchg   %ax,%ax
  100d2a:	66 90                	xchg   %ax,%ax
  100d2c:	66 90                	xchg   %ax,%ax
  100d2e:	66 90                	xchg   %ax,%ax
  100d30:	66 90                	xchg   %ax,%ax
  100d32:	66 90                	xchg   %ax,%ax
  100d34:	66 90                	xchg   %ax,%ax
  100d36:	66 90                	xchg   %ax,%ax
  100d38:	66 90                	xchg   %ax,%ax
  100d3a:	66 90                	xchg   %ax,%ax
  100d3c:	66 90                	xchg   %ax,%ax
  100d3e:	66 90                	xchg   %ax,%ax
  100d40:	66 90                	xchg   %ax,%ax
  100d42:	66 90                	xchg   %ax,%ax
  100d44:	66 90                	xchg   %ax,%ax
  100d46:	66 90                	xchg   %ax,%ax
  100d48:	66 90                	xchg   %ax,%ax
  100d4a:	66 90                	xchg   %ax,%ax
  100d4c:	66 90                	xchg   %ax,%ax
  100d4e:	66 90                	xchg   %ax,%ax
  100d50:	66 90                	xchg   %ax,%ax
  100d52:	66 90                	xchg   %ax,%ax
  100d54:	66 90                	xchg   %ax,%ax
  100d56:	66 90                	xchg   %ax,%ax
  100d58:	66 90                	xchg   %ax,%ax
  100d5a:	66 90                	xchg   %ax,%ax
  100d5c:	66 90                	xchg   %ax,%ax
  100d5e:	66 90                	xchg   %ax,%ax
  100d60:	66 90                	xchg   %ax,%ax
  100d62:	66 90                	xchg   %ax,%ax
  100d64:	66 90                	xchg   %ax,%ax
  100d66:	66 90                	xchg   %ax,%ax
  100d68:	66 90                	xchg   %ax,%ax
  100d6a:	66 90                	xchg   %ax,%ax
  100d6c:	66 90                	xchg   %ax,%ax
  100d6e:	66 90                	xchg   %ax,%ax
  100d70:	66 90                	xchg   %ax,%ax
  100d72:	66 90                	xchg   %ax,%ax
  100d74:	66 90                	xchg   %ax,%ax
  100d76:	66 90                	xchg   %ax,%ax
  100d78:	66 90                	xchg   %ax,%ax
  100d7a:	66 90                	xchg   %ax,%ax
  100d7c:	66 90                	xchg   %ax,%ax
  100d7e:	66 90                	xchg   %ax,%ax
  100d80:	66 90                	xchg   %ax,%ax
  100d82:	66 90                	xchg   %ax,%ax
  100d84:	66 90                	xchg   %ax,%ax
  100d86:	66 90                	xchg   %ax,%ax
  100d88:	66 90                	xchg   %ax,%ax
  100d8a:	66 90                	xchg   %ax,%ax
  100d8c:	66 90                	xchg   %ax,%ax
  100d8e:	66 90                	xchg   %ax,%ax
  100d90:	66 90                	xchg   %ax,%ax
  100d92:	66 90                	xchg   %ax,%ax
  100d94:	66 90                	xchg   %ax,%ax
  100d96:	66 90                	xchg   %ax,%ax
  100d98:	66 90                	xchg   %ax,%ax
  100d9a:	66 90                	xchg   %ax,%ax
  100d9c:	66 90                	xchg   %ax,%ax
  100d9e:	66 90                	xchg   %ax,%ax
  100da0:	66 90                	xchg   %ax,%ax
  100da2:	66 90                	xchg   %ax,%ax
  100da4:	66 90                	xchg   %ax,%ax
  100da6:	66 90                	xchg   %ax,%ax
  100da8:	66 90                	xchg   %ax,%ax
  100daa:	66 90                	xchg   %ax,%ax
  100dac:	66 90                	xchg   %ax,%ax
  100dae:	66 90                	xchg   %ax,%ax
  100db0:	66 90                	xchg   %ax,%ax
  100db2:	66 90                	xchg   %ax,%ax
  100db4:	66 90                	xchg   %ax,%ax
  100db6:	66 90                	xchg   %ax,%ax
  100db8:	66 90                	xchg   %ax,%ax
  100dba:	66 90                	xchg   %ax,%ax
  100dbc:	66 90                	xchg   %ax,%ax
  100dbe:	66 90                	xchg   %ax,%ax
  100dc0:	66 90                	xchg   %ax,%ax
  100dc2:	66 90                	xchg   %ax,%ax
  100dc4:	66 90                	xchg   %ax,%ax
  100dc6:	66 90                	xchg   %ax,%ax
  100dc8:	66 90                	xchg   %ax,%ax
  100dca:	66 90                	xchg   %ax,%ax
  100dcc:	66 90                	xchg   %ax,%ax
  100dce:	66 90                	xchg   %ax,%ax
  100dd0:	66 90                	xchg   %ax,%ax
  100dd2:	66 90                	xchg   %ax,%ax
  100dd4:	66 90                	xchg   %ax,%ax
  100dd6:	66 90                	xchg   %ax,%ax
  100dd8:	66 90                	xchg   %ax,%ax
  100dda:	66 90                	xchg   %ax,%ax
  100ddc:	66 90                	xchg   %ax,%ax
  100dde:	66 90                	xchg   %ax,%ax
  100de0:	66 90                	xchg   %ax,%ax
  100de2:	66 90                	xchg   %ax,%ax
  100de4:	66 90                	xchg   %ax,%ax
  100de6:	66 90                	xchg   %ax,%ax
  100de8:	66 90                	xchg   %ax,%ax
  100dea:	66 90                	xchg   %ax,%ax
  100dec:	66 90                	xchg   %ax,%ax
  100dee:	66 90                	xchg   %ax,%ax
  100df0:	66 90                	xchg   %ax,%ax
  100df2:	66 90                	xchg   %ax,%ax
  100df4:	66 90                	xchg   %ax,%ax
  100df6:	66 90                	xchg   %ax,%ax
  100df8:	66 90                	xchg   %ax,%ax
  100dfa:	66 90                	xchg   %ax,%ax
  100dfc:	66 90                	xchg   %ax,%ax
  100dfe:	66 90                	xchg   %ax,%ax
  100e00:	66 90                	xchg   %ax,%ax
  100e02:	66 90                	xchg   %ax,%ax
  100e04:	66 90                	xchg   %ax,%ax
  100e06:	66 90                	xchg   %ax,%ax
  100e08:	66 90                	xchg   %ax,%ax
  100e0a:	66 90                	xchg   %ax,%ax
  100e0c:	66 90                	xchg   %ax,%ax
  100e0e:	66 90                	xchg   %ax,%ax
  100e10:	66 90                	xchg   %ax,%ax
  100e12:	66 90                	xchg   %ax,%ax
  100e14:	66 90                	xchg   %ax,%ax
  100e16:	66 90                	xchg   %ax,%ax
  100e18:	66 90                	xchg   %ax,%ax
  100e1a:	66 90                	xchg   %ax,%ax
  100e1c:	66 90                	xchg   %ax,%ax
  100e1e:	66 90                	xchg   %ax,%ax
  100e20:	66 90                	xchg   %ax,%ax
  100e22:	66 90                	xchg   %ax,%ax
  100e24:	66 90                	xchg   %ax,%ax
  100e26:	66 90                	xchg   %ax,%ax
  100e28:	66 90                	xchg   %ax,%ax
  100e2a:	66 90                	xchg   %ax,%ax
  100e2c:	66 90                	xchg   %ax,%ax
  100e2e:	66 90                	xchg   %ax,%ax
  100e30:	66 90                	xchg   %ax,%ax
  100e32:	66 90                	xchg   %ax,%ax
  100e34:	66 90                	xchg   %ax,%ax
  100e36:	66 90                	xchg   %ax,%ax
  100e38:	66 90                	xchg   %ax,%ax
  100e3a:	66 90                	xchg   %ax,%ax
  100e3c:	66 90                	xchg   %ax,%ax
  100e3e:	66 90                	xchg   %ax,%ax
  100e40:	66 90                	xchg   %ax,%ax
  100e42:	66 90                	xchg   %ax,%ax
  100e44:	66 90                	xchg   %ax,%ax
  100e46:	66 90                	xchg   %ax,%ax
  100e48:	66 90                	xchg   %ax,%ax
  100e4a:	66 90                	xchg   %ax,%ax
  100e4c:	66 90                	xchg   %ax,%ax
  100e4e:	66 90                	xchg   %ax,%ax
  100e50:	66 90                	xchg   %ax,%ax
  100e52:	66 90                	xchg   %ax,%ax
  100e54:	66 90                	xchg   %ax,%ax
  100e56:	66 90                	xchg   %ax,%ax
  100e58:	66 90                	xchg   %ax,%ax
  100e5a:	66 90                	xchg   %ax,%ax
  100e5c:	66 90                	xchg   %ax,%ax
  100e5e:	66 90                	xchg   %ax,%ax
  100e60:	66 90                	xchg   %ax,%ax
  100e62:	66 90                	xchg   %ax,%ax
  100e64:	66 90                	xchg   %ax,%ax
  100e66:	66 90                	xchg   %ax,%ax
  100e68:	66 90                	xchg   %ax,%ax
  100e6a:	66 90                	xchg   %ax,%ax
  100e6c:	66 90                	xchg   %ax,%ax
  100e6e:	66 90                	xchg   %ax,%ax
  100e70:	66 90                	xchg   %ax,%ax
  100e72:	66 90                	xchg   %ax,%ax
  100e74:	66 90                	xchg   %ax,%ax
  100e76:	66 90                	xchg   %ax,%ax
  100e78:	66 90                	xchg   %ax,%ax
  100e7a:	66 90                	xchg   %ax,%ax
  100e7c:	66 90                	xchg   %ax,%ax
  100e7e:	66 90                	xchg   %ax,%ax
  100e80:	66 90                	xchg   %ax,%ax
  100e82:	66 90                	xchg   %ax,%ax
  100e84:	66 90                	xchg   %ax,%ax
  100e86:	66 90                	xchg   %ax,%ax
  100e88:	66 90                	xchg   %ax,%ax
  100e8a:	66 90                	xchg   %ax,%ax
  100e8c:	66 90                	xchg   %ax,%ax
  100e8e:	66 90                	xchg   %ax,%ax
  100e90:	66 90                	xchg   %ax,%ax
  100e92:	66 90                	xchg   %ax,%ax
  100e94:	66 90                	xchg   %ax,%ax
  100e96:	66 90                	xchg   %ax,%ax
  100e98:	66 90                	xchg   %ax,%ax
  100e9a:	66 90                	xchg   %ax,%ax
  100e9c:	66 90                	xchg   %ax,%ax
  100e9e:	66 90                	xchg   %ax,%ax
  100ea0:	66 90                	xchg   %ax,%ax
  100ea2:	66 90                	xchg   %ax,%ax
  100ea4:	66 90                	xchg   %ax,%ax
  100ea6:	66 90                	xchg   %ax,%ax
  100ea8:	66 90                	xchg   %ax,%ax
  100eaa:	66 90                	xchg   %ax,%ax
  100eac:	66 90                	xchg   %ax,%ax
  100eae:	66 90                	xchg   %ax,%ax
  100eb0:	66 90                	xchg   %ax,%ax
  100eb2:	66 90                	xchg   %ax,%ax
  100eb4:	66 90                	xchg   %ax,%ax
  100eb6:	66 90                	xchg   %ax,%ax
  100eb8:	66 90                	xchg   %ax,%ax
  100eba:	66 90                	xchg   %ax,%ax
  100ebc:	66 90                	xchg   %ax,%ax
  100ebe:	66 90                	xchg   %ax,%ax
  100ec0:	66 90                	xchg   %ax,%ax
  100ec2:	66 90                	xchg   %ax,%ax
  100ec4:	66 90                	xchg   %ax,%ax
  100ec6:	66 90                	xchg   %ax,%ax
  100ec8:	66 90                	xchg   %ax,%ax
  100eca:	66 90                	xchg   %ax,%ax
  100ecc:	66 90                	xchg   %ax,%ax
  100ece:	66 90                	xchg   %ax,%ax
  100ed0:	66 90                	xchg   %ax,%ax
  100ed2:	66 90                	xchg   %ax,%ax
  100ed4:	66 90                	xchg   %ax,%ax
  100ed6:	66 90                	xchg   %ax,%ax
  100ed8:	66 90                	xchg   %ax,%ax
  100eda:	66 90                	xchg   %ax,%ax
  100edc:	66 90                	xchg   %ax,%ax
  100ede:	66 90                	xchg   %ax,%ax
  100ee0:	66 90                	xchg   %ax,%ax
  100ee2:	66 90                	xchg   %ax,%ax
  100ee4:	66 90                	xchg   %ax,%ax
  100ee6:	66 90                	xchg   %ax,%ax
  100ee8:	66 90                	xchg   %ax,%ax
  100eea:	66 90                	xchg   %ax,%ax
  100eec:	66 90                	xchg   %ax,%ax
  100eee:	66 90                	xchg   %ax,%ax
  100ef0:	66 90                	xchg   %ax,%ax
  100ef2:	66 90                	xchg   %ax,%ax
  100ef4:	66 90                	xchg   %ax,%ax
  100ef6:	66 90                	xchg   %ax,%ax
  100ef8:	66 90                	xchg   %ax,%ax
  100efa:	66 90                	xchg   %ax,%ax
  100efc:	66 90                	xchg   %ax,%ax
  100efe:	66 90                	xchg   %ax,%ax
  100f00:	66 90                	xchg   %ax,%ax
  100f02:	66 90                	xchg   %ax,%ax
  100f04:	66 90                	xchg   %ax,%ax
  100f06:	66 90                	xchg   %ax,%ax
  100f08:	66 90                	xchg   %ax,%ax
  100f0a:	66 90                	xchg   %ax,%ax
  100f0c:	66 90                	xchg   %ax,%ax
  100f0e:	66 90                	xchg   %ax,%ax
  100f10:	66 90                	xchg   %ax,%ax
  100f12:	66 90                	xchg   %ax,%ax
  100f14:	66 90                	xchg   %ax,%ax
  100f16:	66 90                	xchg   %ax,%ax
  100f18:	66 90                	xchg   %ax,%ax
  100f1a:	66 90                	xchg   %ax,%ax
  100f1c:	66 90                	xchg   %ax,%ax
  100f1e:	66 90                	xchg   %ax,%ax
  100f20:	66 90                	xchg   %ax,%ax
  100f22:	66 90                	xchg   %ax,%ax
  100f24:	66 90                	xchg   %ax,%ax
  100f26:	66 90                	xchg   %ax,%ax
  100f28:	66 90                	xchg   %ax,%ax
  100f2a:	66 90                	xchg   %ax,%ax
  100f2c:	66 90                	xchg   %ax,%ax
  100f2e:	66 90                	xchg   %ax,%ax
  100f30:	66 90                	xchg   %ax,%ax
  100f32:	66 90                	xchg   %ax,%ax
  100f34:	66 90                	xchg   %ax,%ax
  100f36:	66 90                	xchg   %ax,%ax
  100f38:	66 90                	xchg   %ax,%ax
  100f3a:	66 90                	xchg   %ax,%ax
  100f3c:	66 90                	xchg   %ax,%ax
  100f3e:	66 90                	xchg   %ax,%ax
  100f40:	66 90                	xchg   %ax,%ax
  100f42:	66 90                	xchg   %ax,%ax
  100f44:	66 90                	xchg   %ax,%ax
  100f46:	66 90                	xchg   %ax,%ax
  100f48:	66 90                	xchg   %ax,%ax
  100f4a:	66 90                	xchg   %ax,%ax
  100f4c:	66 90                	xchg   %ax,%ax
  100f4e:	66 90                	xchg   %ax,%ax
  100f50:	66 90                	xchg   %ax,%ax
  100f52:	66 90                	xchg   %ax,%ax
  100f54:	66 90                	xchg   %ax,%ax
  100f56:	66 90                	xchg   %ax,%ax
  100f58:	66 90                	xchg   %ax,%ax
  100f5a:	66 90                	xchg   %ax,%ax
  100f5c:	66 90                	xchg   %ax,%ax
  100f5e:	66 90                	xchg   %ax,%ax
  100f60:	66 90                	xchg   %ax,%ax
  100f62:	66 90                	xchg   %ax,%ax
  100f64:	66 90                	xchg   %ax,%ax
  100f66:	66 90                	xchg   %ax,%ax
  100f68:	66 90                	xchg   %ax,%ax
  100f6a:	66 90                	xchg   %ax,%ax
  100f6c:	66 90                	xchg   %ax,%ax
  100f6e:	66 90                	xchg   %ax,%ax
  100f70:	66 90                	xchg   %ax,%ax
  100f72:	66 90                	xchg   %ax,%ax
  100f74:	66 90                	xchg   %ax,%ax
  100f76:	66 90                	xchg   %ax,%ax
  100f78:	66 90                	xchg   %ax,%ax
  100f7a:	66 90                	xchg   %ax,%ax
  100f7c:	66 90                	xchg   %ax,%ax
  100f7e:	66 90                	xchg   %ax,%ax
  100f80:	66 90                	xchg   %ax,%ax
  100f82:	66 90                	xchg   %ax,%ax
  100f84:	66 90                	xchg   %ax,%ax
  100f86:	66 90                	xchg   %ax,%ax
  100f88:	66 90                	xchg   %ax,%ax
  100f8a:	66 90                	xchg   %ax,%ax
  100f8c:	66 90                	xchg   %ax,%ax
  100f8e:	66 90                	xchg   %ax,%ax
  100f90:	66 90                	xchg   %ax,%ax
  100f92:	66 90                	xchg   %ax,%ax
  100f94:	66 90                	xchg   %ax,%ax
  100f96:	66 90                	xchg   %ax,%ax
  100f98:	66 90                	xchg   %ax,%ax
  100f9a:	66 90                	xchg   %ax,%ax
  100f9c:	66 90                	xchg   %ax,%ax
  100f9e:	66 90                	xchg   %ax,%ax
  100fa0:	66 90                	xchg   %ax,%ax
  100fa2:	66 90                	xchg   %ax,%ax
  100fa4:	66 90                	xchg   %ax,%ax
  100fa6:	66 90                	xchg   %ax,%ax
  100fa8:	66 90                	xchg   %ax,%ax
  100faa:	66 90                	xchg   %ax,%ax
  100fac:	66 90                	xchg   %ax,%ax
  100fae:	66 90                	xchg   %ax,%ax
  100fb0:	66 90                	xchg   %ax,%ax
  100fb2:	66 90                	xchg   %ax,%ax
  100fb4:	66 90                	xchg   %ax,%ax
  100fb6:	66 90                	xchg   %ax,%ax
  100fb8:	66 90                	xchg   %ax,%ax
  100fba:	66 90                	xchg   %ax,%ax
  100fbc:	66 90                	xchg   %ax,%ax
  100fbe:	66 90                	xchg   %ax,%ax
  100fc0:	66 90                	xchg   %ax,%ax
  100fc2:	66 90                	xchg   %ax,%ax
  100fc4:	66 90                	xchg   %ax,%ax
  100fc6:	66 90                	xchg   %ax,%ax
  100fc8:	66 90                	xchg   %ax,%ax
  100fca:	66 90                	xchg   %ax,%ax
  100fcc:	66 90                	xchg   %ax,%ax
  100fce:	66 90                	xchg   %ax,%ax
  100fd0:	66 90                	xchg   %ax,%ax
  100fd2:	66 90                	xchg   %ax,%ax
  100fd4:	66 90                	xchg   %ax,%ax
  100fd6:	66 90                	xchg   %ax,%ax
  100fd8:	66 90                	xchg   %ax,%ax
  100fda:	66 90                	xchg   %ax,%ax
  100fdc:	66 90                	xchg   %ax,%ax
  100fde:	66 90                	xchg   %ax,%ax
  100fe0:	66 90                	xchg   %ax,%ax
  100fe2:	66 90                	xchg   %ax,%ax
  100fe4:	66 90                	xchg   %ax,%ax
  100fe6:	66 90                	xchg   %ax,%ax
  100fe8:	66 90                	xchg   %ax,%ax
  100fea:	66 90                	xchg   %ax,%ax
  100fec:	66 90                	xchg   %ax,%ax
  100fee:	66 90                	xchg   %ax,%ax
  100ff0:	66 90                	xchg   %ax,%ax
  100ff2:	66 90                	xchg   %ax,%ax
  100ff4:	66 90                	xchg   %ax,%ax
  100ff6:	66 90                	xchg   %ax,%ax
  100ff8:	66 90                	xchg   %ax,%ax
  100ffa:	66 90                	xchg   %ax,%ax
  100ffc:	66 90                	xchg   %ax,%ax
  100ffe:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

c0102000 <gdt_flush>:
c0102000:	8b 44 24 04          	mov    0x4(%esp),%eax
c0102004:	0f 01 10             	lgdtl  (%eax)
c0102007:	66 b8 10 00          	mov    $0x10,%ax
c010200b:	8e d8                	mov    %eax,%ds
c010200d:	8e c0                	mov    %eax,%es
c010200f:	8e e0                	mov    %eax,%fs
c0102011:	8e e8                	mov    %eax,%gs
c0102013:	8e d0                	mov    %eax,%ss
c0102015:	ea 1c 20 10 c0 08 00 	ljmp   $0x8,$0xc010201c

c010201c <gdt_flush.flush>:
c010201c:	c3                   	ret    
c010201d:	66 90                	xchg   %ax,%ax
c010201f:	90                   	nop

c0102020 <isr0>:
c0102020:	fa                   	cli    
c0102021:	6a 00                	push   $0x0
c0102023:	6a 00                	push   $0x0
c0102025:	e9 fc 00 00 00       	jmp    c0102126 <isr_common_stub>

c010202a <isr1>:
c010202a:	fa                   	cli    
c010202b:	6a 00                	push   $0x0
c010202d:	6a 01                	push   $0x1
c010202f:	e9 f2 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102034 <isr2>:
c0102034:	fa                   	cli    
c0102035:	6a 00                	push   $0x0
c0102037:	6a 02                	push   $0x2
c0102039:	e9 e8 00 00 00       	jmp    c0102126 <isr_common_stub>

c010203e <isr3>:
c010203e:	fa                   	cli    
c010203f:	6a 00                	push   $0x0
c0102041:	6a 03                	push   $0x3
c0102043:	e9 de 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102048 <isr4>:
c0102048:	fa                   	cli    
c0102049:	6a 00                	push   $0x0
c010204b:	6a 04                	push   $0x4
c010204d:	e9 d4 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102052 <isr5>:
c0102052:	fa                   	cli    
c0102053:	6a 00                	push   $0x0
c0102055:	6a 05                	push   $0x5
c0102057:	e9 ca 00 00 00       	jmp    c0102126 <isr_common_stub>

c010205c <isr6>:
c010205c:	fa                   	cli    
c010205d:	6a 00                	push   $0x0
c010205f:	6a 06                	push   $0x6
c0102061:	e9 c0 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102066 <isr7>:
c0102066:	fa                   	cli    
c0102067:	6a 00                	push   $0x0
c0102069:	6a 07                	push   $0x7
c010206b:	e9 b6 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102070 <isr8>:
c0102070:	fa                   	cli    
c0102071:	6a 08                	push   $0x8
c0102073:	e9 ae 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102078 <isr9>:
c0102078:	fa                   	cli    
c0102079:	6a 00                	push   $0x0
c010207b:	6a 09                	push   $0x9
c010207d:	e9 a4 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102082 <isr10>:
c0102082:	fa                   	cli    
c0102083:	6a 0a                	push   $0xa
c0102085:	e9 9c 00 00 00       	jmp    c0102126 <isr_common_stub>

c010208a <isr11>:
c010208a:	fa                   	cli    
c010208b:	6a 0b                	push   $0xb
c010208d:	e9 94 00 00 00       	jmp    c0102126 <isr_common_stub>

c0102092 <isr12>:
c0102092:	fa                   	cli    
c0102093:	6a 0c                	push   $0xc
c0102095:	e9 8c 00 00 00       	jmp    c0102126 <isr_common_stub>

c010209a <isr13>:
c010209a:	fa                   	cli    
c010209b:	6a 0d                	push   $0xd
c010209d:	e9 84 00 00 00       	jmp    c0102126 <isr_common_stub>

c01020a2 <isr14>:
c01020a2:	fa                   	cli    
c01020a3:	6a 0e                	push   $0xe
c01020a5:	eb 7f                	jmp    c0102126 <isr_common_stub>

c01020a7 <isr15>:
c01020a7:	fa                   	cli    
c01020a8:	6a 00                	push   $0x0
c01020aa:	6a 0f                	push   $0xf
c01020ac:	eb 78                	jmp    c0102126 <isr_common_stub>

c01020ae <isr16>:
c01020ae:	fa                   	cli    
c01020af:	6a 00                	push   $0x0
c01020b1:	6a 10                	push   $0x10
c01020b3:	eb 71                	jmp    c0102126 <isr_common_stub>

c01020b5 <isr17>:
c01020b5:	fa                   	cli    
c01020b6:	6a 11                	push   $0x11
c01020b8:	eb 6c                	jmp    c0102126 <isr_common_stub>

c01020ba <isr18>:
c01020ba:	fa                   	cli    
c01020bb:	6a 00                	push   $0x0
c01020bd:	6a 12                	push   $0x12
c01020bf:	eb 65                	jmp    c0102126 <isr_common_stub>

c01020c1 <isr19>:
c01020c1:	fa                   	cli    
c01020c2:	6a 00                	push   $0x0
c01020c4:	6a 13                	push   $0x13
c01020c6:	eb 5e                	jmp    c0102126 <isr_common_stub>

c01020c8 <isr20>:
c01020c8:	fa                   	cli    
c01020c9:	6a 00                	push   $0x0
c01020cb:	6a 14                	push   $0x14
c01020cd:	eb 57                	jmp    c0102126 <isr_common_stub>

c01020cf <isr21>:
c01020cf:	fa                   	cli    
c01020d0:	6a 00                	push   $0x0
c01020d2:	6a 15                	push   $0x15
c01020d4:	eb 50                	jmp    c0102126 <isr_common_stub>

c01020d6 <isr22>:
c01020d6:	fa                   	cli    
c01020d7:	6a 00                	push   $0x0
c01020d9:	6a 16                	push   $0x16
c01020db:	eb 49                	jmp    c0102126 <isr_common_stub>

c01020dd <isr23>:
c01020dd:	fa                   	cli    
c01020de:	6a 00                	push   $0x0
c01020e0:	6a 17                	push   $0x17
c01020e2:	eb 42                	jmp    c0102126 <isr_common_stub>

c01020e4 <isr24>:
c01020e4:	fa                   	cli    
c01020e5:	6a 00                	push   $0x0
c01020e7:	6a 18                	push   $0x18
c01020e9:	eb 3b                	jmp    c0102126 <isr_common_stub>

c01020eb <isr25>:
c01020eb:	fa                   	cli    
c01020ec:	6a 00                	push   $0x0
c01020ee:	6a 19                	push   $0x19
c01020f0:	eb 34                	jmp    c0102126 <isr_common_stub>

c01020f2 <isr26>:
c01020f2:	fa                   	cli    
c01020f3:	6a 00                	push   $0x0
c01020f5:	6a 1a                	push   $0x1a
c01020f7:	eb 2d                	jmp    c0102126 <isr_common_stub>

c01020f9 <isr27>:
c01020f9:	fa                   	cli    
c01020fa:	6a 00                	push   $0x0
c01020fc:	6a 1b                	push   $0x1b
c01020fe:	eb 26                	jmp    c0102126 <isr_common_stub>

c0102100 <isr28>:
c0102100:	fa                   	cli    
c0102101:	6a 00                	push   $0x0
c0102103:	6a 1c                	push   $0x1c
c0102105:	eb 1f                	jmp    c0102126 <isr_common_stub>

c0102107 <isr29>:
c0102107:	fa                   	cli    
c0102108:	6a 00                	push   $0x0
c010210a:	6a 1d                	push   $0x1d
c010210c:	eb 18                	jmp    c0102126 <isr_common_stub>

c010210e <isr30>:
c010210e:	fa                   	cli    
c010210f:	6a 00                	push   $0x0
c0102111:	6a 1e                	push   $0x1e
c0102113:	eb 11                	jmp    c0102126 <isr_common_stub>

c0102115 <isr31>:
c0102115:	fa                   	cli    
c0102116:	6a 00                	push   $0x0
c0102118:	6a 1f                	push   $0x1f
c010211a:	eb 0a                	jmp    c0102126 <isr_common_stub>

c010211c <isr255>:
c010211c:	fa                   	cli    
c010211d:	6a 00                	push   $0x0
c010211f:	68 ff 00 00 00       	push   $0xff
c0102124:	eb 00                	jmp    c0102126 <isr_common_stub>

c0102126 <isr_common_stub>:
c0102126:	60                   	pusha  
c0102127:	66 8c d8             	mov    %ds,%ax
c010212a:	50                   	push   %eax
c010212b:	66 b8 10 00          	mov    $0x10,%ax
c010212f:	8e d8                	mov    %eax,%ds
c0102131:	8e c0                	mov    %eax,%es
c0102133:	8e e0                	mov    %eax,%fs
c0102135:	8e e8                	mov    %eax,%gs
c0102137:	8e d0                	mov    %eax,%ss
c0102139:	54                   	push   %esp
c010213a:	e8 41 1d 00 00       	call   c0103e80 <isr_handler>
c010213f:	83 c4 04             	add    $0x4,%esp
c0102142:	5b                   	pop    %ebx
c0102143:	8e db                	mov    %ebx,%ds
c0102145:	8e c3                	mov    %ebx,%es
c0102147:	8e e3                	mov    %ebx,%fs
c0102149:	8e eb                	mov    %ebx,%gs
c010214b:	8e d3                	mov    %ebx,%ss
c010214d:	61                   	popa   
c010214e:	83 c4 08             	add    $0x8,%esp
c0102151:	cf                   	iret   

c0102152 <idt_flush>:
c0102152:	8b 44 24 04          	mov    0x4(%esp),%eax
c0102156:	0f 01 18             	lidtl  (%eax)
c0102159:	c3                   	ret    

c010215a <irq0>:
c010215a:	fa                   	cli    
c010215b:	6a 00                	push   $0x0
c010215d:	6a 20                	push   $0x20
c010215f:	eb 69                	jmp    c01021ca <irq_common_stub>

c0102161 <irq1>:
c0102161:	fa                   	cli    
c0102162:	6a 00                	push   $0x0
c0102164:	6a 21                	push   $0x21
c0102166:	eb 62                	jmp    c01021ca <irq_common_stub>

c0102168 <irq2>:
c0102168:	fa                   	cli    
c0102169:	6a 00                	push   $0x0
c010216b:	6a 22                	push   $0x22
c010216d:	eb 5b                	jmp    c01021ca <irq_common_stub>

c010216f <irq3>:
c010216f:	fa                   	cli    
c0102170:	6a 00                	push   $0x0
c0102172:	6a 23                	push   $0x23
c0102174:	eb 54                	jmp    c01021ca <irq_common_stub>

c0102176 <irq4>:
c0102176:	fa                   	cli    
c0102177:	6a 00                	push   $0x0
c0102179:	6a 24                	push   $0x24
c010217b:	eb 4d                	jmp    c01021ca <irq_common_stub>

c010217d <irq5>:
c010217d:	fa                   	cli    
c010217e:	6a 00                	push   $0x0
c0102180:	6a 25                	push   $0x25
c0102182:	eb 46                	jmp    c01021ca <irq_common_stub>

c0102184 <irq6>:
c0102184:	fa                   	cli    
c0102185:	6a 00                	push   $0x0
c0102187:	6a 26                	push   $0x26
c0102189:	eb 3f                	jmp    c01021ca <irq_common_stub>

c010218b <irq7>:
c010218b:	fa                   	cli    
c010218c:	6a 00                	push   $0x0
c010218e:	6a 27                	push   $0x27
c0102190:	eb 38                	jmp    c01021ca <irq_common_stub>

c0102192 <irq8>:
c0102192:	fa                   	cli    
c0102193:	6a 00                	push   $0x0
c0102195:	6a 28                	push   $0x28
c0102197:	eb 31                	jmp    c01021ca <irq_common_stub>

c0102199 <irq9>:
c0102199:	fa                   	cli    
c010219a:	6a 00                	push   $0x0
c010219c:	6a 29                	push   $0x29
c010219e:	eb 2a                	jmp    c01021ca <irq_common_stub>

c01021a0 <irq10>:
c01021a0:	fa                   	cli    
c01021a1:	6a 00                	push   $0x0
c01021a3:	6a 2a                	push   $0x2a
c01021a5:	eb 23                	jmp    c01021ca <irq_common_stub>

c01021a7 <irq11>:
c01021a7:	fa                   	cli    
c01021a8:	6a 00                	push   $0x0
c01021aa:	6a 2b                	push   $0x2b
c01021ac:	eb 1c                	jmp    c01021ca <irq_common_stub>

c01021ae <irq12>:
c01021ae:	fa                   	cli    
c01021af:	6a 00                	push   $0x0
c01021b1:	6a 2c                	push   $0x2c
c01021b3:	eb 15                	jmp    c01021ca <irq_common_stub>

c01021b5 <irq13>:
c01021b5:	fa                   	cli    
c01021b6:	6a 00                	push   $0x0
c01021b8:	6a 2d                	push   $0x2d
c01021ba:	eb 0e                	jmp    c01021ca <irq_common_stub>

c01021bc <irq14>:
c01021bc:	fa                   	cli    
c01021bd:	6a 00                	push   $0x0
c01021bf:	6a 2e                	push   $0x2e
c01021c1:	eb 07                	jmp    c01021ca <irq_common_stub>

c01021c3 <irq15>:
c01021c3:	fa                   	cli    
c01021c4:	6a 00                	push   $0x0
c01021c6:	6a 2f                	push   $0x2f
c01021c8:	eb 00                	jmp    c01021ca <irq_common_stub>

c01021ca <irq_common_stub>:
c01021ca:	60                   	pusha  
c01021cb:	66 8c d8             	mov    %ds,%ax
c01021ce:	50                   	push   %eax
c01021cf:	66 b8 10 00          	mov    $0x10,%ax
c01021d3:	8e d8                	mov    %eax,%ds
c01021d5:	8e c0                	mov    %eax,%es
c01021d7:	8e e0                	mov    %eax,%fs
c01021d9:	8e e8                	mov    %eax,%gs
c01021db:	8e d0                	mov    %eax,%ss
c01021dd:	54                   	push   %esp
c01021de:	e8 ff 1c 00 00       	call   c0103ee2 <irq_handler>
c01021e3:	83 c4 04             	add    $0x4,%esp
c01021e6:	5b                   	pop    %ebx
c01021e7:	8e db                	mov    %ebx,%ds
c01021e9:	8e c3                	mov    %ebx,%es
c01021eb:	8e e3                	mov    %ebx,%fs
c01021ed:	8e eb                	mov    %ebx,%gs
c01021ef:	8e d3                	mov    %ebx,%ss
c01021f1:	61                   	popa   
c01021f2:	83 c4 08             	add    $0x8,%esp
c01021f5:	cf                   	iret   

c01021f6 <irq_common_stub.end>:
c01021f6:	66 90                	xchg   %ax,%ax

c01021f8 <prints>:
c01021f8:	55                   	push   %ebp
c01021f9:	89 e5                	mov    %esp,%ebp
c01021fb:	83 ec 18             	sub    $0x18,%esp
c01021fe:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c0102205:	00 
c0102206:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c010220d:	00 
c010220e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102211:	89 04 24             	mov    %eax,(%esp)
c0102214:	e8 3f 05 00 00       	call   c0102758 <screen_string>
c0102219:	c9                   	leave  
c010221a:	c3                   	ret    

c010221b <printchar>:
c010221b:	55                   	push   %ebp
c010221c:	89 e5                	mov    %esp,%ebp
c010221e:	83 ec 28             	sub    $0x28,%esp
c0102221:	8b 45 08             	mov    0x8(%ebp),%eax
c0102224:	88 45 f4             	mov    %al,-0xc(%ebp)
c0102227:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
c010222b:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c0102232:	00 
c0102233:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c010223a:	00 
c010223b:	89 04 24             	mov    %eax,(%esp)
c010223e:	e8 2a 04 00 00       	call   c010266d <screen_char>
c0102243:	c9                   	leave  
c0102244:	c3                   	ret    

c0102245 <printi>:
c0102245:	55                   	push   %ebp
c0102246:	89 e5                	mov    %esp,%ebp
c0102248:	83 ec 48             	sub    $0x48,%esp
c010224b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102252:	8b 45 08             	mov    0x8(%ebp),%eax
c0102255:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102258:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c010225c:	79 03                	jns    c0102261 <printi+0x1c>
c010225e:	f7 5d 08             	negl   0x8(%ebp)
c0102261:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0102264:	ba 67 66 66 66       	mov    $0x66666667,%edx
c0102269:	89 c8                	mov    %ecx,%eax
c010226b:	f7 ea                	imul   %edx
c010226d:	c1 fa 02             	sar    $0x2,%edx
c0102270:	89 c8                	mov    %ecx,%eax
c0102272:	c1 f8 1f             	sar    $0x1f,%eax
c0102275:	29 c2                	sub    %eax,%edx
c0102277:	89 d0                	mov    %edx,%eax
c0102279:	c1 e0 02             	shl    $0x2,%eax
c010227c:	01 d0                	add    %edx,%eax
c010227e:	01 c0                	add    %eax,%eax
c0102280:	89 ca                	mov    %ecx,%edx
c0102282:	29 c2                	sub    %eax,%edx
c0102284:	89 d0                	mov    %edx,%eax
c0102286:	83 c0 30             	add    $0x30,%eax
c0102289:	8d 4d d0             	lea    -0x30(%ebp),%ecx
c010228c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010228f:	01 ca                	add    %ecx,%edx
c0102291:	88 02                	mov    %al,(%edx)
c0102293:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102297:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010229a:	ba 67 66 66 66       	mov    $0x66666667,%edx
c010229f:	89 c8                	mov    %ecx,%eax
c01022a1:	f7 ea                	imul   %edx
c01022a3:	c1 fa 02             	sar    $0x2,%edx
c01022a6:	89 c8                	mov    %ecx,%eax
c01022a8:	c1 f8 1f             	sar    $0x1f,%eax
c01022ab:	89 d1                	mov    %edx,%ecx
c01022ad:	29 c1                	sub    %eax,%ecx
c01022af:	89 c8                	mov    %ecx,%eax
c01022b1:	89 45 08             	mov    %eax,0x8(%ebp)
c01022b4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c01022b8:	7f a7                	jg     c0102261 <printi+0x1c>
c01022ba:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c01022be:	79 0f                	jns    c01022cf <printi+0x8a>
c01022c0:	8d 55 d0             	lea    -0x30(%ebp),%edx
c01022c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01022c6:	01 d0                	add    %edx,%eax
c01022c8:	c6 00 2d             	movb   $0x2d,(%eax)
c01022cb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01022cf:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c01022d3:	eb 2a                	jmp    c01022ff <printi+0xba>
c01022d5:	8d 55 d0             	lea    -0x30(%ebp),%edx
c01022d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01022db:	01 d0                	add    %edx,%eax
c01022dd:	0f b6 00             	movzbl (%eax),%eax
c01022e0:	0f be c0             	movsbl %al,%eax
c01022e3:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c01022ea:	00 
c01022eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01022f2:	00 
c01022f3:	89 04 24             	mov    %eax,(%esp)
c01022f6:	e8 72 03 00 00       	call   c010266d <screen_char>
c01022fb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c01022ff:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102303:	79 d0                	jns    c01022d5 <printi+0x90>
c0102305:	c9                   	leave  
c0102306:	c3                   	ret    

c0102307 <printx>:
c0102307:	55                   	push   %ebp
c0102308:	89 e5                	mov    %esp,%ebp
c010230a:	81 ec b8 00 00 00    	sub    $0xb8,%esp
c0102310:	c6 45 e4 30          	movb   $0x30,-0x1c(%ebp)
c0102314:	c6 45 e5 31          	movb   $0x31,-0x1b(%ebp)
c0102318:	c6 45 e6 32          	movb   $0x32,-0x1a(%ebp)
c010231c:	c6 45 e7 33          	movb   $0x33,-0x19(%ebp)
c0102320:	c6 45 e8 34          	movb   $0x34,-0x18(%ebp)
c0102324:	c6 45 e9 35          	movb   $0x35,-0x17(%ebp)
c0102328:	c6 45 ea 36          	movb   $0x36,-0x16(%ebp)
c010232c:	c6 45 eb 37          	movb   $0x37,-0x15(%ebp)
c0102330:	c6 45 ec 38          	movb   $0x38,-0x14(%ebp)
c0102334:	c6 45 ed 39          	movb   $0x39,-0x13(%ebp)
c0102338:	c6 45 ee 41          	movb   $0x41,-0x12(%ebp)
c010233c:	c6 45 ef 42          	movb   $0x42,-0x11(%ebp)
c0102340:	c6 45 f0 43          	movb   $0x43,-0x10(%ebp)
c0102344:	c6 45 f1 44          	movb   $0x44,-0xf(%ebp)
c0102348:	c6 45 f2 45          	movb   $0x45,-0xe(%ebp)
c010234c:	c6 45 f3 46          	movb   $0x46,-0xd(%ebp)
c0102350:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102357:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c010235b:	79 38                	jns    c0102395 <printx+0x8e>
c010235d:	f7 5d 08             	negl   0x8(%ebp)
c0102360:	eb 33                	jmp    c0102395 <printx+0x8e>
c0102362:	8b 45 08             	mov    0x8(%ebp),%eax
c0102365:	89 c2                	mov    %eax,%edx
c0102367:	c1 fa 1f             	sar    $0x1f,%edx
c010236a:	c1 ea 1c             	shr    $0x1c,%edx
c010236d:	01 d0                	add    %edx,%eax
c010236f:	83 e0 0f             	and    $0xf,%eax
c0102372:	29 d0                	sub    %edx,%eax
c0102374:	89 c2                	mov    %eax,%edx
c0102376:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102379:	89 94 85 64 ff ff ff 	mov    %edx,-0x9c(%ebp,%eax,4)
c0102380:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102384:	8b 45 08             	mov    0x8(%ebp),%eax
c0102387:	8d 50 0f             	lea    0xf(%eax),%edx
c010238a:	85 c0                	test   %eax,%eax
c010238c:	0f 48 c2             	cmovs  %edx,%eax
c010238f:	c1 f8 04             	sar    $0x4,%eax
c0102392:	89 45 08             	mov    %eax,0x8(%ebp)
c0102395:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102399:	7f c7                	jg     c0102362 <printx+0x5b>
c010239b:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c010239f:	eb 2e                	jmp    c01023cf <printx+0xc8>
c01023a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01023a4:	8b 84 85 64 ff ff ff 	mov    -0x9c(%ebp,%eax,4),%eax
c01023ab:	0f b6 44 05 e4       	movzbl -0x1c(%ebp,%eax,1),%eax
c01023b0:	0f be c0             	movsbl %al,%eax
c01023b3:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c01023ba:	00 
c01023bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01023c2:	00 
c01023c3:	89 04 24             	mov    %eax,(%esp)
c01023c6:	e8 a2 02 00 00       	call   c010266d <screen_char>
c01023cb:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c01023cf:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01023d3:	79 cc                	jns    c01023a1 <printx+0x9a>
c01023d5:	c9                   	leave  
c01023d6:	c3                   	ret    

c01023d7 <printk>:
c01023d7:	55                   	push   %ebp
c01023d8:	89 e5                	mov    %esp,%ebp
c01023da:	83 ec 28             	sub    $0x28,%esp
c01023dd:	8d 45 0c             	lea    0xc(%ebp),%eax
c01023e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01023e3:	8b 45 08             	mov    0x8(%ebp),%eax
c01023e6:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01023e9:	89 54 24 04          	mov    %edx,0x4(%esp)
c01023ed:	89 04 24             	mov    %eax,(%esp)
c01023f0:	e8 0f 00 00 00       	call   c0102404 <vprintk>
c01023f5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01023f8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01023ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102402:	c9                   	leave  
c0102403:	c3                   	ret    

c0102404 <vprintk>:
c0102404:	55                   	push   %ebp
c0102405:	89 e5                	mov    %esp,%ebp
c0102407:	83 ec 28             	sub    $0x28,%esp
c010240a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102411:	e9 d8 00 00 00       	jmp    c01024ee <vprintk+0xea>
c0102416:	8b 45 08             	mov    0x8(%ebp),%eax
c0102419:	0f b6 00             	movzbl (%eax),%eax
c010241c:	3c 25                	cmp    $0x25,%al
c010241e:	0f 85 b1 00 00 00    	jne    c01024d5 <vprintk+0xd1>
c0102424:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0102428:	8b 45 08             	mov    0x8(%ebp),%eax
c010242b:	0f b6 00             	movzbl (%eax),%eax
c010242e:	3c 63                	cmp    $0x63,%al
c0102430:	75 20                	jne    c0102452 <vprintk+0x4e>
c0102432:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c0102436:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102439:	83 e8 04             	sub    $0x4,%eax
c010243c:	8b 00                	mov    (%eax),%eax
c010243e:	0f be c0             	movsbl %al,%eax
c0102441:	89 04 24             	mov    %eax,(%esp)
c0102444:	e8 d2 fd ff ff       	call   c010221b <printchar>
c0102449:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010244d:	e9 98 00 00 00       	jmp    c01024ea <vprintk+0xe6>
c0102452:	8b 45 08             	mov    0x8(%ebp),%eax
c0102455:	0f b6 00             	movzbl (%eax),%eax
c0102458:	3c 64                	cmp    $0x64,%al
c010245a:	75 1a                	jne    c0102476 <vprintk+0x72>
c010245c:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c0102460:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102463:	83 e8 04             	sub    $0x4,%eax
c0102466:	8b 00                	mov    (%eax),%eax
c0102468:	89 04 24             	mov    %eax,(%esp)
c010246b:	e8 d5 fd ff ff       	call   c0102245 <printi>
c0102470:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102474:	eb 74                	jmp    c01024ea <vprintk+0xe6>
c0102476:	8b 45 08             	mov    0x8(%ebp),%eax
c0102479:	0f b6 00             	movzbl (%eax),%eax
c010247c:	3c 73                	cmp    $0x73,%al
c010247e:	75 1a                	jne    c010249a <vprintk+0x96>
c0102480:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c0102484:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102487:	83 e8 04             	sub    $0x4,%eax
c010248a:	8b 00                	mov    (%eax),%eax
c010248c:	89 04 24             	mov    %eax,(%esp)
c010248f:	e8 64 fd ff ff       	call   c01021f8 <prints>
c0102494:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102498:	eb 50                	jmp    c01024ea <vprintk+0xe6>
c010249a:	8b 45 08             	mov    0x8(%ebp),%eax
c010249d:	0f b6 00             	movzbl (%eax),%eax
c01024a0:	3c 78                	cmp    $0x78,%al
c01024a2:	75 1a                	jne    c01024be <vprintk+0xba>
c01024a4:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c01024a8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024ab:	83 e8 04             	sub    $0x4,%eax
c01024ae:	8b 00                	mov    (%eax),%eax
c01024b0:	89 04 24             	mov    %eax,(%esp)
c01024b3:	e8 4f fe ff ff       	call   c0102307 <printx>
c01024b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01024bc:	eb 2c                	jmp    c01024ea <vprintk+0xe6>
c01024be:	8b 45 08             	mov    0x8(%ebp),%eax
c01024c1:	0f b6 00             	movzbl (%eax),%eax
c01024c4:	0f be c0             	movsbl %al,%eax
c01024c7:	89 04 24             	mov    %eax,(%esp)
c01024ca:	e8 4c fd ff ff       	call   c010221b <printchar>
c01024cf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01024d3:	eb 15                	jmp    c01024ea <vprintk+0xe6>
c01024d5:	8b 45 08             	mov    0x8(%ebp),%eax
c01024d8:	0f b6 00             	movzbl (%eax),%eax
c01024db:	0f be c0             	movsbl %al,%eax
c01024de:	89 04 24             	mov    %eax,(%esp)
c01024e1:	e8 35 fd ff ff       	call   c010221b <printchar>
c01024e6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01024ea:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c01024ee:	8b 45 08             	mov    0x8(%ebp),%eax
c01024f1:	0f b6 00             	movzbl (%eax),%eax
c01024f4:	84 c0                	test   %al,%al
c01024f6:	0f 85 1a ff ff ff    	jne    c0102416 <vprintk+0x12>
c01024fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01024ff:	c9                   	leave  
c0102500:	c3                   	ret    
c0102501:	66 90                	xchg   %ax,%ax
c0102503:	90                   	nop

c0102504 <scrooll>:
c0102504:	55                   	push   %ebp
c0102505:	89 e5                	mov    %esp,%ebp
c0102507:	83 ec 10             	sub    $0x10,%esp
c010250a:	c6 45 fb 0f          	movb   $0xf,-0x5(%ebp)
c010250e:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c0102512:	c1 e0 08             	shl    $0x8,%eax
c0102515:	83 c8 20             	or     $0x20,%eax
c0102518:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
c010251c:	0f b7 05 00 50 10 c0 	movzwl 0xc0105000,%eax
c0102523:	66 83 f8 18          	cmp    $0x18,%ax
c0102527:	7e 69                	jle    c0102592 <scrooll+0x8e>
c0102529:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102530:	eb 25                	jmp    c0102557 <scrooll+0x53>
c0102532:	a1 24 46 10 c0       	mov    0xc0104624,%eax
c0102537:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010253a:	01 d2                	add    %edx,%edx
c010253c:	01 c2                	add    %eax,%edx
c010253e:	a1 24 46 10 c0       	mov    0xc0104624,%eax
c0102543:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0102546:	83 c1 50             	add    $0x50,%ecx
c0102549:	01 c9                	add    %ecx,%ecx
c010254b:	01 c8                	add    %ecx,%eax
c010254d:	0f b7 00             	movzwl (%eax),%eax
c0102550:	66 89 02             	mov    %ax,(%edx)
c0102553:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102557:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%ebp)
c010255e:	7e d2                	jle    c0102532 <scrooll+0x2e>
c0102560:	c7 45 fc 80 07 00 00 	movl   $0x780,-0x4(%ebp)
c0102567:	eb 17                	jmp    c0102580 <scrooll+0x7c>
c0102569:	a1 24 46 10 c0       	mov    0xc0104624,%eax
c010256e:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102571:	01 d2                	add    %edx,%edx
c0102573:	01 c2                	add    %eax,%edx
c0102575:	0f b7 45 f8          	movzwl -0x8(%ebp),%eax
c0102579:	66 89 02             	mov    %ax,(%edx)
c010257c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102580:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
c0102587:	7e e0                	jle    c0102569 <scrooll+0x65>
c0102589:	66 c7 05 00 50 10 c0 	movw   $0x18,0xc0105000
c0102590:	18 00 
c0102592:	c9                   	leave  
c0102593:	c3                   	ret    

c0102594 <move_point>:
c0102594:	55                   	push   %ebp
c0102595:	89 e5                	mov    %esp,%ebp
c0102597:	83 ec 28             	sub    $0x28,%esp
c010259a:	0f b7 05 00 50 10 c0 	movzwl 0xc0105000,%eax
c01025a1:	89 c2                	mov    %eax,%edx
c01025a3:	89 d0                	mov    %edx,%eax
c01025a5:	c1 e0 02             	shl    $0x2,%eax
c01025a8:	01 d0                	add    %edx,%eax
c01025aa:	c1 e0 04             	shl    $0x4,%eax
c01025ad:	89 c2                	mov    %eax,%edx
c01025af:	0f b7 05 02 50 10 c0 	movzwl 0xc0105002,%eax
c01025b6:	01 d0                	add    %edx,%eax
c01025b8:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c01025bc:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
c01025c3:	00 
c01025c4:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
c01025cb:	e8 d0 01 00 00       	call   c01027a0 <outb>
c01025d0:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c01025d4:	66 c1 e8 08          	shr    $0x8,%ax
c01025d8:	0f b6 c0             	movzbl %al,%eax
c01025db:	89 44 24 04          	mov    %eax,0x4(%esp)
c01025df:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
c01025e6:	e8 b5 01 00 00       	call   c01027a0 <outb>
c01025eb:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
c01025f2:	00 
c01025f3:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
c01025fa:	e8 a1 01 00 00       	call   c01027a0 <outb>
c01025ff:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0102603:	0f b6 c0             	movzbl %al,%eax
c0102606:	89 44 24 04          	mov    %eax,0x4(%esp)
c010260a:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
c0102611:	e8 8a 01 00 00       	call   c01027a0 <outb>
c0102616:	c9                   	leave  
c0102617:	c3                   	ret    

c0102618 <screen_clear>:
c0102618:	55                   	push   %ebp
c0102619:	89 e5                	mov    %esp,%ebp
c010261b:	83 ec 18             	sub    $0x18,%esp
c010261e:	66 c7 45 f2 20 07    	movw   $0x720,-0xe(%ebp)
c0102624:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010262b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102632:	eb 17                	jmp    c010264b <screen_clear+0x33>
c0102634:	a1 24 46 10 c0       	mov    0xc0104624,%eax
c0102639:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010263c:	01 d2                	add    %edx,%edx
c010263e:	01 c2                	add    %eax,%edx
c0102640:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
c0102644:	66 89 02             	mov    %ax,(%edx)
c0102647:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010264b:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
c0102652:	7e e0                	jle    c0102634 <screen_clear+0x1c>
c0102654:	66 c7 05 00 50 10 c0 	movw   $0x0,0xc0105000
c010265b:	00 00 
c010265d:	66 c7 05 02 50 10 c0 	movw   $0x0,0xc0105002
c0102664:	00 00 
c0102666:	e8 29 ff ff ff       	call   c0102594 <move_point>
c010266b:	c9                   	leave  
c010266c:	c3                   	ret    

c010266d <screen_char>:
c010266d:	55                   	push   %ebp
c010266e:	89 e5                	mov    %esp,%ebp
c0102670:	83 ec 28             	sub    $0x28,%esp
c0102673:	8b 45 08             	mov    0x8(%ebp),%eax
c0102676:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0102679:	8b 45 0c             	mov    0xc(%ebp),%eax
c010267c:	89 c2                	mov    %eax,%edx
c010267e:	8b 45 10             	mov    0x10(%ebp),%eax
c0102681:	09 d0                	or     %edx,%eax
c0102683:	89 c2                	mov    %eax,%edx
c0102685:	c1 e2 08             	shl    $0x8,%edx
c0102688:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
c010268d:	09 d0                	or     %edx,%eax
c010268f:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c0102693:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
c0102697:	75 1b                	jne    c01026b4 <screen_char+0x47>
c0102699:	0f b7 05 00 50 10 c0 	movzwl 0xc0105000,%eax
c01026a0:	83 c0 01             	add    $0x1,%eax
c01026a3:	66 a3 00 50 10 c0    	mov    %ax,0xc0105000
c01026a9:	66 c7 05 02 50 10 c0 	movw   $0x0,0xc0105002
c01026b0:	00 00 
c01026b2:	eb 72                	jmp    c0102726 <screen_char+0xb9>
c01026b4:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
c01026b8:	75 12                	jne    c01026cc <screen_char+0x5f>
c01026ba:	0f b7 05 02 50 10 c0 	movzwl 0xc0105002,%eax
c01026c1:	83 c0 08             	add    $0x8,%eax
c01026c4:	66 a3 02 50 10 c0    	mov    %ax,0xc0105002
c01026ca:	eb 5a                	jmp    c0102726 <screen_char+0xb9>
c01026cc:	80 7d e4 20          	cmpb   $0x20,-0x1c(%ebp)
c01026d0:	75 12                	jne    c01026e4 <screen_char+0x77>
c01026d2:	0f b7 05 02 50 10 c0 	movzwl 0xc0105002,%eax
c01026d9:	83 c0 01             	add    $0x1,%eax
c01026dc:	66 a3 02 50 10 c0    	mov    %ax,0xc0105002
c01026e2:	eb 42                	jmp    c0102726 <screen_char+0xb9>
c01026e4:	8b 0d 24 46 10 c0    	mov    0xc0104624,%ecx
c01026ea:	0f b7 05 00 50 10 c0 	movzwl 0xc0105000,%eax
c01026f1:	0f bf d0             	movswl %ax,%edx
c01026f4:	89 d0                	mov    %edx,%eax
c01026f6:	c1 e0 02             	shl    $0x2,%eax
c01026f9:	01 d0                	add    %edx,%eax
c01026fb:	c1 e0 04             	shl    $0x4,%eax
c01026fe:	89 c2                	mov    %eax,%edx
c0102700:	0f b7 05 02 50 10 c0 	movzwl 0xc0105002,%eax
c0102707:	98                   	cwtl   
c0102708:	01 d0                	add    %edx,%eax
c010270a:	01 c0                	add    %eax,%eax
c010270c:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c010270f:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0102713:	66 89 02             	mov    %ax,(%edx)
c0102716:	0f b7 05 02 50 10 c0 	movzwl 0xc0105002,%eax
c010271d:	83 c0 01             	add    $0x1,%eax
c0102720:	66 a3 02 50 10 c0    	mov    %ax,0xc0105002
c0102726:	0f b7 05 02 50 10 c0 	movzwl 0xc0105002,%eax
c010272d:	66 83 f8 50          	cmp    $0x50,%ax
c0102731:	7e 19                	jle    c010274c <screen_char+0xdf>
c0102733:	0f b7 05 00 50 10 c0 	movzwl 0xc0105000,%eax
c010273a:	83 c0 01             	add    $0x1,%eax
c010273d:	66 a3 00 50 10 c0    	mov    %ax,0xc0105000
c0102743:	66 c7 05 02 50 10 c0 	movw   $0x0,0xc0105002
c010274a:	00 00 
c010274c:	e8 b3 fd ff ff       	call   c0102504 <scrooll>
c0102751:	e8 3e fe ff ff       	call   c0102594 <move_point>
c0102756:	c9                   	leave  
c0102757:	c3                   	ret    

c0102758 <screen_string>:
c0102758:	55                   	push   %ebp
c0102759:	89 e5                	mov    %esp,%ebp
c010275b:	83 ec 28             	sub    $0x28,%esp
c010275e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102765:	eb 28                	jmp    c010278f <screen_string+0x37>
c0102767:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010276a:	8b 45 08             	mov    0x8(%ebp),%eax
c010276d:	01 d0                	add    %edx,%eax
c010276f:	0f b6 00             	movzbl (%eax),%eax
c0102772:	0f be c0             	movsbl %al,%eax
c0102775:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102779:	8b 55 10             	mov    0x10(%ebp),%edx
c010277c:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102780:	8b 55 0c             	mov    0xc(%ebp),%edx
c0102783:	89 54 24 04          	mov    %edx,0x4(%esp)
c0102787:	89 04 24             	mov    %eax,(%esp)
c010278a:	e8 de fe ff ff       	call   c010266d <screen_char>
c010278f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102792:	8b 45 08             	mov    0x8(%ebp),%eax
c0102795:	01 d0                	add    %edx,%eax
c0102797:	0f b6 00             	movzbl (%eax),%eax
c010279a:	84 c0                	test   %al,%al
c010279c:	75 c9                	jne    c0102767 <screen_string+0xf>
c010279e:	c9                   	leave  
c010279f:	c3                   	ret    

c01027a0 <outb>:
c01027a0:	55                   	push   %ebp
c01027a1:	89 e5                	mov    %esp,%ebp
c01027a3:	83 ec 08             	sub    $0x8,%esp
c01027a6:	8b 55 08             	mov    0x8(%ebp),%edx
c01027a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01027ac:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
c01027b0:	88 45 f8             	mov    %al,-0x8(%ebp)
c01027b3:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c01027b7:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c01027bb:	ee                   	out    %al,(%dx)
c01027bc:	c9                   	leave  
c01027bd:	c3                   	ret    

c01027be <inb>:
c01027be:	55                   	push   %ebp
c01027bf:	89 e5                	mov    %esp,%ebp
c01027c1:	53                   	push   %ebx
c01027c2:	83 ec 14             	sub    $0x14,%esp
c01027c5:	8b 45 08             	mov    0x8(%ebp),%eax
c01027c8:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
c01027cc:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
c01027d0:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
c01027d4:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
c01027d8:	ec                   	in     (%dx),%al
c01027d9:	89 c3                	mov    %eax,%ebx
c01027db:	88 5d fb             	mov    %bl,-0x5(%ebp)
c01027de:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c01027e2:	83 c4 14             	add    $0x14,%esp
c01027e5:	5b                   	pop    %ebx
c01027e6:	5d                   	pop    %ebp
c01027e7:	c3                   	ret    

c01027e8 <inw>:
c01027e8:	55                   	push   %ebp
c01027e9:	89 e5                	mov    %esp,%ebp
c01027eb:	53                   	push   %ebx
c01027ec:	83 ec 14             	sub    $0x14,%esp
c01027ef:	8b 45 08             	mov    0x8(%ebp),%eax
c01027f2:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
c01027f6:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
c01027fa:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
c01027fe:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
c0102802:	66 ed                	in     (%dx),%ax
c0102804:	89 c3                	mov    %eax,%ebx
c0102806:	66 89 5d fa          	mov    %bx,-0x6(%ebp)
c010280a:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
c010280e:	83 c4 14             	add    $0x14,%esp
c0102811:	5b                   	pop    %ebx
c0102812:	5d                   	pop    %ebp
c0102813:	c3                   	ret    

c0102814 <memcpy>:
c0102814:	55                   	push   %ebp
c0102815:	89 e5                	mov    %esp,%ebp
c0102817:	83 ec 10             	sub    $0x10,%esp
c010281a:	8b 45 08             	mov    0x8(%ebp),%eax
c010281d:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0102820:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102823:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102826:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010282d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0102831:	74 06                	je     c0102839 <memcpy+0x25>
c0102833:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102837:	75 1e                	jne    c0102857 <memcpy+0x43>
c0102839:	8b 45 08             	mov    0x8(%ebp),%eax
c010283c:	eb 25                	jmp    c0102863 <memcpy+0x4f>
c010283e:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102841:	0f b6 10             	movzbl (%eax),%edx
c0102844:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102847:	88 10                	mov    %dl,(%eax)
c0102849:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010284d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102851:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102855:	eb 01                	jmp    c0102858 <memcpy+0x44>
c0102857:	90                   	nop
c0102858:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010285b:	3b 45 10             	cmp    0x10(%ebp),%eax
c010285e:	72 de                	jb     c010283e <memcpy+0x2a>
c0102860:	8b 45 08             	mov    0x8(%ebp),%eax
c0102863:	c9                   	leave  
c0102864:	c3                   	ret    

c0102865 <memset>:
c0102865:	55                   	push   %ebp
c0102866:	89 e5                	mov    %esp,%ebp
c0102868:	83 ec 14             	sub    $0x14,%esp
c010286b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010286e:	88 45 ec             	mov    %al,-0x14(%ebp)
c0102871:	8b 45 08             	mov    0x8(%ebp),%eax
c0102874:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102877:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010287e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0102885:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102889:	75 08                	jne    c0102893 <memset+0x2e>
c010288b:	eb 62                	jmp    c01028ef <memset+0x8a>
c010288d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102891:	eb 01                	jmp    c0102894 <memset+0x2f>
c0102893:	90                   	nop
c0102894:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102897:	0f b6 00             	movzbl (%eax),%eax
c010289a:	84 c0                	test   %al,%al
c010289c:	75 ef                	jne    c010288d <memset+0x28>
c010289e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01028a1:	3b 45 10             	cmp    0x10(%ebp),%eax
c01028a4:	77 1d                	ja     c01028c3 <memset+0x5e>
c01028a6:	eb 11                	jmp    c01028b9 <memset+0x54>
c01028a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028ab:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c01028af:	88 10                	mov    %dl,(%eax)
c01028b1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028b5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01028b9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01028bc:	3b 45 10             	cmp    0x10(%ebp),%eax
c01028bf:	72 e7                	jb     c01028a8 <memset+0x43>
c01028c1:	eb 22                	jmp    c01028e5 <memset+0x80>
c01028c3:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c01028ca:	eb 11                	jmp    c01028dd <memset+0x78>
c01028cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028cf:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c01028d3:	88 10                	mov    %dl,(%eax)
c01028d5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028d9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01028dd:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01028e0:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c01028e3:	7c e7                	jl     c01028cc <memset+0x67>
c01028e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028e8:	c6 00 00             	movb   $0x0,(%eax)
c01028eb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028ef:	c9                   	leave  
c01028f0:	c3                   	ret    

c01028f1 <bzer>:
c01028f1:	55                   	push   %ebp
c01028f2:	89 e5                	mov    %esp,%ebp
c01028f4:	83 ec 10             	sub    $0x10,%esp
c01028f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01028fa:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01028fd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102904:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c010290b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c010290f:	75 08                	jne    c0102919 <bzer+0x28>
c0102911:	eb 52                	jmp    c0102965 <bzer+0x74>
c0102913:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102917:	eb 01                	jmp    c010291a <bzer+0x29>
c0102919:	90                   	nop
c010291a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010291d:	0f b6 00             	movzbl (%eax),%eax
c0102920:	84 c0                	test   %al,%al
c0102922:	75 ef                	jne    c0102913 <bzer+0x22>
c0102924:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102927:	3b 45 0c             	cmp    0xc(%ebp),%eax
c010292a:	72 1a                	jb     c0102946 <bzer+0x55>
c010292c:	eb 0e                	jmp    c010293c <bzer+0x4b>
c010292e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102931:	c6 00 00             	movb   $0x0,(%eax)
c0102934:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102938:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c010293c:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010293f:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0102942:	72 ea                	jb     c010292e <bzer+0x3d>
c0102944:	eb 1f                	jmp    c0102965 <bzer+0x74>
c0102946:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c010294d:	eb 0e                	jmp    c010295d <bzer+0x6c>
c010294f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102952:	c6 00 00             	movb   $0x0,(%eax)
c0102955:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102959:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c010295d:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102960:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c0102963:	7c ea                	jl     c010294f <bzer+0x5e>
c0102965:	c9                   	leave  
c0102966:	c3                   	ret    

c0102967 <strcmp>:
c0102967:	55                   	push   %ebp
c0102968:	89 e5                	mov    %esp,%ebp
c010296a:	83 ec 10             	sub    $0x10,%esp
c010296d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102970:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0102973:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102976:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102979:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010297c:	0f b6 00             	movzbl (%eax),%eax
c010297f:	88 45 f7             	mov    %al,-0x9(%ebp)
c0102982:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102986:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102989:	0f b6 00             	movzbl (%eax),%eax
c010298c:	88 45 f6             	mov    %al,-0xa(%ebp)
c010298f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102993:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
c0102997:	75 10                	jne    c01029a9 <strcmp+0x42>
c0102999:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
c010299d:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
c01029a1:	89 d1                	mov    %edx,%ecx
c01029a3:	29 c1                	sub    %eax,%ecx
c01029a5:	89 c8                	mov    %ecx,%eax
c01029a7:	eb 17                	jmp    c01029c0 <strcmp+0x59>
c01029a9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01029ad:	3a 45 f6             	cmp    -0xa(%ebp),%al
c01029b0:	74 c7                	je     c0102979 <strcmp+0x12>
c01029b2:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
c01029b6:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
c01029ba:	89 d1                	mov    %edx,%ecx
c01029bc:	29 c1                	sub    %eax,%ecx
c01029be:	89 c8                	mov    %ecx,%eax
c01029c0:	c9                   	leave  
c01029c1:	c3                   	ret    

c01029c2 <strcpy>:
c01029c2:	55                   	push   %ebp
c01029c3:	89 e5                	mov    %esp,%ebp
c01029c5:	83 ec 10             	sub    $0x10,%esp
c01029c8:	8b 45 08             	mov    0x8(%ebp),%eax
c01029cb:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01029ce:	8b 45 0c             	mov    0xc(%ebp),%eax
c01029d1:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01029d4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c01029d8:	74 06                	je     c01029e0 <strcpy+0x1e>
c01029da:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c01029de:	75 05                	jne    c01029e5 <strcpy+0x23>
c01029e0:	8b 45 08             	mov    0x8(%ebp),%eax
c01029e3:	eb 25                	jmp    c0102a0a <strcpy+0x48>
c01029e5:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01029e8:	0f b6 10             	movzbl (%eax),%edx
c01029eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01029ee:	88 10                	mov    %dl,(%eax)
c01029f0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01029f4:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01029f7:	0f b6 00             	movzbl (%eax),%eax
c01029fa:	84 c0                	test   %al,%al
c01029fc:	0f 95 c0             	setne  %al
c01029ff:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102a03:	84 c0                	test   %al,%al
c0102a05:	75 de                	jne    c01029e5 <strcpy+0x23>
c0102a07:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a0a:	c9                   	leave  
c0102a0b:	c3                   	ret    

c0102a0c <strcat>:
c0102a0c:	55                   	push   %ebp
c0102a0d:	89 e5                	mov    %esp,%ebp
c0102a0f:	83 ec 10             	sub    $0x10,%esp
c0102a12:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a15:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0102a18:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a1b:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102a1e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102a22:	74 06                	je     c0102a2a <strcat+0x1e>
c0102a24:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0102a28:	75 07                	jne    c0102a31 <strcat+0x25>
c0102a2a:	b8 00 00 00 00       	mov    $0x0,%eax
c0102a2f:	eb 3b                	jmp    c0102a6c <strcat+0x60>
c0102a31:	90                   	nop
c0102a32:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102a35:	0f b6 00             	movzbl (%eax),%eax
c0102a38:	84 c0                	test   %al,%al
c0102a3a:	0f 95 c0             	setne  %al
c0102a3d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102a41:	84 c0                	test   %al,%al
c0102a43:	75 ed                	jne    c0102a32 <strcat+0x26>
c0102a45:	eb 0f                	jmp    c0102a56 <strcat+0x4a>
c0102a47:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a4a:	0f b6 10             	movzbl (%eax),%edx
c0102a4d:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102a50:	88 10                	mov    %dl,(%eax)
c0102a52:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102a56:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a59:	0f b6 00             	movzbl (%eax),%eax
c0102a5c:	84 c0                	test   %al,%al
c0102a5e:	0f 95 c0             	setne  %al
c0102a61:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102a65:	84 c0                	test   %al,%al
c0102a67:	75 de                	jne    c0102a47 <strcat+0x3b>
c0102a69:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a6c:	c9                   	leave  
c0102a6d:	c3                   	ret    

c0102a6e <strlen>:
c0102a6e:	55                   	push   %ebp
c0102a6f:	89 e5                	mov    %esp,%ebp
c0102a71:	83 ec 10             	sub    $0x10,%esp
c0102a74:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102a7b:	eb 04                	jmp    c0102a81 <strlen+0x13>
c0102a7d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102a81:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a84:	0f b6 00             	movzbl (%eax),%eax
c0102a87:	84 c0                	test   %al,%al
c0102a89:	0f 95 c0             	setne  %al
c0102a8c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0102a90:	84 c0                	test   %al,%al
c0102a92:	75 e9                	jne    c0102a7d <strlen+0xf>
c0102a94:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a97:	c9                   	leave  
c0102a98:	c3                   	ret    
c0102a99:	66 90                	xchg   %ax,%ax
c0102a9b:	90                   	nop

c0102a9c <init_debug>:
c0102a9c:	55                   	push   %ebp
c0102a9d:	89 e5                	mov    %esp,%ebp
c0102a9f:	83 ec 28             	sub    $0x28,%esp
c0102aa2:	8b 15 20 90 20 c0    	mov    0xc0209020,%edx
c0102aa8:	8d 45 e8             	lea    -0x18(%ebp),%eax
c0102aab:	89 54 24 04          	mov    %edx,0x4(%esp)
c0102aaf:	89 04 24             	mov    %eax,(%esp)
c0102ab2:	e8 69 01 00 00       	call   c0102c20 <elf_form_multiboot>
c0102ab7:	83 ec 04             	sub    $0x4,%esp
c0102aba:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102abd:	a3 04 50 10 c0       	mov    %eax,0xc0105004
c0102ac2:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102ac5:	a3 08 50 10 c0       	mov    %eax,0xc0105008
c0102aca:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102acd:	a3 0c 50 10 c0       	mov    %eax,0xc010500c
c0102ad2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ad5:	a3 10 50 10 c0       	mov    %eax,0xc0105010
c0102ada:	c9                   	leave  
c0102adb:	c3                   	ret    

c0102adc <print_cur_status>:
c0102adc:	55                   	push   %ebp
c0102add:	89 e5                	mov    %esp,%ebp
c0102adf:	83 ec 28             	sub    $0x28,%esp
c0102ae2:	8c 4d f6             	mov    %cs,-0xa(%ebp)
c0102ae5:	8c 5d f4             	mov    %ds,-0xc(%ebp)
c0102ae8:	8c 45 f2             	mov    %es,-0xe(%ebp)
c0102aeb:	8c 55 f0             	mov    %ss,-0x10(%ebp)
c0102aee:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0102af2:	0f b7 c0             	movzwl %ax,%eax
c0102af5:	89 c2                	mov    %eax,%edx
c0102af7:	83 e2 03             	and    $0x3,%edx
c0102afa:	a1 14 50 10 c0       	mov    0xc0105014,%eax
c0102aff:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b03:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b07:	c7 04 24 28 46 10 c0 	movl   $0xc0104628,(%esp)
c0102b0e:	e8 c4 f8 ff ff       	call   c01023d7 <printk>
c0102b13:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0102b17:	0f b7 d0             	movzwl %ax,%edx
c0102b1a:	a1 14 50 10 c0       	mov    0xc0105014,%eax
c0102b1f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b23:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b27:	c7 04 24 35 46 10 c0 	movl   $0xc0104635,(%esp)
c0102b2e:	e8 a4 f8 ff ff       	call   c01023d7 <printk>
c0102b33:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
c0102b37:	0f b7 d0             	movzwl %ax,%edx
c0102b3a:	a1 14 50 10 c0       	mov    0xc0105014,%eax
c0102b3f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b43:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b47:	c7 04 24 42 46 10 c0 	movl   $0xc0104642,(%esp)
c0102b4e:	e8 84 f8 ff ff       	call   c01023d7 <printk>
c0102b53:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
c0102b57:	0f b7 d0             	movzwl %ax,%edx
c0102b5a:	a1 14 50 10 c0       	mov    0xc0105014,%eax
c0102b5f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b67:	c7 04 24 4f 46 10 c0 	movl   $0xc010464f,(%esp)
c0102b6e:	e8 64 f8 ff ff       	call   c01023d7 <printk>
c0102b73:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
c0102b77:	0f b7 d0             	movzwl %ax,%edx
c0102b7a:	a1 14 50 10 c0       	mov    0xc0105014,%eax
c0102b7f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b83:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b87:	c7 04 24 5c 46 10 c0 	movl   $0xc010465c,(%esp)
c0102b8e:	e8 44 f8 ff ff       	call   c01023d7 <printk>
c0102b93:	c9                   	leave  
c0102b94:	c3                   	ret    

c0102b95 <panic>:
c0102b95:	55                   	push   %ebp
c0102b96:	89 e5                	mov    %esp,%ebp
c0102b98:	83 ec 18             	sub    $0x18,%esp
c0102b9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b9e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102ba2:	c7 04 24 69 46 10 c0 	movl   $0xc0104669,(%esp)
c0102ba9:	e8 29 f8 ff ff       	call   c01023d7 <printk>
c0102bae:	e8 13 00 00 00       	call   c0102bc6 <print_stack_trace>
c0102bb3:	c7 04 24 81 46 10 c0 	movl   $0xc0104681,(%esp)
c0102bba:	e8 18 f8 ff ff       	call   c01023d7 <printk>
c0102bbf:	e8 18 ff ff ff       	call   c0102adc <print_cur_status>
c0102bc4:	eb fe                	jmp    c0102bc4 <panic+0x2f>

c0102bc6 <print_stack_trace>:
c0102bc6:	55                   	push   %ebp
c0102bc7:	89 e5                	mov    %esp,%ebp
c0102bc9:	53                   	push   %ebx
c0102bca:	83 ec 24             	sub    $0x24,%esp
c0102bcd:	89 eb                	mov    %ebp,%ebx
c0102bcf:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c0102bd2:	eb 3f                	jmp    c0102c13 <print_stack_trace+0x4d>
c0102bd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102bd7:	83 c0 04             	add    $0x4,%eax
c0102bda:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102bdd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102be0:	8b 00                	mov    (%eax),%eax
c0102be2:	c7 44 24 04 04 50 10 	movl   $0xc0105004,0x4(%esp)
c0102be9:	c0 
c0102bea:	89 04 24             	mov    %eax,(%esp)
c0102bed:	e8 55 01 00 00       	call   c0102d47 <elf_look_symbol>
c0102bf2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102bf5:	8b 12                	mov    (%edx),%edx
c0102bf7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102bfb:	89 54 24 04          	mov    %edx,0x4(%esp)
c0102bff:	c7 04 24 87 46 10 c0 	movl   $0xc0104687,(%esp)
c0102c06:	e8 cc f7 ff ff       	call   c01023d7 <printk>
c0102c0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c0e:	8b 00                	mov    (%eax),%eax
c0102c10:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102c13:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102c17:	75 bb                	jne    c0102bd4 <print_stack_trace+0xe>
c0102c19:	83 c4 24             	add    $0x24,%esp
c0102c1c:	5b                   	pop    %ebx
c0102c1d:	5d                   	pop    %ebp
c0102c1e:	c3                   	ret    
c0102c1f:	90                   	nop

c0102c20 <elf_form_multiboot>:
c0102c20:	55                   	push   %ebp
c0102c21:	89 e5                	mov    %esp,%ebp
c0102c23:	83 ec 38             	sub    $0x38,%esp
c0102c26:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c29:	8b 40 24             	mov    0x24(%eax),%eax
c0102c2c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102c2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c32:	8b 50 28             	mov    0x28(%eax),%edx
c0102c35:	89 d0                	mov    %edx,%eax
c0102c37:	c1 e0 02             	shl    $0x2,%eax
c0102c3a:	01 d0                	add    %edx,%eax
c0102c3c:	c1 e0 03             	shl    $0x3,%eax
c0102c3f:	89 c2                	mov    %eax,%edx
c0102c41:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c44:	01 d0                	add    %edx,%eax
c0102c46:	8b 40 0c             	mov    0xc(%eax),%eax
c0102c49:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102c4c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102c53:	e9 bd 00 00 00       	jmp    c0102d15 <elf_form_multiboot+0xf5>
c0102c58:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102c5b:	89 d0                	mov    %edx,%eax
c0102c5d:	c1 e0 02             	shl    $0x2,%eax
c0102c60:	01 d0                	add    %edx,%eax
c0102c62:	c1 e0 03             	shl    $0x3,%eax
c0102c65:	89 c2                	mov    %eax,%edx
c0102c67:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c6a:	01 d0                	add    %edx,%eax
c0102c6c:	8b 10                	mov    (%eax),%edx
c0102c6e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c71:	01 d0                	add    %edx,%eax
c0102c73:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102c76:	c7 44 24 04 97 46 10 	movl   $0xc0104697,0x4(%esp)
c0102c7d:	c0 
c0102c7e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c81:	89 04 24             	mov    %eax,(%esp)
c0102c84:	e8 de fc ff ff       	call   c0102967 <strcmp>
c0102c89:	85 c0                	test   %eax,%eax
c0102c8b:	75 39                	jne    c0102cc6 <elf_form_multiboot+0xa6>
c0102c8d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102c90:	89 d0                	mov    %edx,%eax
c0102c92:	c1 e0 02             	shl    $0x2,%eax
c0102c95:	01 d0                	add    %edx,%eax
c0102c97:	c1 e0 03             	shl    $0x3,%eax
c0102c9a:	89 c2                	mov    %eax,%edx
c0102c9c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c9f:	01 d0                	add    %edx,%eax
c0102ca1:	8b 40 0c             	mov    0xc(%eax),%eax
c0102ca4:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102ca9:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102cac:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102caf:	89 d0                	mov    %edx,%eax
c0102cb1:	c1 e0 02             	shl    $0x2,%eax
c0102cb4:	01 d0                	add    %edx,%eax
c0102cb6:	c1 e0 03             	shl    $0x3,%eax
c0102cb9:	89 c2                	mov    %eax,%edx
c0102cbb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102cbe:	01 d0                	add    %edx,%eax
c0102cc0:	8b 40 14             	mov    0x14(%eax),%eax
c0102cc3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102cc6:	c7 44 24 04 9f 46 10 	movl   $0xc010469f,0x4(%esp)
c0102ccd:	c0 
c0102cce:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102cd1:	89 04 24             	mov    %eax,(%esp)
c0102cd4:	e8 8e fc ff ff       	call   c0102967 <strcmp>
c0102cd9:	85 c0                	test   %eax,%eax
c0102cdb:	75 34                	jne    c0102d11 <elf_form_multiboot+0xf1>
c0102cdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102ce0:	89 d0                	mov    %edx,%eax
c0102ce2:	c1 e0 02             	shl    $0x2,%eax
c0102ce5:	01 d0                	add    %edx,%eax
c0102ce7:	c1 e0 03             	shl    $0x3,%eax
c0102cea:	89 c2                	mov    %eax,%edx
c0102cec:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102cef:	01 d0                	add    %edx,%eax
c0102cf1:	8b 40 0c             	mov    0xc(%eax),%eax
c0102cf4:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0102cf7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102cfa:	89 d0                	mov    %edx,%eax
c0102cfc:	c1 e0 02             	shl    $0x2,%eax
c0102cff:	01 d0                	add    %edx,%eax
c0102d01:	c1 e0 03             	shl    $0x3,%eax
c0102d04:	89 c2                	mov    %eax,%edx
c0102d06:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d09:	01 d0                	add    %edx,%eax
c0102d0b:	8b 40 14             	mov    0x14(%eax),%eax
c0102d0e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102d11:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102d15:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102d18:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d1b:	8b 40 1c             	mov    0x1c(%eax),%eax
c0102d1e:	39 c2                	cmp    %eax,%edx
c0102d20:	0f 82 32 ff ff ff    	jb     c0102c58 <elf_form_multiboot+0x38>
c0102d26:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d29:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0102d2c:	89 10                	mov    %edx,(%eax)
c0102d2e:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0102d31:	89 50 04             	mov    %edx,0x4(%eax)
c0102d34:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0102d37:	89 50 08             	mov    %edx,0x8(%eax)
c0102d3a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0102d3d:	89 50 0c             	mov    %edx,0xc(%eax)
c0102d40:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d43:	c9                   	leave  
c0102d44:	c2 04 00             	ret    $0x4

c0102d47 <elf_look_symbol>:
c0102d47:	55                   	push   %ebp
c0102d48:	89 e5                	mov    %esp,%ebp
c0102d4a:	83 ec 10             	sub    $0x10,%esp
c0102d4d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102d54:	eb 78                	jmp    c0102dce <elf_look_symbol+0x87>
c0102d56:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d59:	8b 00                	mov    (%eax),%eax
c0102d5b:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102d5e:	c1 e2 04             	shl    $0x4,%edx
c0102d61:	01 d0                	add    %edx,%eax
c0102d63:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
c0102d67:	0f b6 c0             	movzbl %al,%eax
c0102d6a:	83 e0 0f             	and    $0xf,%eax
c0102d6d:	83 f8 02             	cmp    $0x2,%eax
c0102d70:	75 57                	jne    c0102dc9 <elf_look_symbol+0x82>
c0102d72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d75:	8b 00                	mov    (%eax),%eax
c0102d77:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102d7a:	c1 e2 04             	shl    $0x4,%edx
c0102d7d:	01 d0                	add    %edx,%eax
c0102d7f:	8b 40 04             	mov    0x4(%eax),%eax
c0102d82:	3b 45 08             	cmp    0x8(%ebp),%eax
c0102d85:	77 43                	ja     c0102dca <elf_look_symbol+0x83>
c0102d87:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d8a:	8b 00                	mov    (%eax),%eax
c0102d8c:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102d8f:	c1 e2 04             	shl    $0x4,%edx
c0102d92:	01 d0                	add    %edx,%eax
c0102d94:	8b 50 04             	mov    0x4(%eax),%edx
c0102d97:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d9a:	8b 00                	mov    (%eax),%eax
c0102d9c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0102d9f:	c1 e1 04             	shl    $0x4,%ecx
c0102da2:	01 c8                	add    %ecx,%eax
c0102da4:	8b 40 08             	mov    0x8(%eax),%eax
c0102da7:	01 d0                	add    %edx,%eax
c0102da9:	3b 45 08             	cmp    0x8(%ebp),%eax
c0102dac:	76 1c                	jbe    c0102dca <elf_look_symbol+0x83>
c0102dae:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102db1:	8b 40 08             	mov    0x8(%eax),%eax
c0102db4:	89 c2                	mov    %eax,%edx
c0102db6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102db9:	8b 00                	mov    (%eax),%eax
c0102dbb:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0102dbe:	c1 e1 04             	shl    $0x4,%ecx
c0102dc1:	01 c8                	add    %ecx,%eax
c0102dc3:	8b 00                	mov    (%eax),%eax
c0102dc5:	01 d0                	add    %edx,%eax
c0102dc7:	eb 1e                	jmp    c0102de7 <elf_look_symbol+0xa0>
c0102dc9:	90                   	nop
c0102dca:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102dce:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102dd1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102dd4:	8b 40 04             	mov    0x4(%eax),%eax
c0102dd7:	c1 e8 04             	shr    $0x4,%eax
c0102dda:	39 c2                	cmp    %eax,%edx
c0102ddc:	0f 82 74 ff ff ff    	jb     c0102d56 <elf_look_symbol+0xf>
c0102de2:	b8 00 00 00 00       	mov    $0x0,%eax
c0102de7:	c9                   	leave  
c0102de8:	c3                   	ret    
c0102de9:	66 90                	xchg   %ax,%ax
c0102deb:	90                   	nop

c0102dec <init_gdt>:
c0102dec:	55                   	push   %ebp
c0102ded:	89 e5                	mov    %esp,%ebp
c0102def:	83 ec 28             	sub    $0x28,%esp
c0102df2:	66 c7 05 28 70 20 c0 	movw   $0x27,0xc0207028
c0102df9:	27 00 
c0102dfb:	b8 00 70 20 c0       	mov    $0xc0207000,%eax
c0102e00:	a3 2a 70 20 c0       	mov    %eax,0xc020702a
c0102e05:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
c0102e0c:	00 
c0102e0d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0102e14:	00 
c0102e15:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0102e1c:	00 
c0102e1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102e24:	00 
c0102e25:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0102e2c:	e8 bf 00 00 00       	call   c0102ef0 <gdt_set_gate>
c0102e31:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102e38:	00 
c0102e39:	c7 44 24 0c 9a 00 00 	movl   $0x9a,0xc(%esp)
c0102e40:	00 
c0102e41:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102e48:	ff 
c0102e49:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102e50:	00 
c0102e51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0102e58:	e8 93 00 00 00       	call   c0102ef0 <gdt_set_gate>
c0102e5d:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102e64:	00 
c0102e65:	c7 44 24 0c 92 00 00 	movl   $0x92,0xc(%esp)
c0102e6c:	00 
c0102e6d:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102e74:	ff 
c0102e75:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102e7c:	00 
c0102e7d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0102e84:	e8 67 00 00 00       	call   c0102ef0 <gdt_set_gate>
c0102e89:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102e90:	00 
c0102e91:	c7 44 24 0c fa 00 00 	movl   $0xfa,0xc(%esp)
c0102e98:	00 
c0102e99:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102ea0:	ff 
c0102ea1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102ea8:	00 
c0102ea9:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
c0102eb0:	e8 3b 00 00 00       	call   c0102ef0 <gdt_set_gate>
c0102eb5:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102ebc:	00 
c0102ebd:	c7 44 24 0c f2 00 00 	movl   $0xf2,0xc(%esp)
c0102ec4:	00 
c0102ec5:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102ecc:	ff 
c0102ecd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102ed4:	00 
c0102ed5:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
c0102edc:	e8 0f 00 00 00       	call   c0102ef0 <gdt_set_gate>
c0102ee1:	b8 28 70 20 c0       	mov    $0xc0207028,%eax
c0102ee6:	89 04 24             	mov    %eax,(%esp)
c0102ee9:	e8 12 f1 ff ff       	call   c0102000 <gdt_flush>
c0102eee:	c9                   	leave  
c0102eef:	c3                   	ret    

c0102ef0 <gdt_set_gate>:
c0102ef0:	55                   	push   %ebp
c0102ef1:	89 e5                	mov    %esp,%ebp
c0102ef3:	83 ec 08             	sub    $0x8,%esp
c0102ef6:	8b 55 14             	mov    0x14(%ebp),%edx
c0102ef9:	8b 45 18             	mov    0x18(%ebp),%eax
c0102efc:	88 55 fc             	mov    %dl,-0x4(%ebp)
c0102eff:	88 45 f8             	mov    %al,-0x8(%ebp)
c0102f02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f05:	89 c2                	mov    %eax,%edx
c0102f07:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f0a:	66 89 14 c5 02 70 20 	mov    %dx,-0x3fdf8ffe(,%eax,8)
c0102f11:	c0 
c0102f12:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f15:	c1 e8 10             	shr    $0x10,%eax
c0102f18:	89 c2                	mov    %eax,%edx
c0102f1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f1d:	88 14 c5 04 70 20 c0 	mov    %dl,-0x3fdf8ffc(,%eax,8)
c0102f24:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f27:	c1 e8 18             	shr    $0x18,%eax
c0102f2a:	89 c2                	mov    %eax,%edx
c0102f2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f2f:	88 14 c5 07 70 20 c0 	mov    %dl,-0x3fdf8ff9(,%eax,8)
c0102f36:	8b 45 10             	mov    0x10(%ebp),%eax
c0102f39:	89 c2                	mov    %eax,%edx
c0102f3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f3e:	66 89 14 c5 00 70 20 	mov    %dx,-0x3fdf9000(,%eax,8)
c0102f45:	c0 
c0102f46:	8b 45 10             	mov    0x10(%ebp),%eax
c0102f49:	c1 e8 10             	shr    $0x10,%eax
c0102f4c:	89 c2                	mov    %eax,%edx
c0102f4e:	83 e2 0f             	and    $0xf,%edx
c0102f51:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f54:	88 14 c5 06 70 20 c0 	mov    %dl,-0x3fdf8ffa(,%eax,8)
c0102f5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f5e:	0f b6 04 c5 06 70 20 	movzbl -0x3fdf8ffa(,%eax,8),%eax
c0102f65:	c0 
c0102f66:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
c0102f6a:	83 e2 f0             	and    $0xfffffff0,%edx
c0102f6d:	09 d0                	or     %edx,%eax
c0102f6f:	89 c2                	mov    %eax,%edx
c0102f71:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f74:	88 14 c5 06 70 20 c0 	mov    %dl,-0x3fdf8ffa(,%eax,8)
c0102f7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f7e:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c0102f82:	88 14 c5 05 70 20 c0 	mov    %dl,-0x3fdf8ffb(,%eax,8)
c0102f89:	c9                   	leave  
c0102f8a:	c3                   	ret    
c0102f8b:	90                   	nop

c0102f8c <init_vmm>:
c0102f8c:	55                   	push   %ebp
c0102f8d:	89 e5                	mov    %esp,%ebp
c0102f8f:	83 ec 38             	sub    $0x38,%esp
c0102f92:	c7 45 ec 00 03 00 00 	movl   $0x300,-0x14(%ebp)
c0102f99:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102f9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102f9f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0102fa6:	eb 27                	jmp    c0102fcf <init_vmm+0x43>
c0102fa8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102fab:	c1 e0 0c             	shl    $0xc,%eax
c0102fae:	05 00 60 10 c0       	add    $0xc0106000,%eax
c0102fb3:	05 00 00 00 40       	add    $0x40000000,%eax
c0102fb8:	89 c2                	mov    %eax,%edx
c0102fba:	83 ca 03             	or     $0x3,%edx
c0102fbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fc0:	89 14 85 00 80 20 c0 	mov    %edx,-0x3fdf8000(,%eax,4)
c0102fc7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102fcb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c0102fcf:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102fd2:	83 e8 80             	sub    $0xffffff80,%eax
c0102fd5:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0102fd8:	77 ce                	ja     c0102fa8 <init_vmm+0x1c>
c0102fda:	c7 45 e8 00 60 10 c0 	movl   $0xc0106000,-0x18(%ebp)
c0102fe1:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0102fe8:	eb 1e                	jmp    c0103008 <init_vmm+0x7c>
c0102fea:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fed:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0102ff4:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ff7:	01 d0                	add    %edx,%eax
c0102ff9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102ffc:	c1 e2 0c             	shl    $0xc,%edx
c0102fff:	83 ca 03             	or     $0x3,%edx
c0103002:	89 10                	mov    %edx,(%eax)
c0103004:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0103008:	81 7d f4 ff ff 01 00 	cmpl   $0x1ffff,-0xc(%ebp)
c010300f:	76 d9                	jbe    c0102fea <init_vmm+0x5e>
c0103011:	b8 00 80 20 c0       	mov    $0xc0208000,%eax
c0103016:	05 00 00 00 40       	add    $0x40000000,%eax
c010301b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c010301e:	c7 44 24 04 e8 31 10 	movl   $0xc01031e8,0x4(%esp)
c0103025:	c0 
c0103026:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
c010302d:	e8 94 0e 00 00       	call   c0103ec6 <register_interrupt_handler>
c0103032:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0103035:	89 04 24             	mov    %eax,(%esp)
c0103038:	e8 02 00 00 00       	call   c010303f <switch_pgd>
c010303d:	c9                   	leave  
c010303e:	c3                   	ret    

c010303f <switch_pgd>:
c010303f:	55                   	push   %ebp
c0103040:	89 e5                	mov    %esp,%ebp
c0103042:	8b 45 08             	mov    0x8(%ebp),%eax
c0103045:	0f 22 d8             	mov    %eax,%cr3
c0103048:	5d                   	pop    %ebp
c0103049:	c3                   	ret    

c010304a <map>:
c010304a:	55                   	push   %ebp
c010304b:	89 e5                	mov    %esp,%ebp
c010304d:	83 ec 28             	sub    $0x28,%esp
c0103050:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103053:	c1 e8 16             	shr    $0x16,%eax
c0103056:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103059:	8b 45 0c             	mov    0xc(%ebp),%eax
c010305c:	c1 e8 0c             	shr    $0xc,%eax
c010305f:	25 ff 03 00 00       	and    $0x3ff,%eax
c0103064:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103067:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010306a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103071:	8b 45 08             	mov    0x8(%ebp),%eax
c0103074:	01 d0                	add    %edx,%eax
c0103076:	8b 00                	mov    (%eax),%eax
c0103078:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010307d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103080:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0103084:	75 3f                	jne    c01030c5 <map+0x7b>
c0103086:	e8 c9 02 00 00       	call   c0103354 <pmm_alloc_page>
c010308b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010308e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103091:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103098:	8b 45 08             	mov    0x8(%ebp),%eax
c010309b:	01 d0                	add    %edx,%eax
c010309d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01030a0:	83 ca 03             	or     $0x3,%edx
c01030a3:	89 10                	mov    %edx,(%eax)
c01030a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030a8:	2d 00 00 00 40       	sub    $0x40000000,%eax
c01030ad:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01030b0:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
c01030b7:	00 
c01030b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030bb:	89 04 24             	mov    %eax,(%esp)
c01030be:	e8 2e f8 ff ff       	call   c01028f1 <bzer>
c01030c3:	eb 0b                	jmp    c01030d0 <map+0x86>
c01030c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030c8:	2d 00 00 00 40       	sub    $0x40000000,%eax
c01030cd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01030d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c01030d3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01030da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01030dd:	01 c2                	add    %eax,%edx
c01030df:	8b 45 10             	mov    0x10(%ebp),%eax
c01030e2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01030e7:	0b 45 14             	or     0x14(%ebp),%eax
c01030ea:	89 02                	mov    %eax,(%edx)
c01030ec:	8b 45 0c             	mov    0xc(%ebp),%eax
c01030ef:	0f 01 38             	invlpg (%eax)
c01030f2:	c9                   	leave  
c01030f3:	c3                   	ret    

c01030f4 <unmap>:
c01030f4:	55                   	push   %ebp
c01030f5:	89 e5                	mov    %esp,%ebp
c01030f7:	83 ec 10             	sub    $0x10,%esp
c01030fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c01030fd:	c1 e8 16             	shr    $0x16,%eax
c0103100:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0103103:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103106:	c1 e8 0c             	shr    $0xc,%eax
c0103109:	25 ff 03 00 00       	and    $0x3ff,%eax
c010310e:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0103111:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103114:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010311b:	8b 45 08             	mov    0x8(%ebp),%eax
c010311e:	01 d0                	add    %edx,%eax
c0103120:	8b 00                	mov    (%eax),%eax
c0103122:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103127:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010312a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010312e:	74 1d                	je     c010314d <unmap+0x59>
c0103130:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103133:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010313a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010313d:	01 d0                	add    %edx,%eax
c010313f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0103145:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103148:	0f 01 38             	invlpg (%eax)
c010314b:	eb 01                	jmp    c010314e <unmap+0x5a>
c010314d:	90                   	nop
c010314e:	c9                   	leave  
c010314f:	c3                   	ret    

c0103150 <get_mapping>:
c0103150:	55                   	push   %ebp
c0103151:	89 e5                	mov    %esp,%ebp
c0103153:	83 ec 10             	sub    $0x10,%esp
c0103156:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103159:	c1 e8 16             	shr    $0x16,%eax
c010315c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010315f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103162:	c1 e8 0c             	shr    $0xc,%eax
c0103165:	25 ff 03 00 00       	and    $0x3ff,%eax
c010316a:	89 45 f8             	mov    %eax,-0x8(%ebp)
c010316d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103170:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103177:	8b 45 08             	mov    0x8(%ebp),%eax
c010317a:	01 d0                	add    %edx,%eax
c010317c:	8b 00                	mov    (%eax),%eax
c010317e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103183:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103186:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010318a:	75 07                	jne    c0103193 <get_mapping+0x43>
c010318c:	b8 00 00 00 00       	mov    $0x0,%eax
c0103191:	eb 50                	jmp    c01031e3 <get_mapping+0x93>
c0103193:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103196:	2d 00 00 00 40       	sub    $0x40000000,%eax
c010319b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010319e:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01031a1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031ab:	01 d0                	add    %edx,%eax
c01031ad:	8b 00                	mov    (%eax),%eax
c01031af:	85 c0                	test   %eax,%eax
c01031b1:	74 2b                	je     c01031de <get_mapping+0x8e>
c01031b3:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c01031b7:	74 25                	je     c01031de <get_mapping+0x8e>
c01031b9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01031bc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01031c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01031c6:	01 d0                	add    %edx,%eax
c01031c8:	8b 00                	mov    (%eax),%eax
c01031ca:	89 c2                	mov    %eax,%edx
c01031cc:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c01031d2:	8b 45 10             	mov    0x10(%ebp),%eax
c01031d5:	89 10                	mov    %edx,(%eax)
c01031d7:	b8 01 00 00 00       	mov    $0x1,%eax
c01031dc:	eb 05                	jmp    c01031e3 <get_mapping+0x93>
c01031de:	b8 00 00 00 00       	mov    $0x0,%eax
c01031e3:	c9                   	leave  
c01031e4:	c3                   	ret    
c01031e5:	66 90                	xchg   %ax,%ax
c01031e7:	90                   	nop

c01031e8 <page_fault>:
c01031e8:	55                   	push   %ebp
c01031e9:	89 e5                	mov    %esp,%ebp
c01031eb:	53                   	push   %ebx
c01031ec:	83 ec 24             	sub    $0x24,%esp
c01031ef:	0f 20 d3             	mov    %cr2,%ebx
c01031f2:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c01031f5:	8b 45 08             	mov    0x8(%ebp),%eax
c01031f8:	8b 40 2c             	mov    0x2c(%eax),%eax
c01031fb:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01031fe:	89 54 24 08          	mov    %edx,0x8(%esp)
c0103202:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103206:	c7 04 24 a8 46 10 c0 	movl   $0xc01046a8,(%esp)
c010320d:	e8 c5 f1 ff ff       	call   c01023d7 <printk>
c0103212:	8b 45 08             	mov    0x8(%ebp),%eax
c0103215:	8b 40 28             	mov    0x28(%eax),%eax
c0103218:	89 44 24 04          	mov    %eax,0x4(%esp)
c010321c:	c7 04 24 db 46 10 c0 	movl   $0xc01046db,(%esp)
c0103223:	e8 af f1 ff ff       	call   c01023d7 <printk>
c0103228:	8b 45 08             	mov    0x8(%ebp),%eax
c010322b:	8b 40 28             	mov    0x28(%eax),%eax
c010322e:	83 e0 01             	and    $0x1,%eax
c0103231:	85 c0                	test   %eax,%eax
c0103233:	75 0c                	jne    c0103241 <page_fault+0x59>
c0103235:	c7 04 24 ec 46 10 c0 	movl   $0xc01046ec,(%esp)
c010323c:	e8 96 f1 ff ff       	call   c01023d7 <printk>
c0103241:	8b 45 08             	mov    0x8(%ebp),%eax
c0103244:	8b 40 28             	mov    0x28(%eax),%eax
c0103247:	83 e0 02             	and    $0x2,%eax
c010324a:	85 c0                	test   %eax,%eax
c010324c:	74 0e                	je     c010325c <page_fault+0x74>
c010324e:	c7 04 24 0d 47 10 c0 	movl   $0xc010470d,(%esp)
c0103255:	e8 7d f1 ff ff       	call   c01023d7 <printk>
c010325a:	eb 0c                	jmp    c0103268 <page_fault+0x80>
c010325c:	c7 04 24 1b 47 10 c0 	movl   $0xc010471b,(%esp)
c0103263:	e8 6f f1 ff ff       	call   c01023d7 <printk>
c0103268:	8b 45 08             	mov    0x8(%ebp),%eax
c010326b:	8b 40 28             	mov    0x28(%eax),%eax
c010326e:	83 e0 04             	and    $0x4,%eax
c0103271:	85 c0                	test   %eax,%eax
c0103273:	74 0e                	je     c0103283 <page_fault+0x9b>
c0103275:	c7 04 24 27 47 10 c0 	movl   $0xc0104727,(%esp)
c010327c:	e8 56 f1 ff ff       	call   c01023d7 <printk>
c0103281:	eb 0c                	jmp    c010328f <page_fault+0xa7>
c0103283:	c7 04 24 36 47 10 c0 	movl   $0xc0104736,(%esp)
c010328a:	e8 48 f1 ff ff       	call   c01023d7 <printk>
c010328f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103292:	8b 40 28             	mov    0x28(%eax),%eax
c0103295:	83 e0 08             	and    $0x8,%eax
c0103298:	85 c0                	test   %eax,%eax
c010329a:	74 0c                	je     c01032a8 <page_fault+0xc0>
c010329c:	c7 04 24 48 47 10 c0 	movl   $0xc0104748,(%esp)
c01032a3:	e8 2f f1 ff ff       	call   c01023d7 <printk>
c01032a8:	8b 45 08             	mov    0x8(%ebp),%eax
c01032ab:	8b 40 28             	mov    0x28(%eax),%eax
c01032ae:	83 e0 10             	and    $0x10,%eax
c01032b1:	85 c0                	test   %eax,%eax
c01032b3:	74 0c                	je     c01032c1 <page_fault+0xd9>
c01032b5:	c7 04 24 6c 47 10 c0 	movl   $0xc010476c,(%esp)
c01032bc:	e8 16 f1 ff ff       	call   c01023d7 <printk>
c01032c1:	eb fe                	jmp    c01032c1 <page_fault+0xd9>
c01032c3:	90                   	nop

c01032c4 <show_memory_map>:
c01032c4:	55                   	push   %ebp
c01032c5:	89 e5                	mov    %esp,%ebp
c01032c7:	56                   	push   %esi
c01032c8:	53                   	push   %ebx
c01032c9:	83 ec 30             	sub    $0x30,%esp
c01032cc:	a1 20 90 20 c0       	mov    0xc0209020,%eax
c01032d1:	8b 40 30             	mov    0x30(%eax),%eax
c01032d4:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01032d7:	a1 20 90 20 c0       	mov    0xc0209020,%eax
c01032dc:	8b 40 2c             	mov    0x2c(%eax),%eax
c01032df:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01032e2:	c7 04 24 9c 47 10 c0 	movl   $0xc010479c,(%esp)
c01032e9:	e8 e9 f0 ff ff       	call   c01023d7 <printk>
c01032ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032f1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01032f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01032f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01032fa:	eb 42                	jmp    c010333e <show_memory_map+0x7a>
c01032fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01032ff:	8b 70 14             	mov    0x14(%eax),%esi
c0103302:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103305:	8b 58 0c             	mov    0xc(%eax),%ebx
c0103308:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010330b:	8b 48 10             	mov    0x10(%eax),%ecx
c010330e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103311:	8b 50 04             	mov    0x4(%eax),%edx
c0103314:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103317:	8b 40 08             	mov    0x8(%eax),%eax
c010331a:	89 74 24 14          	mov    %esi,0x14(%esp)
c010331e:	89 5c 24 10          	mov    %ebx,0x10(%esp)
c0103322:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c0103326:	89 54 24 08          	mov    %edx,0x8(%esp)
c010332a:	89 44 24 04          	mov    %eax,0x4(%esp)
c010332e:	c7 04 24 ac 47 10 c0 	movl   $0xc01047ac,(%esp)
c0103335:	e8 9d f0 ff ff       	call   c01023d7 <printk>
c010333a:	83 45 f4 18          	addl   $0x18,-0xc(%ebp)
c010333e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103341:	8b 55 ec             	mov    -0x14(%ebp),%edx
c0103344:	8b 4d f0             	mov    -0x10(%ebp),%ecx
c0103347:	01 ca                	add    %ecx,%edx
c0103349:	39 d0                	cmp    %edx,%eax
c010334b:	72 af                	jb     c01032fc <show_memory_map+0x38>
c010334d:	83 c4 30             	add    $0x30,%esp
c0103350:	5b                   	pop    %ebx
c0103351:	5e                   	pop    %esi
c0103352:	5d                   	pop    %ebp
c0103353:	c3                   	ret    

c0103354 <pmm_alloc_page>:
c0103354:	55                   	push   %ebp
c0103355:	89 e5                	mov    %esp,%ebp
c0103357:	83 ec 10             	sub    $0x10,%esp
c010335a:	a1 00 60 20 c0       	mov    0xc0206000,%eax
c010335f:	8b 14 85 00 60 18 c0 	mov    -0x3fe7a000(,%eax,4),%edx
c0103366:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0103369:	83 e8 01             	sub    $0x1,%eax
c010336c:	a3 00 60 20 c0       	mov    %eax,0xc0206000
c0103371:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103374:	c9                   	leave  
c0103375:	c3                   	ret    

c0103376 <pmm_free_page>:
c0103376:	55                   	push   %ebp
c0103377:	89 e5                	mov    %esp,%ebp
c0103379:	a1 00 60 20 c0       	mov    0xc0206000,%eax
c010337e:	83 c0 01             	add    $0x1,%eax
c0103381:	a3 00 60 20 c0       	mov    %eax,0xc0206000
c0103386:	a1 00 60 20 c0       	mov    0xc0206000,%eax
c010338b:	8b 55 08             	mov    0x8(%ebp),%edx
c010338e:	89 14 85 00 60 18 c0 	mov    %edx,-0x3fe7a000(,%eax,4)
c0103395:	5d                   	pop    %ebp
c0103396:	c3                   	ret    

c0103397 <init_pmm>:
c0103397:	55                   	push   %ebp
c0103398:	89 e5                	mov    %esp,%ebp
c010339a:	83 ec 24             	sub    $0x24,%esp
c010339d:	a1 20 90 20 c0       	mov    0xc0209020,%eax
c01033a2:	8b 40 30             	mov    0x30(%eax),%eax
c01033a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01033a8:	a1 20 90 20 c0       	mov    0xc0209020,%eax
c01033ad:	8b 50 2c             	mov    0x2c(%eax),%edx
c01033b0:	89 d0                	mov    %edx,%eax
c01033b2:	01 c0                	add    %eax,%eax
c01033b4:	01 d0                	add    %edx,%eax
c01033b6:	c1 e0 03             	shl    $0x3,%eax
c01033b9:	89 c2                	mov    %eax,%edx
c01033bb:	a1 20 90 20 c0       	mov    0xc0209020,%eax
c01033c0:	8b 40 30             	mov    0x30(%eax),%eax
c01033c3:	01 d0                	add    %edx,%eax
c01033c5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01033c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01033cb:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01033ce:	eb 76                	jmp    c0103446 <init_pmm+0xaf>
c01033d0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01033d3:	8b 40 14             	mov    0x14(%eax),%eax
c01033d6:	83 f8 01             	cmp    $0x1,%eax
c01033d9:	75 67                	jne    c0103442 <init_pmm+0xab>
c01033db:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01033de:	8b 40 04             	mov    0x4(%eax),%eax
c01033e1:	3d 00 00 10 00       	cmp    $0x100000,%eax
c01033e6:	75 5a                	jne    c0103442 <init_pmm+0xab>
c01033e8:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01033eb:	8b 50 04             	mov    0x4(%eax),%edx
c01033ee:	b8 00 00 10 c0       	mov    $0xc0100000,%eax
c01033f3:	29 c2                	sub    %eax,%edx
c01033f5:	b8 00 30 21 c0       	mov    $0xc0213000,%eax
c01033fa:	01 d0                	add    %edx,%eax
c01033fc:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01033ff:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103402:	8b 50 04             	mov    0x4(%eax),%edx
c0103405:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103408:	8b 40 0c             	mov    0xc(%eax),%eax
c010340b:	01 d0                	add    %edx,%eax
c010340d:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103410:	eb 1f                	jmp    c0103431 <init_pmm+0x9a>
c0103412:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103415:	89 04 24             	mov    %eax,(%esp)
c0103418:	e8 59 ff ff ff       	call   c0103376 <pmm_free_page>
c010341d:	81 45 f8 00 10 00 00 	addl   $0x1000,-0x8(%ebp)
c0103424:	a1 00 90 20 c0       	mov    0xc0209000,%eax
c0103429:	83 c0 01             	add    $0x1,%eax
c010342c:	a3 00 90 20 c0       	mov    %eax,0xc0209000
c0103431:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103434:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0103437:	73 09                	jae    c0103442 <init_pmm+0xab>
c0103439:	81 7d f8 00 00 00 20 	cmpl   $0x20000000,-0x8(%ebp)
c0103440:	76 d0                	jbe    c0103412 <init_pmm+0x7b>
c0103442:	83 45 fc 18          	addl   $0x18,-0x4(%ebp)
c0103446:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103449:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c010344c:	72 82                	jb     c01033d0 <init_pmm+0x39>
c010344e:	c9                   	leave  
c010344f:	c3                   	ret    

c0103450 <timer_callback>:
c0103450:	55                   	push   %ebp
c0103451:	89 e5                	mov    %esp,%ebp
c0103453:	83 ec 18             	sub    $0x18,%esp
c0103456:	a1 04 60 20 c0       	mov    0xc0206004,%eax
c010345b:	89 c2                	mov    %eax,%edx
c010345d:	83 c0 01             	add    $0x1,%eax
c0103460:	a3 04 60 20 c0       	mov    %eax,0xc0206004
c0103465:	89 54 24 04          	mov    %edx,0x4(%esp)
c0103469:	c7 04 24 de 47 10 c0 	movl   $0xc01047de,(%esp)
c0103470:	e8 62 ef ff ff       	call   c01023d7 <printk>
c0103475:	c9                   	leave  
c0103476:	c3                   	ret    

c0103477 <init_timer>:
c0103477:	55                   	push   %ebp
c0103478:	89 e5                	mov    %esp,%ebp
c010347a:	83 ec 28             	sub    $0x28,%esp
c010347d:	c7 44 24 04 50 34 10 	movl   $0xc0103450,0x4(%esp)
c0103484:	c0 
c0103485:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c010348c:	e8 35 0a 00 00       	call   c0103ec6 <register_interrupt_handler>
c0103491:	b8 dc 34 12 00       	mov    $0x1234dc,%eax
c0103496:	ba 00 00 00 00       	mov    $0x0,%edx
c010349b:	f7 75 08             	divl   0x8(%ebp)
c010349e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01034a1:	c7 44 24 04 36 00 00 	movl   $0x36,0x4(%esp)
c01034a8:	00 
c01034a9:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
c01034b0:	e8 eb f2 ff ff       	call   c01027a0 <outb>
c01034b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01034b8:	88 45 f3             	mov    %al,-0xd(%ebp)
c01034bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01034be:	c1 e8 08             	shr    $0x8,%eax
c01034c1:	88 45 f2             	mov    %al,-0xe(%ebp)
c01034c4:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c01034c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01034cc:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c01034d3:	e8 c8 f2 ff ff       	call   c01027a0 <outb>
c01034d8:	0f b6 45 f2          	movzbl -0xe(%ebp),%eax
c01034dc:	89 44 24 04          	mov    %eax,0x4(%esp)
c01034e0:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c01034e7:	e8 b4 f2 ff ff       	call   c01027a0 <outb>
c01034ec:	c9                   	leave  
c01034ed:	c3                   	ret    
c01034ee:	66 90                	xchg   %ax,%ax

c01034f0 <kernel_init>:
c01034f0:	55                   	push   %ebp
c01034f1:	89 e5                	mov    %esp,%ebp
c01034f3:	83 ec 28             	sub    $0x28,%esp
c01034f6:	e8 a1 f5 ff ff       	call   c0102a9c <init_debug>
c01034fb:	e8 ec f8 ff ff       	call   c0102dec <init_gdt>
c0103500:	e8 e7 00 00 00       	call   c01035ec <init_idt>
c0103505:	c7 45 f4 e8 47 10 c0 	movl   $0xc01047e8,-0xc(%ebp)
c010350c:	e8 07 f1 ff ff       	call   c0102618 <screen_clear>
c0103511:	c7 04 24 c8 00 00 00 	movl   $0xc8,(%esp)
c0103518:	e8 5a ff ff ff       	call   c0103477 <init_timer>
c010351d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103520:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103524:	c7 04 24 f5 47 10 c0 	movl   $0xc01047f5,(%esp)
c010352b:	e8 a7 ee ff ff       	call   c01023d7 <printk>
c0103530:	c7 44 24 04 00 00 10 	movl   $0xc0100000,0x4(%esp)
c0103537:	c0 
c0103538:	c7 04 24 f9 47 10 c0 	movl   $0xc01047f9,(%esp)
c010353f:	e8 93 ee ff ff       	call   c01023d7 <printk>
c0103544:	c7 44 24 04 00 30 21 	movl   $0xc0213000,0x4(%esp)
c010354b:	c0 
c010354c:	c7 04 24 17 48 10 c0 	movl   $0xc0104817,(%esp)
c0103553:	e8 7f ee ff ff       	call   c01023d7 <printk>
c0103558:	b8 00 30 21 c0       	mov    $0xc0213000,%eax
c010355d:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
c0103563:	b8 00 00 10 c0       	mov    $0xc0100000,%eax
c0103568:	89 d1                	mov    %edx,%ecx
c010356a:	29 c1                	sub    %eax,%ecx
c010356c:	89 c8                	mov    %ecx,%eax
c010356e:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
c0103574:	85 c0                	test   %eax,%eax
c0103576:	0f 48 c2             	cmovs  %edx,%eax
c0103579:	c1 f8 0a             	sar    $0xa,%eax
c010357c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103580:	c7 04 24 34 48 10 c0 	movl   $0xc0104834,(%esp)
c0103587:	e8 4b ee ff ff       	call   c01023d7 <printk>
c010358c:	e8 33 fd ff ff       	call   c01032c4 <show_memory_map>
c0103591:	e8 01 fe ff ff       	call   c0103397 <init_pmm>
c0103596:	e8 b9 fd ff ff       	call   c0103354 <pmm_alloc_page>
c010359b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c010359e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01035a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035a5:	c7 04 24 53 48 10 c0 	movl   $0xc0104853,(%esp)
c01035ac:	e8 26 ee ff ff       	call   c01023d7 <printk>
c01035b1:	e8 9e fd ff ff       	call   c0103354 <pmm_alloc_page>
c01035b6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01035b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01035bc:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035c0:	c7 04 24 53 48 10 c0 	movl   $0xc0104853,(%esp)
c01035c7:	e8 0b ee ff ff       	call   c01023d7 <printk>
c01035cc:	e8 83 fd ff ff       	call   c0103354 <pmm_alloc_page>
c01035d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01035d4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01035d7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035db:	c7 04 24 53 48 10 c0 	movl   $0xc0104853,(%esp)
c01035e2:	e8 f0 ed ff ff       	call   c01023d7 <printk>
c01035e7:	f4                   	hlt    
c01035e8:	eb fd                	jmp    c01035e7 <kernel_init+0xf7>
c01035ea:	66 90                	xchg   %ax,%ax

c01035ec <init_idt>:
c01035ec:	55                   	push   %ebp
c01035ed:	89 e5                	mov    %esp,%ebp
c01035ef:	83 ec 18             	sub    $0x18,%esp
c01035f2:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c01035f9:	00 
c01035fa:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0103601:	e8 9a f1 ff ff       	call   c01027a0 <outb>
c0103606:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c010360d:	00 
c010360e:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0103615:	e8 86 f1 ff ff       	call   c01027a0 <outb>
c010361a:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103621:	00 
c0103622:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103629:	e8 72 f1 ff ff       	call   c01027a0 <outb>
c010362e:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c0103635:	00 
c0103636:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c010363d:	e8 5e f1 ff ff       	call   c01027a0 <outb>
c0103642:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0103649:	00 
c010364a:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103651:	e8 4a f1 ff ff       	call   c01027a0 <outb>
c0103656:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c010365d:	00 
c010365e:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0103665:	e8 36 f1 ff ff       	call   c01027a0 <outb>
c010366a:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0103671:	00 
c0103672:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103679:	e8 22 f1 ff ff       	call   c01027a0 <outb>
c010367e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0103685:	00 
c0103686:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c010368d:	e8 0e f1 ff ff       	call   c01027a0 <outb>
c0103692:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0103699:	00 
c010369a:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c01036a1:	e8 fa f0 ff ff       	call   c01027a0 <outb>
c01036a6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01036ad:	00 
c01036ae:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c01036b5:	e8 e6 f0 ff ff       	call   c01027a0 <outb>
c01036ba:	b8 5a 21 10 c0       	mov    $0xc010215a,%eax
c01036bf:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01036c6:	00 
c01036c7:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01036ce:	00 
c01036cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c01036d3:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c01036da:	e8 3a 07 00 00       	call   c0103e19 <idt_set_gate>
c01036df:	b8 61 21 10 c0       	mov    $0xc0102161,%eax
c01036e4:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01036eb:	00 
c01036ec:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01036f3:	00 
c01036f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01036f8:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c01036ff:	e8 15 07 00 00       	call   c0103e19 <idt_set_gate>
c0103704:	b8 68 21 10 c0       	mov    $0xc0102168,%eax
c0103709:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103710:	00 
c0103711:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103718:	00 
c0103719:	89 44 24 04          	mov    %eax,0x4(%esp)
c010371d:	c7 04 24 22 00 00 00 	movl   $0x22,(%esp)
c0103724:	e8 f0 06 00 00       	call   c0103e19 <idt_set_gate>
c0103729:	b8 6f 21 10 c0       	mov    $0xc010216f,%eax
c010372e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103735:	00 
c0103736:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010373d:	00 
c010373e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103742:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
c0103749:	e8 cb 06 00 00       	call   c0103e19 <idt_set_gate>
c010374e:	b8 76 21 10 c0       	mov    $0xc0102176,%eax
c0103753:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010375a:	00 
c010375b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103762:	00 
c0103763:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103767:	c7 04 24 24 00 00 00 	movl   $0x24,(%esp)
c010376e:	e8 a6 06 00 00       	call   c0103e19 <idt_set_gate>
c0103773:	b8 7d 21 10 c0       	mov    $0xc010217d,%eax
c0103778:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010377f:	00 
c0103780:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103787:	00 
c0103788:	89 44 24 04          	mov    %eax,0x4(%esp)
c010378c:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
c0103793:	e8 81 06 00 00       	call   c0103e19 <idt_set_gate>
c0103798:	b8 84 21 10 c0       	mov    $0xc0102184,%eax
c010379d:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01037a4:	00 
c01037a5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01037ac:	00 
c01037ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c01037b1:	c7 04 24 26 00 00 00 	movl   $0x26,(%esp)
c01037b8:	e8 5c 06 00 00       	call   c0103e19 <idt_set_gate>
c01037bd:	b8 8b 21 10 c0       	mov    $0xc010218b,%eax
c01037c2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01037c9:	00 
c01037ca:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01037d1:	00 
c01037d2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01037d6:	c7 04 24 27 00 00 00 	movl   $0x27,(%esp)
c01037dd:	e8 37 06 00 00       	call   c0103e19 <idt_set_gate>
c01037e2:	b8 92 21 10 c0       	mov    $0xc0102192,%eax
c01037e7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01037ee:	00 
c01037ef:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01037f6:	00 
c01037f7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01037fb:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
c0103802:	e8 12 06 00 00       	call   c0103e19 <idt_set_gate>
c0103807:	b8 99 21 10 c0       	mov    $0xc0102199,%eax
c010380c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103813:	00 
c0103814:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010381b:	00 
c010381c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103820:	c7 04 24 29 00 00 00 	movl   $0x29,(%esp)
c0103827:	e8 ed 05 00 00       	call   c0103e19 <idt_set_gate>
c010382c:	b8 a0 21 10 c0       	mov    $0xc01021a0,%eax
c0103831:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103838:	00 
c0103839:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103840:	00 
c0103841:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103845:	c7 04 24 2a 00 00 00 	movl   $0x2a,(%esp)
c010384c:	e8 c8 05 00 00       	call   c0103e19 <idt_set_gate>
c0103851:	b8 a7 21 10 c0       	mov    $0xc01021a7,%eax
c0103856:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010385d:	00 
c010385e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103865:	00 
c0103866:	89 44 24 04          	mov    %eax,0x4(%esp)
c010386a:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
c0103871:	e8 a3 05 00 00       	call   c0103e19 <idt_set_gate>
c0103876:	b8 ae 21 10 c0       	mov    $0xc01021ae,%eax
c010387b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103882:	00 
c0103883:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010388a:	00 
c010388b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010388f:	c7 04 24 2c 00 00 00 	movl   $0x2c,(%esp)
c0103896:	e8 7e 05 00 00       	call   c0103e19 <idt_set_gate>
c010389b:	b8 b5 21 10 c0       	mov    $0xc01021b5,%eax
c01038a0:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01038a7:	00 
c01038a8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01038af:	00 
c01038b0:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038b4:	c7 04 24 2d 00 00 00 	movl   $0x2d,(%esp)
c01038bb:	e8 59 05 00 00       	call   c0103e19 <idt_set_gate>
c01038c0:	b8 bc 21 10 c0       	mov    $0xc01021bc,%eax
c01038c5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01038cc:	00 
c01038cd:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01038d4:	00 
c01038d5:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038d9:	c7 04 24 2e 00 00 00 	movl   $0x2e,(%esp)
c01038e0:	e8 34 05 00 00       	call   c0103e19 <idt_set_gate>
c01038e5:	b8 c3 21 10 c0       	mov    $0xc01021c3,%eax
c01038ea:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01038f1:	00 
c01038f2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01038f9:	00 
c01038fa:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038fe:	c7 04 24 2f 00 00 00 	movl   $0x2f,(%esp)
c0103905:	e8 0f 05 00 00       	call   c0103e19 <idt_set_gate>
c010390a:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
c0103911:	00 
c0103912:	c7 04 24 60 b8 20 c0 	movl   $0xc020b860,(%esp)
c0103919:	e8 d3 ef ff ff       	call   c01028f1 <bzer>
c010391e:	66 c7 05 40 b0 20 c0 	movw   $0x7ff,0xc020b040
c0103925:	ff 07 
c0103927:	b8 60 b0 20 c0       	mov    $0xc020b060,%eax
c010392c:	a3 42 b0 20 c0       	mov    %eax,0xc020b042
c0103931:	c7 44 24 04 00 08 00 	movl   $0x800,0x4(%esp)
c0103938:	00 
c0103939:	c7 04 24 60 b0 20 c0 	movl   $0xc020b060,(%esp)
c0103940:	e8 ac ef ff ff       	call   c01028f1 <bzer>
c0103945:	b8 20 20 10 c0       	mov    $0xc0102020,%eax
c010394a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103951:	00 
c0103952:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103959:	00 
c010395a:	89 44 24 04          	mov    %eax,0x4(%esp)
c010395e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0103965:	e8 af 04 00 00       	call   c0103e19 <idt_set_gate>
c010396a:	b8 2a 20 10 c0       	mov    $0xc010202a,%eax
c010396f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103976:	00 
c0103977:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010397e:	00 
c010397f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103983:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c010398a:	e8 8a 04 00 00       	call   c0103e19 <idt_set_gate>
c010398f:	b8 34 20 10 c0       	mov    $0xc0102034,%eax
c0103994:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010399b:	00 
c010399c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01039a3:	00 
c01039a4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039a8:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c01039af:	e8 65 04 00 00       	call   c0103e19 <idt_set_gate>
c01039b4:	b8 3e 20 10 c0       	mov    $0xc010203e,%eax
c01039b9:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01039c0:	00 
c01039c1:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01039c8:	00 
c01039c9:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039cd:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
c01039d4:	e8 40 04 00 00       	call   c0103e19 <idt_set_gate>
c01039d9:	b8 48 20 10 c0       	mov    $0xc0102048,%eax
c01039de:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01039e5:	00 
c01039e6:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01039ed:	00 
c01039ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039f2:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
c01039f9:	e8 1b 04 00 00       	call   c0103e19 <idt_set_gate>
c01039fe:	b8 52 20 10 c0       	mov    $0xc0102052,%eax
c0103a03:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a0a:	00 
c0103a0b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a12:	00 
c0103a13:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a17:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
c0103a1e:	e8 f6 03 00 00       	call   c0103e19 <idt_set_gate>
c0103a23:	b8 5c 20 10 c0       	mov    $0xc010205c,%eax
c0103a28:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a2f:	00 
c0103a30:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a37:	00 
c0103a38:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a3c:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
c0103a43:	e8 d1 03 00 00       	call   c0103e19 <idt_set_gate>
c0103a48:	b8 66 20 10 c0       	mov    $0xc0102066,%eax
c0103a4d:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a54:	00 
c0103a55:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a5c:	00 
c0103a5d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a61:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c0103a68:	e8 ac 03 00 00       	call   c0103e19 <idt_set_gate>
c0103a6d:	b8 70 20 10 c0       	mov    $0xc0102070,%eax
c0103a72:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a79:	00 
c0103a7a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a81:	00 
c0103a82:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a86:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
c0103a8d:	e8 87 03 00 00       	call   c0103e19 <idt_set_gate>
c0103a92:	b8 78 20 10 c0       	mov    $0xc0102078,%eax
c0103a97:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a9e:	00 
c0103a9f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103aa6:	00 
c0103aa7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103aab:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
c0103ab2:	e8 62 03 00 00       	call   c0103e19 <idt_set_gate>
c0103ab7:	b8 82 20 10 c0       	mov    $0xc0102082,%eax
c0103abc:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ac3:	00 
c0103ac4:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103acb:	00 
c0103acc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ad0:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0103ad7:	e8 3d 03 00 00       	call   c0103e19 <idt_set_gate>
c0103adc:	b8 8a 20 10 c0       	mov    $0xc010208a,%eax
c0103ae1:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ae8:	00 
c0103ae9:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103af0:	00 
c0103af1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103af5:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
c0103afc:	e8 18 03 00 00       	call   c0103e19 <idt_set_gate>
c0103b01:	b8 92 20 10 c0       	mov    $0xc0102092,%eax
c0103b06:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b0d:	00 
c0103b0e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b15:	00 
c0103b16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b1a:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
c0103b21:	e8 f3 02 00 00       	call   c0103e19 <idt_set_gate>
c0103b26:	b8 9a 20 10 c0       	mov    $0xc010209a,%eax
c0103b2b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b32:	00 
c0103b33:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b3a:	00 
c0103b3b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b3f:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
c0103b46:	e8 ce 02 00 00       	call   c0103e19 <idt_set_gate>
c0103b4b:	b8 a2 20 10 c0       	mov    $0xc01020a2,%eax
c0103b50:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b57:	00 
c0103b58:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b5f:	00 
c0103b60:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b64:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
c0103b6b:	e8 a9 02 00 00       	call   c0103e19 <idt_set_gate>
c0103b70:	b8 a7 20 10 c0       	mov    $0xc01020a7,%eax
c0103b75:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b7c:	00 
c0103b7d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b84:	00 
c0103b85:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b89:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
c0103b90:	e8 84 02 00 00       	call   c0103e19 <idt_set_gate>
c0103b95:	b8 ae 20 10 c0       	mov    $0xc01020ae,%eax
c0103b9a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ba1:	00 
c0103ba2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ba9:	00 
c0103baa:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bae:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
c0103bb5:	e8 5f 02 00 00       	call   c0103e19 <idt_set_gate>
c0103bba:	b8 b5 20 10 c0       	mov    $0xc01020b5,%eax
c0103bbf:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103bc6:	00 
c0103bc7:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103bce:	00 
c0103bcf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bd3:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
c0103bda:	e8 3a 02 00 00       	call   c0103e19 <idt_set_gate>
c0103bdf:	b8 ba 20 10 c0       	mov    $0xc01020ba,%eax
c0103be4:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103beb:	00 
c0103bec:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103bf3:	00 
c0103bf4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bf8:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
c0103bff:	e8 15 02 00 00       	call   c0103e19 <idt_set_gate>
c0103c04:	b8 c1 20 10 c0       	mov    $0xc01020c1,%eax
c0103c09:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c10:	00 
c0103c11:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c18:	00 
c0103c19:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c1d:	c7 04 24 13 00 00 00 	movl   $0x13,(%esp)
c0103c24:	e8 f0 01 00 00       	call   c0103e19 <idt_set_gate>
c0103c29:	b8 c8 20 10 c0       	mov    $0xc01020c8,%eax
c0103c2e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c35:	00 
c0103c36:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c3d:	00 
c0103c3e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c42:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
c0103c49:	e8 cb 01 00 00       	call   c0103e19 <idt_set_gate>
c0103c4e:	b8 cf 20 10 c0       	mov    $0xc01020cf,%eax
c0103c53:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c5a:	00 
c0103c5b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c62:	00 
c0103c63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c67:	c7 04 24 15 00 00 00 	movl   $0x15,(%esp)
c0103c6e:	e8 a6 01 00 00       	call   c0103e19 <idt_set_gate>
c0103c73:	b8 d6 20 10 c0       	mov    $0xc01020d6,%eax
c0103c78:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c7f:	00 
c0103c80:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c87:	00 
c0103c88:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c8c:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
c0103c93:	e8 81 01 00 00       	call   c0103e19 <idt_set_gate>
c0103c98:	b8 dd 20 10 c0       	mov    $0xc01020dd,%eax
c0103c9d:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ca4:	00 
c0103ca5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cac:	00 
c0103cad:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103cb1:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
c0103cb8:	e8 5c 01 00 00       	call   c0103e19 <idt_set_gate>
c0103cbd:	b8 e4 20 10 c0       	mov    $0xc01020e4,%eax
c0103cc2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103cc9:	00 
c0103cca:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cd1:	00 
c0103cd2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103cd6:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
c0103cdd:	e8 37 01 00 00       	call   c0103e19 <idt_set_gate>
c0103ce2:	b8 eb 20 10 c0       	mov    $0xc01020eb,%eax
c0103ce7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103cee:	00 
c0103cef:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cf6:	00 
c0103cf7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103cfb:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
c0103d02:	e8 12 01 00 00       	call   c0103e19 <idt_set_gate>
c0103d07:	b8 f2 20 10 c0       	mov    $0xc01020f2,%eax
c0103d0c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d13:	00 
c0103d14:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d1b:	00 
c0103d1c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d20:	c7 04 24 1a 00 00 00 	movl   $0x1a,(%esp)
c0103d27:	e8 ed 00 00 00       	call   c0103e19 <idt_set_gate>
c0103d2c:	b8 f9 20 10 c0       	mov    $0xc01020f9,%eax
c0103d31:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d38:	00 
c0103d39:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d40:	00 
c0103d41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d45:	c7 04 24 1b 00 00 00 	movl   $0x1b,(%esp)
c0103d4c:	e8 c8 00 00 00       	call   c0103e19 <idt_set_gate>
c0103d51:	b8 00 21 10 c0       	mov    $0xc0102100,%eax
c0103d56:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d5d:	00 
c0103d5e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d65:	00 
c0103d66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d6a:	c7 04 24 1c 00 00 00 	movl   $0x1c,(%esp)
c0103d71:	e8 a3 00 00 00       	call   c0103e19 <idt_set_gate>
c0103d76:	b8 07 21 10 c0       	mov    $0xc0102107,%eax
c0103d7b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d82:	00 
c0103d83:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d8a:	00 
c0103d8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d8f:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
c0103d96:	e8 7e 00 00 00       	call   c0103e19 <idt_set_gate>
c0103d9b:	b8 0e 21 10 c0       	mov    $0xc010210e,%eax
c0103da0:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103da7:	00 
c0103da8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103daf:	00 
c0103db0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103db4:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
c0103dbb:	e8 59 00 00 00       	call   c0103e19 <idt_set_gate>
c0103dc0:	b8 15 21 10 c0       	mov    $0xc0102115,%eax
c0103dc5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103dcc:	00 
c0103dcd:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103dd4:	00 
c0103dd5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103dd9:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
c0103de0:	e8 34 00 00 00       	call   c0103e19 <idt_set_gate>
c0103de5:	b8 1c 21 10 c0       	mov    $0xc010211c,%eax
c0103dea:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103df1:	00 
c0103df2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103df9:	00 
c0103dfa:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103dfe:	c7 04 24 ff 00 00 00 	movl   $0xff,(%esp)
c0103e05:	e8 0f 00 00 00       	call   c0103e19 <idt_set_gate>
c0103e0a:	b8 40 b0 20 c0       	mov    $0xc020b040,%eax
c0103e0f:	89 04 24             	mov    %eax,(%esp)
c0103e12:	e8 3b e3 ff ff       	call   c0102152 <idt_flush>
c0103e17:	c9                   	leave  
c0103e18:	c3                   	ret    

c0103e19 <idt_set_gate>:
c0103e19:	55                   	push   %ebp
c0103e1a:	89 e5                	mov    %esp,%ebp
c0103e1c:	83 ec 0c             	sub    $0xc,%esp
c0103e1f:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0103e22:	8b 55 10             	mov    0x10(%ebp),%edx
c0103e25:	8b 45 14             	mov    0x14(%ebp),%eax
c0103e28:	88 4d fc             	mov    %cl,-0x4(%ebp)
c0103e2b:	66 89 55 f8          	mov    %dx,-0x8(%ebp)
c0103e2f:	88 45 f4             	mov    %al,-0xc(%ebp)
c0103e32:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e36:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103e39:	66 89 14 c5 60 b0 20 	mov    %dx,-0x3fdf4fa0(,%eax,8)
c0103e40:	c0 
c0103e41:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e45:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103e48:	c1 ea 10             	shr    $0x10,%edx
c0103e4b:	66 89 14 c5 66 b0 20 	mov    %dx,-0x3fdf4f9a(,%eax,8)
c0103e52:	c0 
c0103e53:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e57:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
c0103e5b:	66 89 14 c5 62 b0 20 	mov    %dx,-0x3fdf4f9e(,%eax,8)
c0103e62:	c0 
c0103e63:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e67:	c6 04 c5 64 b0 20 c0 	movb   $0x0,-0x3fdf4f9c(,%eax,8)
c0103e6e:	00 
c0103e6f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e73:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
c0103e77:	88 14 c5 65 b0 20 c0 	mov    %dl,-0x3fdf4f9b(,%eax,8)
c0103e7e:	c9                   	leave  
c0103e7f:	c3                   	ret    

c0103e80 <isr_handler>:
c0103e80:	55                   	push   %ebp
c0103e81:	89 e5                	mov    %esp,%ebp
c0103e83:	83 ec 18             	sub    $0x18,%esp
c0103e86:	8b 45 08             	mov    0x8(%ebp),%eax
c0103e89:	8b 40 24             	mov    0x24(%eax),%eax
c0103e8c:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103e93:	85 c0                	test   %eax,%eax
c0103e95:	74 17                	je     c0103eae <isr_handler+0x2e>
c0103e97:	8b 45 08             	mov    0x8(%ebp),%eax
c0103e9a:	8b 40 24             	mov    0x24(%eax),%eax
c0103e9d:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103ea4:	8b 55 08             	mov    0x8(%ebp),%edx
c0103ea7:	89 14 24             	mov    %edx,(%esp)
c0103eaa:	ff d0                	call   *%eax
c0103eac:	eb 16                	jmp    c0103ec4 <isr_handler+0x44>
c0103eae:	8b 45 08             	mov    0x8(%ebp),%eax
c0103eb1:	8b 40 24             	mov    0x24(%eax),%eax
c0103eb4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103eb8:	c7 04 24 6e 48 10 c0 	movl   $0xc010486e,(%esp)
c0103ebf:	e8 13 e5 ff ff       	call   c01023d7 <printk>
c0103ec4:	c9                   	leave  
c0103ec5:	c3                   	ret    

c0103ec6 <register_interrupt_handler>:
c0103ec6:	55                   	push   %ebp
c0103ec7:	89 e5                	mov    %esp,%ebp
c0103ec9:	83 ec 04             	sub    $0x4,%esp
c0103ecc:	8b 45 08             	mov    0x8(%ebp),%eax
c0103ecf:	88 45 fc             	mov    %al,-0x4(%ebp)
c0103ed2:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103ed6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103ed9:	89 14 85 60 b8 20 c0 	mov    %edx,-0x3fdf47a0(,%eax,4)
c0103ee0:	c9                   	leave  
c0103ee1:	c3                   	ret    

c0103ee2 <irq_handler>:
c0103ee2:	55                   	push   %ebp
c0103ee3:	89 e5                	mov    %esp,%ebp
c0103ee5:	83 ec 18             	sub    $0x18,%esp
c0103ee8:	8b 45 08             	mov    0x8(%ebp),%eax
c0103eeb:	8b 40 24             	mov    0x24(%eax),%eax
c0103eee:	83 f8 27             	cmp    $0x27,%eax
c0103ef1:	76 14                	jbe    c0103f07 <irq_handler+0x25>
c0103ef3:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103efa:	00 
c0103efb:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0103f02:	e8 99 e8 ff ff       	call   c01027a0 <outb>
c0103f07:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103f0e:	00 
c0103f0f:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0103f16:	e8 85 e8 ff ff       	call   c01027a0 <outb>
c0103f1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0103f1e:	8b 40 24             	mov    0x24(%eax),%eax
c0103f21:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103f28:	85 c0                	test   %eax,%eax
c0103f2a:	74 15                	je     c0103f41 <irq_handler+0x5f>
c0103f2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0103f2f:	8b 40 24             	mov    0x24(%eax),%eax
c0103f32:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103f39:	8b 55 08             	mov    0x8(%ebp),%edx
c0103f3c:	89 14 24             	mov    %edx,(%esp)
c0103f3f:	ff d0                	call   *%eax
c0103f41:	c9                   	leave  
c0103f42:	c3                   	ret    
c0103f43:	66 90                	xchg   %ax,%ax
c0103f45:	66 90                	xchg   %ax,%ax
c0103f47:	66 90                	xchg   %ax,%ax
c0103f49:	66 90                	xchg   %ax,%ax
c0103f4b:	66 90                	xchg   %ax,%ax
c0103f4d:	66 90                	xchg   %ax,%ax
c0103f4f:	66 90                	xchg   %ax,%ax
c0103f51:	66 90                	xchg   %ax,%ax
c0103f53:	66 90                	xchg   %ax,%ax
c0103f55:	66 90                	xchg   %ax,%ax
c0103f57:	66 90                	xchg   %ax,%ax
c0103f59:	66 90                	xchg   %ax,%ax
c0103f5b:	66 90                	xchg   %ax,%ax
c0103f5d:	66 90                	xchg   %ax,%ax
c0103f5f:	66 90                	xchg   %ax,%ax
c0103f61:	66 90                	xchg   %ax,%ax
c0103f63:	66 90                	xchg   %ax,%ax
c0103f65:	66 90                	xchg   %ax,%ax
c0103f67:	66 90                	xchg   %ax,%ax
c0103f69:	66 90                	xchg   %ax,%ax
c0103f6b:	66 90                	xchg   %ax,%ax
c0103f6d:	66 90                	xchg   %ax,%ax
c0103f6f:	66 90                	xchg   %ax,%ax
c0103f71:	66 90                	xchg   %ax,%ax
c0103f73:	66 90                	xchg   %ax,%ax
c0103f75:	66 90                	xchg   %ax,%ax
c0103f77:	66 90                	xchg   %ax,%ax
c0103f79:	66 90                	xchg   %ax,%ax
c0103f7b:	66 90                	xchg   %ax,%ax
c0103f7d:	66 90                	xchg   %ax,%ax
c0103f7f:	66 90                	xchg   %ax,%ax
c0103f81:	66 90                	xchg   %ax,%ax
c0103f83:	66 90                	xchg   %ax,%ax
c0103f85:	66 90                	xchg   %ax,%ax
c0103f87:	66 90                	xchg   %ax,%ax
c0103f89:	66 90                	xchg   %ax,%ax
c0103f8b:	66 90                	xchg   %ax,%ax
c0103f8d:	66 90                	xchg   %ax,%ax
c0103f8f:	66 90                	xchg   %ax,%ax
c0103f91:	66 90                	xchg   %ax,%ax
c0103f93:	66 90                	xchg   %ax,%ax
c0103f95:	66 90                	xchg   %ax,%ax
c0103f97:	66 90                	xchg   %ax,%ax
c0103f99:	66 90                	xchg   %ax,%ax
c0103f9b:	66 90                	xchg   %ax,%ax
c0103f9d:	66 90                	xchg   %ax,%ax
c0103f9f:	66 90                	xchg   %ax,%ax
c0103fa1:	66 90                	xchg   %ax,%ax
c0103fa3:	66 90                	xchg   %ax,%ax
c0103fa5:	66 90                	xchg   %ax,%ax
c0103fa7:	66 90                	xchg   %ax,%ax
c0103fa9:	66 90                	xchg   %ax,%ax
c0103fab:	66 90                	xchg   %ax,%ax
c0103fad:	66 90                	xchg   %ax,%ax
c0103faf:	66 90                	xchg   %ax,%ax
c0103fb1:	66 90                	xchg   %ax,%ax
c0103fb3:	66 90                	xchg   %ax,%ax
c0103fb5:	66 90                	xchg   %ax,%ax
c0103fb7:	66 90                	xchg   %ax,%ax
c0103fb9:	66 90                	xchg   %ax,%ax
c0103fbb:	66 90                	xchg   %ax,%ax
c0103fbd:	66 90                	xchg   %ax,%ax
c0103fbf:	66 90                	xchg   %ax,%ax
c0103fc1:	66 90                	xchg   %ax,%ax
c0103fc3:	66 90                	xchg   %ax,%ax
c0103fc5:	66 90                	xchg   %ax,%ax
c0103fc7:	66 90                	xchg   %ax,%ax
c0103fc9:	66 90                	xchg   %ax,%ax
c0103fcb:	66 90                	xchg   %ax,%ax
c0103fcd:	66 90                	xchg   %ax,%ax
c0103fcf:	66 90                	xchg   %ax,%ax
c0103fd1:	66 90                	xchg   %ax,%ax
c0103fd3:	66 90                	xchg   %ax,%ax
c0103fd5:	66 90                	xchg   %ax,%ax
c0103fd7:	66 90                	xchg   %ax,%ax
c0103fd9:	66 90                	xchg   %ax,%ax
c0103fdb:	66 90                	xchg   %ax,%ax
c0103fdd:	66 90                	xchg   %ax,%ax
c0103fdf:	66 90                	xchg   %ax,%ax
c0103fe1:	66 90                	xchg   %ax,%ax
c0103fe3:	66 90                	xchg   %ax,%ax
c0103fe5:	66 90                	xchg   %ax,%ax
c0103fe7:	66 90                	xchg   %ax,%ax
c0103fe9:	66 90                	xchg   %ax,%ax
c0103feb:	66 90                	xchg   %ax,%ax
c0103fed:	66 90                	xchg   %ax,%ax
c0103fef:	66 90                	xchg   %ax,%ax
c0103ff1:	66 90                	xchg   %ax,%ax
c0103ff3:	66 90                	xchg   %ax,%ax
c0103ff5:	66 90                	xchg   %ax,%ax
c0103ff7:	66 90                	xchg   %ax,%ax
c0103ff9:	66 90                	xchg   %ax,%ax
c0103ffb:	66 90                	xchg   %ax,%ax
c0103ffd:	66 90                	xchg   %ax,%ax
c0103fff:	90                   	nop
