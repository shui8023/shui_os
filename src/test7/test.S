
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

Disassembly of section .init.data:

00101000 <stack>:
	...

00101400 <glb_mboot_tmp>:
  101400:	00 00                	add    %al,(%eax)
	...

00101404 <pgd_tmp>:
  101404:	00 10                	add    %dl,(%eax)
	...

00101408 <pte_low>:
  101408:	00 20                	add    %ah,(%eax)
	...

0010140c <pte_high>:
  10140c:	00 30                	add    %dh,(%eax)
	...

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
c010213a:	e8 35 1d 00 00       	call   c0103e74 <isr_handler>
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
c01021de:	e8 f3 1c 00 00       	call   c0103ed6 <irq_handler>
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
c010302d:	e8 88 0e 00 00       	call   c0103eba <register_interrupt_handler>
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
c010348c:	e8 29 0a 00 00       	call   c0103eba <register_interrupt_handler>
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
c0103500:	e8 db 00 00 00       	call   c01035e0 <init_idt>
c0103505:	c7 45 f4 e8 47 10 c0 	movl   $0xc01047e8,-0xc(%ebp)
c010350c:	e8 07 f1 ff ff       	call   c0102618 <screen_clear>
c0103511:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103514:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103518:	c7 04 24 f5 47 10 c0 	movl   $0xc01047f5,(%esp)
c010351f:	e8 b3 ee ff ff       	call   c01023d7 <printk>
c0103524:	c7 44 24 04 00 00 10 	movl   $0xc0100000,0x4(%esp)
c010352b:	c0 
c010352c:	c7 04 24 f9 47 10 c0 	movl   $0xc01047f9,(%esp)
c0103533:	e8 9f ee ff ff       	call   c01023d7 <printk>
c0103538:	c7 44 24 04 00 30 21 	movl   $0xc0213000,0x4(%esp)
c010353f:	c0 
c0103540:	c7 04 24 17 48 10 c0 	movl   $0xc0104817,(%esp)
c0103547:	e8 8b ee ff ff       	call   c01023d7 <printk>
c010354c:	b8 00 30 21 c0       	mov    $0xc0213000,%eax
c0103551:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
c0103557:	b8 00 00 10 c0       	mov    $0xc0100000,%eax
c010355c:	89 d1                	mov    %edx,%ecx
c010355e:	29 c1                	sub    %eax,%ecx
c0103560:	89 c8                	mov    %ecx,%eax
c0103562:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
c0103568:	85 c0                	test   %eax,%eax
c010356a:	0f 48 c2             	cmovs  %edx,%eax
c010356d:	c1 f8 0a             	sar    $0xa,%eax
c0103570:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103574:	c7 04 24 34 48 10 c0 	movl   $0xc0104834,(%esp)
c010357b:	e8 57 ee ff ff       	call   c01023d7 <printk>
c0103580:	e8 3f fd ff ff       	call   c01032c4 <show_memory_map>
c0103585:	e8 0d fe ff ff       	call   c0103397 <init_pmm>
c010358a:	e8 c5 fd ff ff       	call   c0103354 <pmm_alloc_page>
c010358f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103592:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103595:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103599:	c7 04 24 53 48 10 c0 	movl   $0xc0104853,(%esp)
c01035a0:	e8 32 ee ff ff       	call   c01023d7 <printk>
c01035a5:	e8 aa fd ff ff       	call   c0103354 <pmm_alloc_page>
c01035aa:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01035ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01035b0:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035b4:	c7 04 24 53 48 10 c0 	movl   $0xc0104853,(%esp)
c01035bb:	e8 17 ee ff ff       	call   c01023d7 <printk>
c01035c0:	e8 8f fd ff ff       	call   c0103354 <pmm_alloc_page>
c01035c5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01035c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c01035cb:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035cf:	c7 04 24 53 48 10 c0 	movl   $0xc0104853,(%esp)
c01035d6:	e8 fc ed ff ff       	call   c01023d7 <printk>
c01035db:	f4                   	hlt    
c01035dc:	eb fd                	jmp    c01035db <kernel_init+0xeb>
c01035de:	66 90                	xchg   %ax,%ax

c01035e0 <init_idt>:
c01035e0:	55                   	push   %ebp
c01035e1:	89 e5                	mov    %esp,%ebp
c01035e3:	83 ec 18             	sub    $0x18,%esp
c01035e6:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c01035ed:	00 
c01035ee:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c01035f5:	e8 a6 f1 ff ff       	call   c01027a0 <outb>
c01035fa:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c0103601:	00 
c0103602:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0103609:	e8 92 f1 ff ff       	call   c01027a0 <outb>
c010360e:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103615:	00 
c0103616:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c010361d:	e8 7e f1 ff ff       	call   c01027a0 <outb>
c0103622:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c0103629:	00 
c010362a:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0103631:	e8 6a f1 ff ff       	call   c01027a0 <outb>
c0103636:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c010363d:	00 
c010363e:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103645:	e8 56 f1 ff ff       	call   c01027a0 <outb>
c010364a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c0103651:	00 
c0103652:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0103659:	e8 42 f1 ff ff       	call   c01027a0 <outb>
c010365e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0103665:	00 
c0103666:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c010366d:	e8 2e f1 ff ff       	call   c01027a0 <outb>
c0103672:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0103679:	00 
c010367a:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0103681:	e8 1a f1 ff ff       	call   c01027a0 <outb>
c0103686:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c010368d:	00 
c010368e:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103695:	e8 06 f1 ff ff       	call   c01027a0 <outb>
c010369a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01036a1:	00 
c01036a2:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c01036a9:	e8 f2 f0 ff ff       	call   c01027a0 <outb>
c01036ae:	b8 5a 21 10 c0       	mov    $0xc010215a,%eax
c01036b3:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01036ba:	00 
c01036bb:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01036c2:	00 
c01036c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01036c7:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c01036ce:	e8 3a 07 00 00       	call   c0103e0d <idt_set_gate>
c01036d3:	b8 61 21 10 c0       	mov    $0xc0102161,%eax
c01036d8:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01036df:	00 
c01036e0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01036e7:	00 
c01036e8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01036ec:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c01036f3:	e8 15 07 00 00       	call   c0103e0d <idt_set_gate>
c01036f8:	b8 68 21 10 c0       	mov    $0xc0102168,%eax
c01036fd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103704:	00 
c0103705:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010370c:	00 
c010370d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103711:	c7 04 24 22 00 00 00 	movl   $0x22,(%esp)
c0103718:	e8 f0 06 00 00       	call   c0103e0d <idt_set_gate>
c010371d:	b8 6f 21 10 c0       	mov    $0xc010216f,%eax
c0103722:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103729:	00 
c010372a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103731:	00 
c0103732:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103736:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
c010373d:	e8 cb 06 00 00       	call   c0103e0d <idt_set_gate>
c0103742:	b8 76 21 10 c0       	mov    $0xc0102176,%eax
c0103747:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010374e:	00 
c010374f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103756:	00 
c0103757:	89 44 24 04          	mov    %eax,0x4(%esp)
c010375b:	c7 04 24 24 00 00 00 	movl   $0x24,(%esp)
c0103762:	e8 a6 06 00 00       	call   c0103e0d <idt_set_gate>
c0103767:	b8 7d 21 10 c0       	mov    $0xc010217d,%eax
c010376c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103773:	00 
c0103774:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010377b:	00 
c010377c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103780:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
c0103787:	e8 81 06 00 00       	call   c0103e0d <idt_set_gate>
c010378c:	b8 84 21 10 c0       	mov    $0xc0102184,%eax
c0103791:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103798:	00 
c0103799:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01037a0:	00 
c01037a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01037a5:	c7 04 24 26 00 00 00 	movl   $0x26,(%esp)
c01037ac:	e8 5c 06 00 00       	call   c0103e0d <idt_set_gate>
c01037b1:	b8 8b 21 10 c0       	mov    $0xc010218b,%eax
c01037b6:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01037bd:	00 
c01037be:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01037c5:	00 
c01037c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01037ca:	c7 04 24 27 00 00 00 	movl   $0x27,(%esp)
c01037d1:	e8 37 06 00 00       	call   c0103e0d <idt_set_gate>
c01037d6:	b8 92 21 10 c0       	mov    $0xc0102192,%eax
c01037db:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01037e2:	00 
c01037e3:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01037ea:	00 
c01037eb:	89 44 24 04          	mov    %eax,0x4(%esp)
c01037ef:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
c01037f6:	e8 12 06 00 00       	call   c0103e0d <idt_set_gate>
c01037fb:	b8 99 21 10 c0       	mov    $0xc0102199,%eax
c0103800:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103807:	00 
c0103808:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010380f:	00 
c0103810:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103814:	c7 04 24 29 00 00 00 	movl   $0x29,(%esp)
c010381b:	e8 ed 05 00 00       	call   c0103e0d <idt_set_gate>
c0103820:	b8 a0 21 10 c0       	mov    $0xc01021a0,%eax
c0103825:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010382c:	00 
c010382d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103834:	00 
c0103835:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103839:	c7 04 24 2a 00 00 00 	movl   $0x2a,(%esp)
c0103840:	e8 c8 05 00 00       	call   c0103e0d <idt_set_gate>
c0103845:	b8 a7 21 10 c0       	mov    $0xc01021a7,%eax
c010384a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103851:	00 
c0103852:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103859:	00 
c010385a:	89 44 24 04          	mov    %eax,0x4(%esp)
c010385e:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
c0103865:	e8 a3 05 00 00       	call   c0103e0d <idt_set_gate>
c010386a:	b8 ae 21 10 c0       	mov    $0xc01021ae,%eax
c010386f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103876:	00 
c0103877:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010387e:	00 
c010387f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103883:	c7 04 24 2c 00 00 00 	movl   $0x2c,(%esp)
c010388a:	e8 7e 05 00 00       	call   c0103e0d <idt_set_gate>
c010388f:	b8 b5 21 10 c0       	mov    $0xc01021b5,%eax
c0103894:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010389b:	00 
c010389c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01038a3:	00 
c01038a4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038a8:	c7 04 24 2d 00 00 00 	movl   $0x2d,(%esp)
c01038af:	e8 59 05 00 00       	call   c0103e0d <idt_set_gate>
c01038b4:	b8 bc 21 10 c0       	mov    $0xc01021bc,%eax
c01038b9:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01038c0:	00 
c01038c1:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01038c8:	00 
c01038c9:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038cd:	c7 04 24 2e 00 00 00 	movl   $0x2e,(%esp)
c01038d4:	e8 34 05 00 00       	call   c0103e0d <idt_set_gate>
c01038d9:	b8 c3 21 10 c0       	mov    $0xc01021c3,%eax
c01038de:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01038e5:	00 
c01038e6:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01038ed:	00 
c01038ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038f2:	c7 04 24 2f 00 00 00 	movl   $0x2f,(%esp)
c01038f9:	e8 0f 05 00 00       	call   c0103e0d <idt_set_gate>
c01038fe:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
c0103905:	00 
c0103906:	c7 04 24 60 b8 20 c0 	movl   $0xc020b860,(%esp)
c010390d:	e8 df ef ff ff       	call   c01028f1 <bzer>
c0103912:	66 c7 05 40 b0 20 c0 	movw   $0x7ff,0xc020b040
c0103919:	ff 07 
c010391b:	b8 60 b0 20 c0       	mov    $0xc020b060,%eax
c0103920:	a3 42 b0 20 c0       	mov    %eax,0xc020b042
c0103925:	c7 44 24 04 00 08 00 	movl   $0x800,0x4(%esp)
c010392c:	00 
c010392d:	c7 04 24 60 b0 20 c0 	movl   $0xc020b060,(%esp)
c0103934:	e8 b8 ef ff ff       	call   c01028f1 <bzer>
c0103939:	b8 20 20 10 c0       	mov    $0xc0102020,%eax
c010393e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103945:	00 
c0103946:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010394d:	00 
c010394e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103952:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0103959:	e8 af 04 00 00       	call   c0103e0d <idt_set_gate>
c010395e:	b8 2a 20 10 c0       	mov    $0xc010202a,%eax
c0103963:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010396a:	00 
c010396b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103972:	00 
c0103973:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103977:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c010397e:	e8 8a 04 00 00       	call   c0103e0d <idt_set_gate>
c0103983:	b8 34 20 10 c0       	mov    $0xc0102034,%eax
c0103988:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010398f:	00 
c0103990:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103997:	00 
c0103998:	89 44 24 04          	mov    %eax,0x4(%esp)
c010399c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c01039a3:	e8 65 04 00 00       	call   c0103e0d <idt_set_gate>
c01039a8:	b8 3e 20 10 c0       	mov    $0xc010203e,%eax
c01039ad:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01039b4:	00 
c01039b5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01039bc:	00 
c01039bd:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039c1:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
c01039c8:	e8 40 04 00 00       	call   c0103e0d <idt_set_gate>
c01039cd:	b8 48 20 10 c0       	mov    $0xc0102048,%eax
c01039d2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01039d9:	00 
c01039da:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01039e1:	00 
c01039e2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039e6:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
c01039ed:	e8 1b 04 00 00       	call   c0103e0d <idt_set_gate>
c01039f2:	b8 52 20 10 c0       	mov    $0xc0102052,%eax
c01039f7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01039fe:	00 
c01039ff:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a06:	00 
c0103a07:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a0b:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
c0103a12:	e8 f6 03 00 00       	call   c0103e0d <idt_set_gate>
c0103a17:	b8 5c 20 10 c0       	mov    $0xc010205c,%eax
c0103a1c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a23:	00 
c0103a24:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a2b:	00 
c0103a2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a30:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
c0103a37:	e8 d1 03 00 00       	call   c0103e0d <idt_set_gate>
c0103a3c:	b8 66 20 10 c0       	mov    $0xc0102066,%eax
c0103a41:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a48:	00 
c0103a49:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a50:	00 
c0103a51:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a55:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c0103a5c:	e8 ac 03 00 00       	call   c0103e0d <idt_set_gate>
c0103a61:	b8 70 20 10 c0       	mov    $0xc0102070,%eax
c0103a66:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a6d:	00 
c0103a6e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a75:	00 
c0103a76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a7a:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
c0103a81:	e8 87 03 00 00       	call   c0103e0d <idt_set_gate>
c0103a86:	b8 78 20 10 c0       	mov    $0xc0102078,%eax
c0103a8b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a92:	00 
c0103a93:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a9a:	00 
c0103a9b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a9f:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
c0103aa6:	e8 62 03 00 00       	call   c0103e0d <idt_set_gate>
c0103aab:	b8 82 20 10 c0       	mov    $0xc0102082,%eax
c0103ab0:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ab7:	00 
c0103ab8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103abf:	00 
c0103ac0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ac4:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0103acb:	e8 3d 03 00 00       	call   c0103e0d <idt_set_gate>
c0103ad0:	b8 8a 20 10 c0       	mov    $0xc010208a,%eax
c0103ad5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103adc:	00 
c0103add:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ae4:	00 
c0103ae5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ae9:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
c0103af0:	e8 18 03 00 00       	call   c0103e0d <idt_set_gate>
c0103af5:	b8 92 20 10 c0       	mov    $0xc0102092,%eax
c0103afa:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b01:	00 
c0103b02:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b09:	00 
c0103b0a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b0e:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
c0103b15:	e8 f3 02 00 00       	call   c0103e0d <idt_set_gate>
c0103b1a:	b8 9a 20 10 c0       	mov    $0xc010209a,%eax
c0103b1f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b26:	00 
c0103b27:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b2e:	00 
c0103b2f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b33:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
c0103b3a:	e8 ce 02 00 00       	call   c0103e0d <idt_set_gate>
c0103b3f:	b8 a2 20 10 c0       	mov    $0xc01020a2,%eax
c0103b44:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b4b:	00 
c0103b4c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b53:	00 
c0103b54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b58:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
c0103b5f:	e8 a9 02 00 00       	call   c0103e0d <idt_set_gate>
c0103b64:	b8 a7 20 10 c0       	mov    $0xc01020a7,%eax
c0103b69:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b70:	00 
c0103b71:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b78:	00 
c0103b79:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b7d:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
c0103b84:	e8 84 02 00 00       	call   c0103e0d <idt_set_gate>
c0103b89:	b8 ae 20 10 c0       	mov    $0xc01020ae,%eax
c0103b8e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b95:	00 
c0103b96:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b9d:	00 
c0103b9e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ba2:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
c0103ba9:	e8 5f 02 00 00       	call   c0103e0d <idt_set_gate>
c0103bae:	b8 b5 20 10 c0       	mov    $0xc01020b5,%eax
c0103bb3:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103bba:	00 
c0103bbb:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103bc2:	00 
c0103bc3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bc7:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
c0103bce:	e8 3a 02 00 00       	call   c0103e0d <idt_set_gate>
c0103bd3:	b8 ba 20 10 c0       	mov    $0xc01020ba,%eax
c0103bd8:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103bdf:	00 
c0103be0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103be7:	00 
c0103be8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bec:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
c0103bf3:	e8 15 02 00 00       	call   c0103e0d <idt_set_gate>
c0103bf8:	b8 c1 20 10 c0       	mov    $0xc01020c1,%eax
c0103bfd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c04:	00 
c0103c05:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c0c:	00 
c0103c0d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c11:	c7 04 24 13 00 00 00 	movl   $0x13,(%esp)
c0103c18:	e8 f0 01 00 00       	call   c0103e0d <idt_set_gate>
c0103c1d:	b8 c8 20 10 c0       	mov    $0xc01020c8,%eax
c0103c22:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c29:	00 
c0103c2a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c31:	00 
c0103c32:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c36:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
c0103c3d:	e8 cb 01 00 00       	call   c0103e0d <idt_set_gate>
c0103c42:	b8 cf 20 10 c0       	mov    $0xc01020cf,%eax
c0103c47:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c4e:	00 
c0103c4f:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c56:	00 
c0103c57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c5b:	c7 04 24 15 00 00 00 	movl   $0x15,(%esp)
c0103c62:	e8 a6 01 00 00       	call   c0103e0d <idt_set_gate>
c0103c67:	b8 d6 20 10 c0       	mov    $0xc01020d6,%eax
c0103c6c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c73:	00 
c0103c74:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c7b:	00 
c0103c7c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c80:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
c0103c87:	e8 81 01 00 00       	call   c0103e0d <idt_set_gate>
c0103c8c:	b8 dd 20 10 c0       	mov    $0xc01020dd,%eax
c0103c91:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c98:	00 
c0103c99:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ca0:	00 
c0103ca1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ca5:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
c0103cac:	e8 5c 01 00 00       	call   c0103e0d <idt_set_gate>
c0103cb1:	b8 e4 20 10 c0       	mov    $0xc01020e4,%eax
c0103cb6:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103cbd:	00 
c0103cbe:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cc5:	00 
c0103cc6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103cca:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
c0103cd1:	e8 37 01 00 00       	call   c0103e0d <idt_set_gate>
c0103cd6:	b8 eb 20 10 c0       	mov    $0xc01020eb,%eax
c0103cdb:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ce2:	00 
c0103ce3:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cea:	00 
c0103ceb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103cef:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
c0103cf6:	e8 12 01 00 00       	call   c0103e0d <idt_set_gate>
c0103cfb:	b8 f2 20 10 c0       	mov    $0xc01020f2,%eax
c0103d00:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d07:	00 
c0103d08:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d0f:	00 
c0103d10:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d14:	c7 04 24 1a 00 00 00 	movl   $0x1a,(%esp)
c0103d1b:	e8 ed 00 00 00       	call   c0103e0d <idt_set_gate>
c0103d20:	b8 f9 20 10 c0       	mov    $0xc01020f9,%eax
c0103d25:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d2c:	00 
c0103d2d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d34:	00 
c0103d35:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d39:	c7 04 24 1b 00 00 00 	movl   $0x1b,(%esp)
c0103d40:	e8 c8 00 00 00       	call   c0103e0d <idt_set_gate>
c0103d45:	b8 00 21 10 c0       	mov    $0xc0102100,%eax
c0103d4a:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d51:	00 
c0103d52:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d59:	00 
c0103d5a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d5e:	c7 04 24 1c 00 00 00 	movl   $0x1c,(%esp)
c0103d65:	e8 a3 00 00 00       	call   c0103e0d <idt_set_gate>
c0103d6a:	b8 07 21 10 c0       	mov    $0xc0102107,%eax
c0103d6f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d76:	00 
c0103d77:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d7e:	00 
c0103d7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d83:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
c0103d8a:	e8 7e 00 00 00       	call   c0103e0d <idt_set_gate>
c0103d8f:	b8 0e 21 10 c0       	mov    $0xc010210e,%eax
c0103d94:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d9b:	00 
c0103d9c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103da3:	00 
c0103da4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103da8:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
c0103daf:	e8 59 00 00 00       	call   c0103e0d <idt_set_gate>
c0103db4:	b8 15 21 10 c0       	mov    $0xc0102115,%eax
c0103db9:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103dc0:	00 
c0103dc1:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103dc8:	00 
c0103dc9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103dcd:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
c0103dd4:	e8 34 00 00 00       	call   c0103e0d <idt_set_gate>
c0103dd9:	b8 1c 21 10 c0       	mov    $0xc010211c,%eax
c0103dde:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103de5:	00 
c0103de6:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ded:	00 
c0103dee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103df2:	c7 04 24 ff 00 00 00 	movl   $0xff,(%esp)
c0103df9:	e8 0f 00 00 00       	call   c0103e0d <idt_set_gate>
c0103dfe:	b8 40 b0 20 c0       	mov    $0xc020b040,%eax
c0103e03:	89 04 24             	mov    %eax,(%esp)
c0103e06:	e8 47 e3 ff ff       	call   c0102152 <idt_flush>
c0103e0b:	c9                   	leave  
c0103e0c:	c3                   	ret    

c0103e0d <idt_set_gate>:
c0103e0d:	55                   	push   %ebp
c0103e0e:	89 e5                	mov    %esp,%ebp
c0103e10:	83 ec 0c             	sub    $0xc,%esp
c0103e13:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0103e16:	8b 55 10             	mov    0x10(%ebp),%edx
c0103e19:	8b 45 14             	mov    0x14(%ebp),%eax
c0103e1c:	88 4d fc             	mov    %cl,-0x4(%ebp)
c0103e1f:	66 89 55 f8          	mov    %dx,-0x8(%ebp)
c0103e23:	88 45 f4             	mov    %al,-0xc(%ebp)
c0103e26:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e2a:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103e2d:	66 89 14 c5 60 b0 20 	mov    %dx,-0x3fdf4fa0(,%eax,8)
c0103e34:	c0 
c0103e35:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e39:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103e3c:	c1 ea 10             	shr    $0x10,%edx
c0103e3f:	66 89 14 c5 66 b0 20 	mov    %dx,-0x3fdf4f9a(,%eax,8)
c0103e46:	c0 
c0103e47:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e4b:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
c0103e4f:	66 89 14 c5 62 b0 20 	mov    %dx,-0x3fdf4f9e(,%eax,8)
c0103e56:	c0 
c0103e57:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e5b:	c6 04 c5 64 b0 20 c0 	movb   $0x0,-0x3fdf4f9c(,%eax,8)
c0103e62:	00 
c0103e63:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103e67:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
c0103e6b:	88 14 c5 65 b0 20 c0 	mov    %dl,-0x3fdf4f9b(,%eax,8)
c0103e72:	c9                   	leave  
c0103e73:	c3                   	ret    

c0103e74 <isr_handler>:
c0103e74:	55                   	push   %ebp
c0103e75:	89 e5                	mov    %esp,%ebp
c0103e77:	83 ec 18             	sub    $0x18,%esp
c0103e7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0103e7d:	8b 40 24             	mov    0x24(%eax),%eax
c0103e80:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103e87:	85 c0                	test   %eax,%eax
c0103e89:	74 17                	je     c0103ea2 <isr_handler+0x2e>
c0103e8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0103e8e:	8b 40 24             	mov    0x24(%eax),%eax
c0103e91:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103e98:	8b 55 08             	mov    0x8(%ebp),%edx
c0103e9b:	89 14 24             	mov    %edx,(%esp)
c0103e9e:	ff d0                	call   *%eax
c0103ea0:	eb 16                	jmp    c0103eb8 <isr_handler+0x44>
c0103ea2:	8b 45 08             	mov    0x8(%ebp),%eax
c0103ea5:	8b 40 24             	mov    0x24(%eax),%eax
c0103ea8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103eac:	c7 04 24 6e 48 10 c0 	movl   $0xc010486e,(%esp)
c0103eb3:	e8 1f e5 ff ff       	call   c01023d7 <printk>
c0103eb8:	c9                   	leave  
c0103eb9:	c3                   	ret    

c0103eba <register_interrupt_handler>:
c0103eba:	55                   	push   %ebp
c0103ebb:	89 e5                	mov    %esp,%ebp
c0103ebd:	83 ec 04             	sub    $0x4,%esp
c0103ec0:	8b 45 08             	mov    0x8(%ebp),%eax
c0103ec3:	88 45 fc             	mov    %al,-0x4(%ebp)
c0103ec6:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c0103eca:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103ecd:	89 14 85 60 b8 20 c0 	mov    %edx,-0x3fdf47a0(,%eax,4)
c0103ed4:	c9                   	leave  
c0103ed5:	c3                   	ret    

c0103ed6 <irq_handler>:
c0103ed6:	55                   	push   %ebp
c0103ed7:	89 e5                	mov    %esp,%ebp
c0103ed9:	83 ec 18             	sub    $0x18,%esp
c0103edc:	8b 45 08             	mov    0x8(%ebp),%eax
c0103edf:	8b 40 24             	mov    0x24(%eax),%eax
c0103ee2:	83 f8 27             	cmp    $0x27,%eax
c0103ee5:	76 14                	jbe    c0103efb <irq_handler+0x25>
c0103ee7:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103eee:	00 
c0103eef:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c0103ef6:	e8 a5 e8 ff ff       	call   c01027a0 <outb>
c0103efb:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103f02:	00 
c0103f03:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0103f0a:	e8 91 e8 ff ff       	call   c01027a0 <outb>
c0103f0f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103f12:	8b 40 24             	mov    0x24(%eax),%eax
c0103f15:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103f1c:	85 c0                	test   %eax,%eax
c0103f1e:	74 15                	je     c0103f35 <irq_handler+0x5f>
c0103f20:	8b 45 08             	mov    0x8(%ebp),%eax
c0103f23:	8b 40 24             	mov    0x24(%eax),%eax
c0103f26:	8b 04 85 60 b8 20 c0 	mov    -0x3fdf47a0(,%eax,4),%eax
c0103f2d:	8b 55 08             	mov    0x8(%ebp),%edx
c0103f30:	89 14 24             	mov    %edx,(%esp)
c0103f33:	ff d0                	call   *%eax
c0103f35:	c9                   	leave  
c0103f36:	c3                   	ret    
c0103f37:	66 90                	xchg   %ax,%ax
c0103f39:	66 90                	xchg   %ax,%ax
c0103f3b:	66 90                	xchg   %ax,%ax
c0103f3d:	66 90                	xchg   %ax,%ax
c0103f3f:	66 90                	xchg   %ax,%ax
c0103f41:	66 90                	xchg   %ax,%ax
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

Disassembly of section .eh_frame:

c0104000 <.eh_frame>:
c0104000:	14 00                	adc    $0x0,%al
c0104002:	00 00                	add    %al,(%eax)
c0104004:	00 00                	add    %al,(%eax)
c0104006:	00 00                	add    %al,(%eax)
c0104008:	01 7a 52             	add    %edi,0x52(%edx)
c010400b:	00 01                	add    %al,(%ecx)
c010400d:	7c 08                	jl     c0104017 <irq_handler+0x141>
c010400f:	01 1b                	add    %ebx,(%ebx)
c0104011:	0c 04                	or     $0x4,%al
c0104013:	04 88                	add    $0x88,%al
c0104015:	01 00                	add    %eax,(%eax)
c0104017:	00 1c 00             	add    %bl,(%eax,%eax,1)
c010401a:	00 00                	add    %al,(%eax)
c010401c:	1c 00                	sbb    $0x0,%al
c010401e:	00 00                	add    %al,(%eax)
c0104020:	d8 e1                	fsub   %st(1),%st
c0104022:	ff                   	(bad)  
c0104023:	ff 23                	jmp    *(%ebx)
c0104025:	00 00                	add    %al,(%eax)
c0104027:	00 00                	add    %al,(%eax)
c0104029:	41                   	inc    %ecx
c010402a:	0e                   	push   %cs
c010402b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104031:	5f                   	pop    %edi
c0104032:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0104035:	04 00                	add    $0x0,%al
c0104037:	00 1c 00             	add    %bl,(%eax,%eax,1)
c010403a:	00 00                	add    %al,(%eax)
c010403c:	3c 00                	cmp    $0x0,%al
c010403e:	00 00                	add    %al,(%eax)
c0104040:	db e1                	fndisi(8087 only) 
c0104042:	ff                   	(bad)  
c0104043:	ff 2a                	ljmp   *(%edx)
c0104045:	00 00                	add    %al,(%eax)
c0104047:	00 00                	add    %al,(%eax)
c0104049:	41                   	inc    %ecx
c010404a:	0e                   	push   %cs
c010404b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104051:	66 c5 0c 04          	lds    (%esp,%eax,1),%cx
c0104055:	04 00                	add    $0x0,%al
c0104057:	00 1c 00             	add    %bl,(%eax,%eax,1)
c010405a:	00 00                	add    %al,(%eax)
c010405c:	5c                   	pop    %esp
c010405d:	00 00                	add    %al,(%eax)
c010405f:	00 e5                	add    %ah,%ch
c0104061:	e1 ff                	loope  c0104062 <irq_handler+0x18c>
c0104063:	ff c2                	inc    %edx
c0104065:	00 00                	add    %al,(%eax)
c0104067:	00 00                	add    %al,(%eax)
c0104069:	41                   	inc    %ecx
c010406a:	0e                   	push   %cs
c010406b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104071:	02 be c5 0c 04 04    	add    0x4040cc5(%esi),%bh
c0104077:	00 1c 00             	add    %bl,(%eax,%eax,1)
c010407a:	00 00                	add    %al,(%eax)
c010407c:	7c 00                	jl     c010407e <irq_handler+0x1a8>
c010407e:	00 00                	add    %al,(%eax)
c0104080:	87 e2                	xchg   %esp,%edx
c0104082:	ff                   	(bad)  
c0104083:	ff d0                	call   *%eax
c0104085:	00 00                	add    %al,(%eax)
c0104087:	00 00                	add    %al,(%eax)
c0104089:	41                   	inc    %ecx
c010408a:	0e                   	push   %cs
c010408b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104091:	02 cc                	add    %ah,%cl
c0104093:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0104096:	04 00                	add    $0x0,%al
c0104098:	1c 00                	sbb    $0x0,%al
c010409a:	00 00                	add    %al,(%eax)
c010409c:	9c                   	pushf  
c010409d:	00 00                	add    %al,(%eax)
c010409f:	00 37                	add    %dh,(%edi)
c01040a1:	e3 ff                	jecxz  c01040a2 <irq_handler+0x1cc>
c01040a3:	ff 2d 00 00 00 00    	ljmp   *0x0
c01040a9:	41                   	inc    %ecx
c01040aa:	0e                   	push   %cs
c01040ab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01040b1:	69 c5 0c 04 04 00    	imul   $0x4040c,%ebp,%eax
c01040b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
c01040ba:	00 00                	add    %al,(%eax)
c01040bc:	bc 00 00 00 44       	mov    $0x44000000,%esp
c01040c1:	e3 ff                	jecxz  c01040c2 <irq_handler+0x1ec>
c01040c3:	ff                   	(bad)  
c01040c4:	fd                   	std    
c01040c5:	00 00                	add    %al,(%eax)
c01040c7:	00 00                	add    %al,(%eax)
c01040c9:	41                   	inc    %ecx
c01040ca:	0e                   	push   %cs
c01040cb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01040d1:	02 f9                	add    %cl,%bh
c01040d3:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c01040d6:	04 00                	add    $0x0,%al
c01040d8:	1c 00                	sbb    $0x0,%al
c01040da:	00 00                	add    %al,(%eax)
c01040dc:	dc 00                	faddl  (%eax)
c01040de:	00 00                	add    %al,(%eax)
c01040e0:	24 e4                	and    $0xe4,%al
c01040e2:	ff                   	(bad)  
c01040e3:	ff 90 00 00 00 00    	call   *0x0(%eax)
c01040e9:	41                   	inc    %ecx
c01040ea:	0e                   	push   %cs
c01040eb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01040f1:	02 8c c5 0c 04 04 00 	add    0x4040c(%ebp,%eax,8),%cl
c01040f8:	1c 00                	sbb    $0x0,%al
c01040fa:	00 00                	add    %al,(%eax)
c01040fc:	fc                   	cld    
c01040fd:	00 00                	add    %al,(%eax)
c01040ff:	00 94 e4 ff ff 84 00 	add    %dl,0x84ffff(%esp,%eiz,8)
c0104106:	00 00                	add    %al,(%eax)
c0104108:	00 41 0e             	add    %al,0xe(%ecx)
c010410b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104111:	02 80 c5 0c 04 04    	add    0x4040cc5(%eax),%al
c0104117:	00 1c 00             	add    %bl,(%eax,%eax,1)
c010411a:	00 00                	add    %al,(%eax)
c010411c:	1c 01                	sbb    $0x1,%al
c010411e:	00 00                	add    %al,(%eax)
c0104120:	f8                   	clc    
c0104121:	e4 ff                	in     $0xff,%al
c0104123:	ff 55 00             	call   *0x0(%ebp)
c0104126:	00 00                	add    %al,(%eax)
c0104128:	00 41 0e             	add    %al,0xe(%ecx)
c010412b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104131:	02 51 c5             	add    -0x3b(%ecx),%dl
c0104134:	0c 04                	or     $0x4,%al
c0104136:	04 00                	add    $0x0,%al
c0104138:	1c 00                	sbb    $0x0,%al
c010413a:	00 00                	add    %al,(%eax)
c010413c:	3c 01                	cmp    $0x1,%al
c010413e:	00 00                	add    %al,(%eax)
c0104140:	2d e5 ff ff eb       	sub    $0xebffffe5,%eax
c0104145:	00 00                	add    %al,(%eax)
c0104147:	00 00                	add    %al,(%eax)
c0104149:	41                   	inc    %ecx
c010414a:	0e                   	push   %cs
c010414b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104151:	02 e7                	add    %bh,%ah
c0104153:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0104156:	04 00                	add    $0x0,%al
c0104158:	1c 00                	sbb    $0x0,%al
c010415a:	00 00                	add    %al,(%eax)
c010415c:	5c                   	pop    %esp
c010415d:	01 00                	add    %eax,(%eax)
c010415f:	00 f8                	add    %bh,%al
c0104161:	e5 ff                	in     $0xff,%eax
c0104163:	ff 48 00             	decl   0x0(%eax)
c0104166:	00 00                	add    %al,(%eax)
c0104168:	00 41 0e             	add    %al,0xe(%ecx)
c010416b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104171:	02 44 c5 0c          	add    0xc(%ebp,%eax,8),%al
c0104175:	04 04                	add    $0x4,%al
c0104177:	00 1c 00             	add    %bl,(%eax,%eax,1)
c010417a:	00 00                	add    %al,(%eax)
c010417c:	7c 01                	jl     c010417f <irq_handler+0x2a9>
c010417e:	00 00                	add    %al,(%eax)
c0104180:	20 e6                	and    %ah,%dh
c0104182:	ff                   	(bad)  
c0104183:	ff 1e                	lcall  *(%esi)
c0104185:	00 00                	add    %al,(%eax)
c0104187:	00 00                	add    %al,(%eax)
c0104189:	41                   	inc    %ecx
c010418a:	0e                   	push   %cs
c010418b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104191:	5a                   	pop    %edx
c0104192:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0104195:	04 00                	add    $0x0,%al
c0104197:	00 20                	add    %ah,(%eax)
c0104199:	00 00                	add    %al,(%eax)
c010419b:	00 9c 01 00 00 1e e6 	add    %bl,-0x19e20000(%ecx,%eax,1)
c01041a2:	ff                   	(bad)  
c01041a3:	ff 2a                	ljmp   *(%edx)
c01041a5:	00 00                	add    %al,(%eax)
c01041a7:	00 00                	add    %al,(%eax)
c01041a9:	41                   	inc    %ecx
c01041aa:	0e                   	push   %cs
c01041ab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01041b1:	44                   	inc    %esp
c01041b2:	83 03 61             	addl   $0x61,(%ebx)
c01041b5:	c3                   	ret    
c01041b6:	41                   	inc    %ecx
c01041b7:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c01041ba:	04 00                	add    $0x0,%al
c01041bc:	20 00                	and    %al,(%eax)
c01041be:	00 00                	add    %al,(%eax)
c01041c0:	c0 01 00             	rolb   $0x0,(%ecx)
c01041c3:	00 24 e6             	add    %ah,(%esi,%eiz,8)
c01041c6:	ff                   	(bad)  
c01041c7:	ff 2c 00             	ljmp   *(%eax,%eax,1)
c01041ca:	00 00                	add    %al,(%eax)
c01041cc:	00 41 0e             	add    %al,0xe(%ecx)
c01041cf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01041d5:	44                   	inc    %esp
c01041d6:	83 03 63             	addl   $0x63,(%ebx)
c01041d9:	c3                   	ret    
c01041da:	41                   	inc    %ecx
c01041db:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c01041de:	04 00                	add    $0x0,%al
c01041e0:	1c 00                	sbb    $0x0,%al
c01041e2:	00 00                	add    %al,(%eax)
c01041e4:	e4 01                	in     $0x1,%al
c01041e6:	00 00                	add    %al,(%eax)
c01041e8:	2c e6                	sub    $0xe6,%al
c01041ea:	ff                   	(bad)  
c01041eb:	ff 51 00             	call   *0x0(%ecx)
c01041ee:	00 00                	add    %al,(%eax)
c01041f0:	00 41 0e             	add    %al,0xe(%ecx)
c01041f3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01041f9:	02 4d c5             	add    -0x3b(%ebp),%cl
c01041fc:	0c 04                	or     $0x4,%al
c01041fe:	04 00                	add    $0x0,%al
c0104200:	1c 00                	sbb    $0x0,%al
c0104202:	00 00                	add    %al,(%eax)
c0104204:	04 02                	add    $0x2,%al
c0104206:	00 00                	add    %al,(%eax)
c0104208:	5d                   	pop    %ebp
c0104209:	e6 ff                	out    %al,$0xff
c010420b:	ff 8c 00 00 00 00 41 	decl   0x41000000(%eax,%eax,1)
c0104212:	0e                   	push   %cs
c0104213:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104219:	02 88 c5 0c 04 04    	add    0x4040cc5(%eax),%cl
c010421f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104222:	00 00                	add    %al,(%eax)
c0104224:	24 02                	and    $0x2,%al
c0104226:	00 00                	add    %al,(%eax)
c0104228:	c9                   	leave  
c0104229:	e6 ff                	out    %al,$0xff
c010422b:	ff 76 00             	pushl  0x0(%esi)
c010422e:	00 00                	add    %al,(%eax)
c0104230:	00 41 0e             	add    %al,0xe(%ecx)
c0104233:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104239:	02 72 c5             	add    -0x3b(%edx),%dh
c010423c:	0c 04                	or     $0x4,%al
c010423e:	04 00                	add    $0x0,%al
c0104240:	1c 00                	sbb    $0x0,%al
c0104242:	00 00                	add    %al,(%eax)
c0104244:	44                   	inc    %esp
c0104245:	02 00                	add    (%eax),%al
c0104247:	00 1f                	add    %bl,(%edi)
c0104249:	e7 ff                	out    %eax,$0xff
c010424b:	ff 5b 00             	lcall  *0x0(%ebx)
c010424e:	00 00                	add    %al,(%eax)
c0104250:	00 41 0e             	add    %al,0xe(%ecx)
c0104253:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104259:	02 57 c5             	add    -0x3b(%edi),%dl
c010425c:	0c 04                	or     $0x4,%al
c010425e:	04 00                	add    $0x0,%al
c0104260:	1c 00                	sbb    $0x0,%al
c0104262:	00 00                	add    %al,(%eax)
c0104264:	64 02 00             	add    %fs:(%eax),%al
c0104267:	00 5a e7             	add    %bl,-0x19(%edx)
c010426a:	ff                   	(bad)  
c010426b:	ff 4a 00             	decl   0x0(%edx)
c010426e:	00 00                	add    %al,(%eax)
c0104270:	00 41 0e             	add    %al,0xe(%ecx)
c0104273:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104279:	02 46 c5             	add    -0x3b(%esi),%al
c010427c:	0c 04                	or     $0x4,%al
c010427e:	04 00                	add    $0x0,%al
c0104280:	1c 00                	sbb    $0x0,%al
c0104282:	00 00                	add    %al,(%eax)
c0104284:	84 02                	test   %al,(%edx)
c0104286:	00 00                	add    %al,(%eax)
c0104288:	84 e7                	test   %ah,%bh
c010428a:	ff                   	(bad)  
c010428b:	ff 62 00             	jmp    *0x0(%edx)
c010428e:	00 00                	add    %al,(%eax)
c0104290:	00 41 0e             	add    %al,0xe(%ecx)
c0104293:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104299:	02 5e c5             	add    -0x3b(%esi),%bl
c010429c:	0c 04                	or     $0x4,%al
c010429e:	04 00                	add    $0x0,%al
c01042a0:	1c 00                	sbb    $0x0,%al
c01042a2:	00 00                	add    %al,(%eax)
c01042a4:	a4                   	movsb  %ds:(%esi),%es:(%edi)
c01042a5:	02 00                	add    (%eax),%al
c01042a7:	00 c6                	add    %al,%dh
c01042a9:	e7 ff                	out    %eax,$0xff
c01042ab:	ff 2b                	ljmp   *(%ebx)
c01042ad:	00 00                	add    %al,(%eax)
c01042af:	00 00                	add    %al,(%eax)
c01042b1:	41                   	inc    %ecx
c01042b2:	0e                   	push   %cs
c01042b3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01042b9:	67 c5 0c             	lds    (%si),%ecx
c01042bc:	04 04                	add    $0x4,%al
c01042be:	00 00                	add    %al,(%eax)
c01042c0:	1c 00                	sbb    $0x0,%al
c01042c2:	00 00                	add    %al,(%eax)
c01042c4:	c4 02                	les    (%edx),%eax
c01042c6:	00 00                	add    %al,(%eax)
c01042c8:	d4 e7                	aam    $0xe7
c01042ca:	ff                   	(bad)  
c01042cb:	ff 40 00             	incl   0x0(%eax)
c01042ce:	00 00                	add    %al,(%eax)
c01042d0:	00 41 0e             	add    %al,0xe(%ecx)
c01042d3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01042d9:	7c c5                	jl     c01042a0 <irq_handler+0x3ca>
c01042db:	0c 04                	or     $0x4,%al
c01042dd:	04 00                	add    $0x0,%al
c01042df:	00 1c 00             	add    %bl,(%eax,%eax,1)
c01042e2:	00 00                	add    %al,(%eax)
c01042e4:	e4 02                	in     $0x2,%al
c01042e6:	00 00                	add    %al,(%eax)
c01042e8:	f4                   	hlt    
c01042e9:	e7 ff                	out    %eax,$0xff
c01042eb:	ff                   	(bad)  
c01042ec:	b9 00 00 00 00       	mov    $0x0,%ecx
c01042f1:	41                   	inc    %ecx
c01042f2:	0e                   	push   %cs
c01042f3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01042f9:	02 b5 c5 0c 04 04    	add    0x4040cc5(%ebp),%dh
c01042ff:	00 18                	add    %bl,(%eax)
c0104301:	00 00                	add    %al,(%eax)
c0104303:	00 04 03             	add    %al,(%ebx,%eax,1)
c0104306:	00 00                	add    %al,(%eax)
c0104308:	8d                   	(bad)  
c0104309:	e8 ff ff 31 00       	call   c042430d <kernel_end+0x21130d>
c010430e:	00 00                	add    %al,(%eax)
c0104310:	00 41 0e             	add    %al,0xe(%ecx)
c0104313:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104319:	00 00                	add    %al,(%eax)
c010431b:	00 20                	add    %ah,(%eax)
c010431d:	00 00                	add    %al,(%eax)
c010431f:	00 20                	add    %ah,(%eax)
c0104321:	03 00                	add    (%eax),%eax
c0104323:	00 a2 e8 ff ff 59    	add    %ah,0x59ffffe8(%edx)
c0104329:	00 00                	add    %al,(%eax)
c010432b:	00 00                	add    %al,(%eax)
c010432d:	41                   	inc    %ecx
c010432e:	0e                   	push   %cs
c010432f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104335:	44                   	inc    %esp
c0104336:	83 03 02             	addl   $0x2,(%ebx)
c0104339:	50                   	push   %eax
c010433a:	c3                   	ret    
c010433b:	41                   	inc    %ecx
c010433c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c010433f:	04 1c                	add    $0x1c,%al
c0104341:	00 00                	add    %al,(%eax)
c0104343:	00 44 03 00          	add    %al,0x0(%ebx,%eax,1)
c0104347:	00 d8                	add    %bl,%al
c0104349:	e8 ff ff 27 01       	call   c138434d <kernel_end+0x117134d>
c010434e:	00 00                	add    %al,(%eax)
c0104350:	00 41 0e             	add    %al,0xe(%ecx)
c0104353:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104359:	03 21                	add    (%ecx),%esp
c010435b:	01 c5                	add    %eax,%ebp
c010435d:	0c 04                	or     $0x4,%al
c010435f:	04 1c                	add    $0x1c,%al
c0104361:	00 00                	add    %al,(%eax)
c0104363:	00 64 03 00          	add    %ah,0x0(%ebx,%eax,1)
c0104367:	00 df                	add    %bl,%bh
c0104369:	e9 ff ff a2 00       	jmp    c0b3436d <kernel_end+0x92136d>
c010436e:	00 00                	add    %al,(%eax)
c0104370:	00 41 0e             	add    %al,0xe(%ecx)
c0104373:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104379:	02 9e c5 0c 04 04    	add    0x4040cc5(%esi),%bl
c010437f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104382:	00 00                	add    %al,(%eax)
c0104384:	84 03                	test   %al,(%ebx)
c0104386:	00 00                	add    %al,(%eax)
c0104388:	64                   	fs
c0104389:	ea ff ff 04 01 00 00 	ljmp   $0x0,$0x104ffff
c0104390:	00 41 0e             	add    %al,0xe(%ecx)
c0104393:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104399:	03 00                	add    (%eax),%eax
c010439b:	01 c5                	add    %eax,%ebp
c010439d:	0c 04                	or     $0x4,%al
c010439f:	04 1c                	add    $0x1c,%al
c01043a1:	00 00                	add    %al,(%eax)
c01043a3:	00 a4 03 00 00 48 eb 	add    %ah,-0x14b80000(%ebx,%eax,1)
c01043aa:	ff                   	(bad)  
c01043ab:	ff 9b 00 00 00 00    	lcall  *0x0(%ebx)
c01043b1:	41                   	inc    %ecx
c01043b2:	0e                   	push   %cs
c01043b3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01043b9:	02 97 c5 0c 04 04    	add    0x4040cc5(%edi),%dl
c01043bf:	00 1c 00             	add    %bl,(%eax,%eax,1)
c01043c2:	00 00                	add    %al,(%eax)
c01043c4:	c4 03                	les    (%ebx),%eax
c01043c6:	00 00                	add    %al,(%eax)
c01043c8:	c4                   	(bad)  
c01043c9:	eb ff                	jmp    c01043ca <irq_handler+0x4f4>
c01043cb:	ff b3 00 00 00 00    	pushl  0x0(%ebx)
c01043d1:	41                   	inc    %ecx
c01043d2:	0e                   	push   %cs
c01043d3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01043d9:	02 af c5 0c 04 04    	add    0x4040cc5(%edi),%ch
c01043df:	00 1c 00             	add    %bl,(%eax,%eax,1)
c01043e2:	00 00                	add    %al,(%eax)
c01043e4:	e4 03                	in     $0x3,%al
c01043e6:	00 00                	add    %al,(%eax)
c01043e8:	57                   	push   %edi
c01043e9:	ec                   	in     (%dx),%al
c01043ea:	ff                   	(bad)  
c01043eb:	ff 0b                	decl   (%ebx)
c01043ed:	00 00                	add    %al,(%eax)
c01043ef:	00 00                	add    %al,(%eax)
c01043f1:	41                   	inc    %ecx
c01043f2:	0e                   	push   %cs
c01043f3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01043f9:	47                   	inc    %edi
c01043fa:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c01043fd:	04 00                	add    $0x0,%al
c01043ff:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104402:	00 00                	add    %al,(%eax)
c0104404:	04 04                	add    $0x4,%al
c0104406:	00 00                	add    %al,(%eax)
c0104408:	42                   	inc    %edx
c0104409:	ec                   	in     (%dx),%al
c010440a:	ff                   	(bad)  
c010440b:	ff aa 00 00 00 00    	ljmp   *0x0(%edx)
c0104411:	41                   	inc    %ecx
c0104412:	0e                   	push   %cs
c0104413:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104419:	02 a6 c5 0c 04 04    	add    0x4040cc5(%esi),%ah
c010441f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104422:	00 00                	add    %al,(%eax)
c0104424:	24 04                	and    $0x4,%al
c0104426:	00 00                	add    %al,(%eax)
c0104428:	cc                   	int3   
c0104429:	ec                   	in     (%dx),%al
c010442a:	ff                   	(bad)  
c010442b:	ff 5c 00 00          	lcall  *0x0(%eax,%eax,1)
c010442f:	00 00                	add    %al,(%eax)
c0104431:	41                   	inc    %ecx
c0104432:	0e                   	push   %cs
c0104433:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104439:	02 58 c5             	add    -0x3b(%eax),%bl
c010443c:	0c 04                	or     $0x4,%al
c010443e:	04 00                	add    $0x0,%al
c0104440:	1c 00                	sbb    $0x0,%al
c0104442:	00 00                	add    %al,(%eax)
c0104444:	44                   	inc    %esp
c0104445:	04 00                	add    $0x0,%al
c0104447:	00 08                	add    %cl,(%eax)
c0104449:	ed                   	in     (%dx),%eax
c010444a:	ff                   	(bad)  
c010444b:	ff 95 00 00 00 00    	call   *0x0(%ebp)
c0104451:	41                   	inc    %ecx
c0104452:	0e                   	push   %cs
c0104453:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104459:	02 91 c5 0c 04 04    	add    0x4040cc5(%ecx),%dl
c010445f:	00 18                	add    %bl,(%eax)
c0104461:	00 00                	add    %al,(%eax)
c0104463:	00 64 04 00          	add    %ah,0x0(%esp,%eax,1)
c0104467:	00 80 ed ff ff db    	add    %al,-0x24000013(%eax)
c010446d:	00 00                	add    %al,(%eax)
c010446f:	00 00                	add    %al,(%eax)
c0104471:	41                   	inc    %ecx
c0104472:	0e                   	push   %cs
c0104473:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104479:	44                   	inc    %esp
c010447a:	83 03 24             	addl   $0x24,(%ebx)
c010447d:	00 00                	add    %al,(%eax)
c010447f:	00 80 04 00 00 40    	add    %al,0x40000004(%eax)
c0104485:	ee                   	out    %al,(%dx)
c0104486:	ff                   	(bad)  
c0104487:	ff 90 00 00 00 00    	call   *0x0(%eax)
c010448d:	41                   	inc    %ecx
c010448e:	0e                   	push   %cs
c010448f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104495:	45                   	inc    %ebp
c0104496:	86 03                	xchg   %al,(%ebx)
c0104498:	83 04 02 85          	addl   $0xffffff85,(%edx,%eax,1)
c010449c:	c3                   	ret    
c010449d:	41                   	inc    %ecx
c010449e:	c6 41 c5 0c          	movb   $0xc,-0x3b(%ecx)
c01044a2:	04 04                	add    $0x4,%al
c01044a4:	1c 00                	sbb    $0x0,%al
c01044a6:	00 00                	add    %al,(%eax)
c01044a8:	a8 04                	test   $0x4,%al
c01044aa:	00 00                	add    %al,(%eax)
c01044ac:	a8 ee                	test   $0xee,%al
c01044ae:	ff                   	(bad)  
c01044af:	ff 22                	jmp    *(%edx)
c01044b1:	00 00                	add    %al,(%eax)
c01044b3:	00 00                	add    %al,(%eax)
c01044b5:	41                   	inc    %ecx
c01044b6:	0e                   	push   %cs
c01044b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01044bd:	5e                   	pop    %esi
c01044be:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c01044c1:	04 00                	add    $0x0,%al
c01044c3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c01044c6:	00 00                	add    %al,(%eax)
c01044c8:	c8 04 00 00          	enter  $0x4,$0x0
c01044cc:	aa                   	stos   %al,%es:(%edi)
c01044cd:	ee                   	out    %al,(%dx)
c01044ce:	ff                   	(bad)  
c01044cf:	ff 21                	jmp    *(%ecx)
c01044d1:	00 00                	add    %al,(%eax)
c01044d3:	00 00                	add    %al,(%eax)
c01044d5:	41                   	inc    %ecx
c01044d6:	0e                   	push   %cs
c01044d7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01044dd:	5d                   	pop    %ebp
c01044de:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c01044e1:	04 00                	add    $0x0,%al
c01044e3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c01044e6:	00 00                	add    %al,(%eax)
c01044e8:	e8 04 00 00 ab       	call   6b1044f1 <MBOOT_HEADER_MAGIC+0x4f6294ef>
c01044ed:	ee                   	out    %al,(%dx)
c01044ee:	ff                   	(bad)  
c01044ef:	ff                   	(bad)  
c01044f0:	b9 00 00 00 00       	mov    $0x0,%ecx
c01044f5:	41                   	inc    %ecx
c01044f6:	0e                   	push   %cs
c01044f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01044fd:	02 b5 c5 0c 04 04    	add    0x4040cc5(%ebp),%dh
c0104503:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104506:	00 00                	add    %al,(%eax)
c0104508:	08 05 00 00 44 ef    	or     %al,0xef440000
c010450e:	ff                   	(bad)  
c010450f:	ff 27                	jmp    *(%edi)
c0104511:	00 00                	add    %al,(%eax)
c0104513:	00 00                	add    %al,(%eax)
c0104515:	41                   	inc    %ecx
c0104516:	0e                   	push   %cs
c0104517:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c010451d:	63 c5                	arpl   %ax,%bp
c010451f:	0c 04                	or     $0x4,%al
c0104521:	04 00                	add    $0x0,%al
c0104523:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104526:	00 00                	add    %al,(%eax)
c0104528:	28 05 00 00 4b ef    	sub    %al,0xef4b0000
c010452e:	ff                   	(bad)  
c010452f:	ff 77 00             	pushl  0x0(%edi)
c0104532:	00 00                	add    %al,(%eax)
c0104534:	00 41 0e             	add    %al,0xe(%ecx)
c0104537:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c010453d:	02 73 c5             	add    -0x3b(%ebx),%dh
c0104540:	0c 04                	or     $0x4,%al
c0104542:	04 00                	add    $0x0,%al
c0104544:	20 00                	and    %al,(%eax)
c0104546:	00 00                	add    %al,(%eax)
c0104548:	48                   	dec    %eax
c0104549:	05 00 00 d9 ba       	add    $0xbad90000,%eax
c010454e:	ff                   	(bad)  
c010454f:	3f                   	aas    
c0104550:	cf                   	iret   
c0104551:	00 00                	add    %al,(%eax)
c0104553:	00 00                	add    %al,(%eax)
c0104555:	41                   	inc    %ecx
c0104556:	0e                   	push   %cs
c0104557:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c010455d:	44                   	inc    %esp
c010455e:	83 03 02             	addl   $0x2,(%ebx)
c0104561:	c6 c3 41             	mov    $0x41,%bl
c0104564:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0104567:	04 18                	add    $0x18,%al
c0104569:	00 00                	add    %al,(%eax)
c010456b:	00 6c 05 00          	add    %ch,0x0(%ebp,%eax,1)
c010456f:	00 80 ef ff ff ee    	add    %al,-0x11000011(%eax)
c0104575:	00 00                	add    %al,(%eax)
c0104577:	00 00                	add    %al,(%eax)
c0104579:	41                   	inc    %ecx
c010457a:	0e                   	push   %cs
c010457b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c0104581:	00 00                	add    %al,(%eax)
c0104583:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104586:	00 00                	add    %al,(%eax)
c0104588:	88 05 00 00 54 f0    	mov    %al,0xf0540000
c010458e:	ff                   	(bad)  
c010458f:	ff 2d 08 00 00 00    	ljmp   *0x8
c0104595:	41                   	inc    %ecx
c0104596:	0e                   	push   %cs
c0104597:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c010459d:	03 29                	add    (%ecx),%ebp
c010459f:	08 c5                	or     %al,%ch
c01045a1:	0c 04                	or     $0x4,%al
c01045a3:	04 1c                	add    $0x1c,%al
c01045a5:	00 00                	add    %al,(%eax)
c01045a7:	00 a8 05 00 00 61    	add    %ch,0x61000005(%eax)
c01045ad:	f8                   	clc    
c01045ae:	ff                   	(bad)  
c01045af:	ff 67 00             	jmp    *0x0(%edi)
c01045b2:	00 00                	add    %al,(%eax)
c01045b4:	00 41 0e             	add    %al,0xe(%ecx)
c01045b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01045bd:	02 63 c5             	add    -0x3b(%ebx),%ah
c01045c0:	0c 04                	or     $0x4,%al
c01045c2:	04 00                	add    $0x0,%al
c01045c4:	1c 00                	sbb    $0x0,%al
c01045c6:	00 00                	add    %al,(%eax)
c01045c8:	c8 05 00 00          	enter  $0x5,$0x0
c01045cc:	a8 f8                	test   $0xf8,%al
c01045ce:	ff                   	(bad)  
c01045cf:	ff 46 00             	incl   0x0(%esi)
c01045d2:	00 00                	add    %al,(%eax)
c01045d4:	00 41 0e             	add    %al,0xe(%ecx)
c01045d7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01045dd:	02 42 c5             	add    -0x3b(%edx),%al
c01045e0:	0c 04                	or     $0x4,%al
c01045e2:	04 00                	add    $0x0,%al
c01045e4:	1c 00                	sbb    $0x0,%al
c01045e6:	00 00                	add    %al,(%eax)
c01045e8:	e8 05 00 00 ce       	call   8e1045f2 <MBOOT_HEADER_MAGIC+0x726295f0>
c01045ed:	f8                   	clc    
c01045ee:	ff                   	(bad)  
c01045ef:	ff 1c 00             	lcall  *(%eax,%eax,1)
c01045f2:	00 00                	add    %al,(%eax)
c01045f4:	00 41 0e             	add    %al,0xe(%ecx)
c01045f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c01045fd:	58                   	pop    %eax
c01045fe:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
c0104601:	04 00                	add    $0x0,%al
c0104603:	00 1c 00             	add    %bl,(%eax,%eax,1)
c0104606:	00 00                	add    %al,(%eax)
c0104608:	08 06                	or     %al,(%esi)
c010460a:	00 00                	add    %al,(%eax)
c010460c:	ca f8 ff             	lret   $0xfff8
c010460f:	ff 61 00             	jmp    *0x0(%ecx)
c0104612:	00 00                	add    %al,(%eax)
c0104614:	00 41 0e             	add    %al,0xe(%ecx)
c0104617:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
c010461d:	02 5d c5             	add    -0x3b(%ebp),%bl
c0104620:	0c 04                	or     $0x4,%al
c0104622:	04 00                	add    $0x0,%al

Disassembly of section .data:

c0104624 <screen_point>:
c0104624:	00 80 0b c0 25 64    	add    %al,0x6425c00b(%eax)
c010462a:	3a 40 72             	cmp    0x72(%eax),%al
c010462d:	69 6e 67 20 25 64 0a 	imul   $0xa642520,0x67(%esi),%ebp
c0104634:	00 25 64 3a 20 63    	add    %ah,0x63203a64
c010463a:	73 20                	jae    c010465c <screen_point+0x38>
c010463c:	3d 20 25 64 0a       	cmp    $0xa642520,%eax
c0104641:	00 25 64 3a 20 64    	add    %ah,0x64203a64
c0104647:	73 20                	jae    c0104669 <screen_point+0x45>
c0104649:	3d 20 25 64 0a       	cmp    $0xa642520,%eax
c010464e:	00 25 64 3a 20 65    	add    %ah,0x65203a64
c0104654:	73 20                	jae    c0104676 <screen_point+0x52>
c0104656:	3d 20 25 64 0a       	cmp    $0xa642520,%eax
c010465b:	00 25 64 3a 20 73    	add    %ah,0x73203a64
c0104661:	73 20                	jae    c0104683 <screen_point+0x5f>
c0104663:	3d 20 25 64 0a       	cmp    $0xa642520,%eax
c0104668:	00 2a                	add    %ch,(%edx)
c010466a:	2a 2a                	sub    (%edx),%ch
c010466c:	2a 2a                	sub    (%edx),%ch
c010466e:	2a 2a                	sub    (%edx),%ch
c0104670:	73 79                	jae    c01046eb <screen_point+0xc7>
c0104672:	73 74                	jae    c01046e8 <screen_point+0xc4>
c0104674:	65                   	gs
c0104675:	6d                   	insl   (%dx),%es:(%edi)
c0104676:	20 70 61             	and    %dh,0x61(%eax)
c0104679:	6e                   	outsb  %ds:(%esi),(%dx)
c010467a:	69 63 3a 25 73 0a 00 	imul   $0xa7325,0x3a(%ebx),%esp
c0104681:	2a 2a                	sub    (%edx),%ch
c0104683:	2a 2a                	sub    (%edx),%ch
c0104685:	0a 00                	or     (%eax),%al
c0104687:	20 20                	and    %ah,(%eax)
c0104689:	20 20                	and    %ah,(%eax)
c010468b:	20 5b 30             	and    %bl,0x30(%ebx)
c010468e:	78 25                	js     c01046b5 <screen_point+0x91>
c0104690:	78 5d                	js     c01046ef <screen_point+0xcb>
c0104692:	20 25 73 0a 00 2e    	and    %ah,0x2e000a73
c0104698:	73 74                	jae    c010470e <screen_point+0xea>
c010469a:	72 74                	jb     c0104710 <screen_point+0xec>
c010469c:	61                   	popa   
c010469d:	62 00                	bound  %eax,(%eax)
c010469f:	2e 73 79             	jae,pn c010471b <screen_point+0xf7>
c01046a2:	6d                   	insl   (%dx),%es:(%edi)
c01046a3:	74 61                	je     c0104706 <screen_point+0xe2>
c01046a5:	62 00                	bound  %eax,(%eax)
c01046a7:	00 50 61             	add    %dl,0x61(%eax)
c01046aa:	67 65 20 66 61       	and    %ah,%gs:0x61(%bp)
c01046af:	75 6c                	jne    c010471d <screen_point+0xf9>
c01046b1:	74 20                	je     c01046d3 <screen_point+0xaf>
c01046b3:	61                   	popa   
c01046b4:	74 20                	je     c01046d6 <screen_point+0xb2>
c01046b6:	30 78 25             	xor    %bh,0x25(%eax)
c01046b9:	78 2c                	js     c01046e7 <screen_point+0xc3>
c01046bb:	20 76 69             	and    %dh,0x69(%esi)
c01046be:	72 74                	jb     c0104734 <screen_point+0x110>
c01046c0:	75 61                	jne    c0104723 <screen_point+0xff>
c01046c2:	6c                   	insb   (%dx),%es:(%edi)
c01046c3:	20 66 61             	and    %ah,0x61(%esi)
c01046c6:	75 6c                	jne    c0104734 <screen_point+0x110>
c01046c8:	74 69                	je     c0104733 <screen_point+0x10f>
c01046ca:	6e                   	outsb  %ds:(%esi),(%dx)
c01046cb:	67 20 61 64          	and    %ah,0x64(%bx,%di)
c01046cf:	64                   	fs
c01046d0:	72 65                	jb     c0104737 <screen_point+0x113>
c01046d2:	73 73                	jae    c0104747 <screen_point+0x123>
c01046d4:	20 30                	and    %dh,(%eax)
c01046d6:	78 25                	js     c01046fd <screen_point+0xd9>
c01046d8:	78 0a                	js     c01046e4 <screen_point+0xc0>
c01046da:	00 45 72             	add    %al,0x72(%ebp)
c01046dd:	72 6f                	jb     c010474e <screen_point+0x12a>
c01046df:	72 20                	jb     c0104701 <screen_point+0xdd>
c01046e1:	63 6f 64             	arpl   %bp,0x64(%edi)
c01046e4:	65 3a 25 78 0a 00 00 	cmp    %gs:0xa78,%ah
c01046eb:	00 42 65             	add    %al,0x65(%edx)
c01046ee:	63 61 75             	arpl   %sp,0x75(%ecx)
c01046f1:	73 65                	jae    c0104758 <screen_point+0x134>
c01046f3:	20 74 68 65          	and    %dh,0x65(%eax,%ebp,2)
c01046f7:	20 70 61             	and    %dh,0x61(%eax)
c01046fa:	67 65 20 77 61       	and    %dh,%gs:0x61(%bx)
c01046ff:	73 6e                	jae    c010476f <screen_point+0x14b>
c0104701:	6f                   	outsl  %ds:(%esi),(%dx)
c0104702:	74 20                	je     c0104724 <screen_point+0x100>
c0104704:	70 72                	jo     c0104778 <screen_point+0x154>
c0104706:	65                   	gs
c0104707:	73 65                	jae    c010476e <screen_point+0x14a>
c0104709:	6e                   	outsb  %ds:(%esi),(%dx)
c010470a:	74 0a                	je     c0104716 <screen_point+0xf2>
c010470c:	00 57 72             	add    %dl,0x72(%edi)
c010470f:	69 74 65 20 65 72 72 	imul   $0x6f727265,0x20(%ebp,%eiz,2),%esi
c0104716:	6f 
c0104717:	72 21                	jb     c010473a <screen_point+0x116>
c0104719:	0a 00                	or     (%eax),%al
c010471b:	52                   	push   %edx
c010471c:	65                   	gs
c010471d:	61                   	popa   
c010471e:	64 20 65 72          	and    %ah,%fs:0x72(%ebp)
c0104722:	72 6f                	jb     c0104793 <screen_point+0x16f>
c0104724:	72 0a                	jb     c0104730 <screen_point+0x10c>
c0104726:	00 49 6e             	add    %cl,0x6e(%ecx)
c0104729:	20 75 73             	and    %dh,0x73(%ebp)
c010472c:	65                   	gs
c010472d:	72 20                	jb     c010474f <screen_point+0x12b>
c010472f:	6d                   	insl   (%dx),%es:(%edi)
c0104730:	6f                   	outsl  %ds:(%esi),(%dx)
c0104731:	64 65 2e 0a 00       	fs gs or %cs:%fs:%gs:(%eax),%al
c0104736:	69 6e 20 6b 65 72 6e 	imul   $0x6e72656b,0x20(%esi),%ebp
c010473d:	65                   	gs
c010473e:	6c                   	insb   (%dx),%es:(%edi)
c010473f:	20 6d 6f             	and    %ch,0x6f(%ebp)
c0104742:	64 65 2e 0a 00       	fs gs or %cs:%fs:%gs:(%eax),%al
c0104747:	00 52 65             	add    %dl,0x65(%edx)
c010474a:	73 65                	jae    c01047b1 <screen_point+0x18d>
c010474c:	72 76                	jb     c01047c4 <screen_point+0x1a0>
c010474e:	65 64 20 62 69       	gs and %ah,%fs:%gs:0x69(%edx)
c0104753:	74 73                	je     c01047c8 <screen_point+0x1a4>
c0104755:	20 62 65             	and    %ah,0x65(%edx)
c0104758:	69 6e 67 20 6f 76 65 	imul   $0x65766f20,0x67(%esi),%ebp
c010475f:	72 77                	jb     c01047d8 <screen_point+0x1b4>
c0104761:	72 69                	jb     c01047cc <screen_point+0x1a8>
c0104763:	74 74                	je     c01047d9 <screen_point+0x1b5>
c0104765:	65 6e                	outsb  %gs:(%esi),(%dx)
c0104767:	2e 0a 00             	or     %cs:(%eax),%al
c010476a:	00 00                	add    %al,(%eax)
c010476c:	54                   	push   %esp
c010476d:	68 65 20 66 61       	push   $0x61662065
c0104772:	75 6c                	jne    c01047e0 <screen_point+0x1bc>
c0104774:	74 20                	je     c0104796 <screen_point+0x172>
c0104776:	6f                   	outsl  %ds:(%esi),(%dx)
c0104777:	63 63 75             	arpl   %sp,0x75(%ebx)
c010477a:	72 72                	jb     c01047ee <screen_point+0x1ca>
c010477c:	65 64 20 64 75 72    	gs and %ah,%fs:%gs:0x72(%ebp,%esi,2)
c0104782:	69 6e 67 20 61 6e 20 	imul   $0x206e6120,0x67(%esi),%ebp
c0104789:	69 6e 73 74 72 63 74 	imul   $0x74637274,0x73(%esi),%ebp
c0104790:	69 6f 6e 20 66 65 74 	imul   $0x74656620,0x6e(%edi),%ebp
c0104797:	63 68 2e             	arpl   %bp,0x2e(%eax)
c010479a:	0a 00                	or     (%eax),%al
c010479c:	4d                   	dec    %ebp
c010479d:	65                   	gs
c010479e:	6d                   	insl   (%dx),%es:(%edi)
c010479f:	6f                   	outsl  %ds:(%esi),(%dx)
c01047a0:	72 79                	jb     c010481b <screen_point+0x1f7>
c01047a2:	20 6d 61             	and    %ch,0x61(%ebp)
c01047a5:	70 3a                	jo     c01047e1 <screen_point+0x1bd>
c01047a7:	0a 00                	or     (%eax),%al
c01047a9:	00 00                	add    %al,(%eax)
c01047ab:	00 62 61             	add    %ah,0x61(%edx)
c01047ae:	73 65                	jae    c0104815 <screen_point+0x1f1>
c01047b0:	5f                   	pop    %edi
c01047b1:	61                   	popa   
c01047b2:	64                   	fs
c01047b3:	64                   	fs
c01047b4:	72 20                	jb     c01047d6 <screen_point+0x1b2>
c01047b6:	3d 20 30 78 25       	cmp    $0x25783020,%eax
c01047bb:	78 25                	js     c01047e2 <screen_point+0x1be>
c01047bd:	78 2c                	js     c01047eb <screen_point+0x1c7>
c01047bf:	20 6c 65 6e          	and    %ch,0x6e(%ebp,%eiz,2)
c01047c3:	67 74 68             	addr16 je c010482e <screen_point+0x20a>
c01047c6:	20 3d 20 30 78 25    	and    %bh,0x25783020
c01047cc:	78 25                	js     c01047f3 <screen_point+0x1cf>
c01047ce:	78 2c                	js     c01047fc <screen_point+0x1d8>
c01047d0:	20 74 79 70          	and    %dh,0x70(%ecx,%edi,2)
c01047d4:	65 20 3d 20 30 78 25 	and    %bh,%gs:0x25783020
c01047db:	78 0a                	js     c01047e7 <screen_point+0x1c3>
c01047dd:	00 74 69 63          	add    %dh,0x63(%ecx,%ebp,2)
c01047e1:	6b 3a 25             	imul   $0x25,(%edx),%edi
c01047e4:	64 0a 00             	or     %fs:(%eax),%al
c01047e7:	00 68 65             	add    %ch,0x65(%eax)
c01047ea:	6c                   	insb   (%dx),%es:(%edi)
c01047eb:	6c                   	insb   (%dx),%es:(%edi)
c01047ec:	6f                   	outsl  %ds:(%esi),(%dx)
c01047ed:	20 77 6f             	and    %dh,0x6f(%edi)
c01047f0:	72 64                	jb     c0104856 <screen_point+0x232>
c01047f2:	21 0a                	and    %ecx,(%edx)
c01047f4:	00 25 73 0a 00 6b    	add    %ah,0x6b000a73
c01047fa:	65                   	gs
c01047fb:	72 6e                	jb     c010486b <screen_point+0x247>
c01047fd:	65                   	gs
c01047fe:	6c                   	insb   (%dx),%es:(%edi)
c01047ff:	20 69 6e             	and    %ch,0x6e(%ecx)
c0104802:	20 6d 65             	and    %ch,0x65(%ebp)
c0104805:	6d                   	insl   (%dx),%es:(%edi)
c0104806:	6f                   	outsl  %ds:(%esi),(%dx)
c0104807:	72 79                	jb     c0104882 <screen_point+0x25e>
c0104809:	20 73 74             	and    %dh,0x74(%ebx)
c010480c:	61                   	popa   
c010480d:	72 74                	jb     c0104883 <screen_point+0x25f>
c010480f:	20 3a                	and    %bh,(%edx)
c0104811:	30 78 25             	xor    %bh,0x25(%eax)
c0104814:	78 0a                	js     c0104820 <screen_point+0x1fc>
c0104816:	00 6b 65             	add    %ch,0x65(%ebx)
c0104819:	72 6e                	jb     c0104889 <screen_point+0x265>
c010481b:	65                   	gs
c010481c:	6c                   	insb   (%dx),%es:(%edi)
c010481d:	20 69 6e             	and    %ch,0x6e(%ecx)
c0104820:	20 6d 65             	and    %ch,0x65(%ebp)
c0104823:	6d                   	insl   (%dx),%es:(%edi)
c0104824:	6f                   	outsl  %ds:(%esi),(%dx)
c0104825:	72 79                	jb     c01048a0 <screen_point+0x27c>
c0104827:	20 65 6e             	and    %ah,0x6e(%ebp)
c010482a:	64 20 3a             	and    %bh,%fs:(%edx)
c010482d:	30 78 25             	xor    %bh,0x25(%eax)
c0104830:	78 0a                	js     c010483c <screen_point+0x218>
c0104832:	00 00                	add    %al,(%eax)
c0104834:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0104838:	65                   	gs
c0104839:	6c                   	insb   (%dx),%es:(%edi)
c010483a:	20 69 6e             	and    %ch,0x6e(%ecx)
c010483d:	20 6d 65             	and    %ch,0x65(%ebp)
c0104840:	6d                   	insl   (%dx),%es:(%edi)
c0104841:	6f                   	outsl  %ds:(%esi),(%dx)
c0104842:	72 79                	jb     c01048bd <screen_point+0x299>
c0104844:	20 75 73             	and    %dh,0x73(%ebp)
c0104847:	65 64 20 3a          	gs and %bh,%fs:%gs:(%edx)
c010484b:	25 64 20 4b 42       	and    $0x424b2064,%eax
c0104850:	0a 0a                	or     (%edx),%cl
c0104852:	00 41 6c             	add    %al,0x6c(%ecx)
c0104855:	6c                   	insb   (%dx),%es:(%edi)
c0104856:	6f                   	outsl  %ds:(%esi),(%dx)
c0104857:	63 20                	arpl   %sp,(%eax)
c0104859:	70 68                	jo     c01048c3 <screen_point+0x29f>
c010485b:	79 73                	jns    c01048d0 <screen_point+0x2ac>
c010485d:	69 63 61 6c 20 61 64 	imul   $0x6461206c,0x61(%ebx),%esp
c0104864:	64                   	fs
c0104865:	72 65                	jb     c01048cc <screen_point+0x2a8>
c0104867:	73 73                	jae    c01048dc <screen_point+0x2b8>
c0104869:	3a 25 78 0a 00 75    	cmp    0x75000a78,%ah
c010486f:	68 61 6e 64 64       	push   $0x64646e61
c0104874:	6c                   	insb   (%dx),%es:(%edi)
c0104875:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
c010487a:	74 65                	je     c01048e1 <screen_point+0x2bd>
c010487c:	72 75                	jb     c01048f3 <screen_point+0x2cf>
c010487e:	70 70                	jo     c01048f0 <screen_point+0x2cc>
c0104880:	74 3a                	je     c01048bc <screen_point+0x298>
c0104882:	25 64 0a 00 00       	and    $0xa64,%eax
	...

Disassembly of section .bss:

c0105000 <screen_abscissa>:
	...

c0105002 <screen_ordinate>:
	...

c0105004 <kernel_elf>:
	...

c0105014 <round.1038>:
	...

c0106000 <pte_kernel>:
	...

c0186000 <pmm_stack>:
	...

c0206000 <pmm_stack_top>:
c0206000:	00 00                	add    %al,(%eax)
	...

c0206004 <tick.1044>:
	...

c0207000 <gdt_entries>:
	...

c0207028 <gdt_ptr>:
	...

c0208000 <pgd_kernel>:
	...

c0209000 <phy_page_count>:
	...

c0209020 <glb_mboot_ptr>:
	...

c0209040 <kernel_stack>:
	...

c020b040 <idt_ptr>:
	...

c020b060 <idt_entries>:
	...

c020b860 <interrupt_handlers>:
	...

Disassembly of section .stab:

c020bc60 <.stab>:
c020bc60:	01 00                	add    %eax,(%eax)
c020bc62:	00 00                	add    %al,(%eax)
c020bc64:	00 00                	add    %al,(%eax)
c020bc66:	f7 06 4c 1d 00 00    	testl  $0x1d4c,(%esi)
c020bc6c:	01 00                	add    %eax,(%eax)
c020bc6e:	00 00                	add    %al,(%eax)
c020bc70:	64 00 00             	add    %al,%fs:(%eax)
c020bc73:	00 00                	add    %al,(%eax)
c020bc75:	20 10                	and    %dl,(%eax)
c020bc77:	c0 00 00             	rolb   $0x0,(%eax)
c020bc7a:	00 00                	add    %al,(%eax)
c020bc7c:	44                   	inc    %esp
c020bc7d:	00 04 00             	add    %al,(%eax,%eax,1)
c020bc80:	00 20                	add    %ah,(%eax)
c020bc82:	10 c0                	adc    %al,%al
c020bc84:	00 00                	add    %al,(%eax)
c020bc86:	00 00                	add    %al,(%eax)
c020bc88:	44                   	inc    %esp
c020bc89:	00 05 00 04 20 10    	add    %al,0x10200400
c020bc8f:	c0 00 00             	rolb   $0x0,(%eax)
c020bc92:	00 00                	add    %al,(%eax)
c020bc94:	44                   	inc    %esp
c020bc95:	00 07                	add    %al,(%edi)
c020bc97:	00 07                	add    %al,(%edi)
c020bc99:	20 10                	and    %dl,(%eax)
c020bc9b:	c0 00 00             	rolb   $0x0,(%eax)
c020bc9e:	00 00                	add    %al,(%eax)
c020bca0:	44                   	inc    %esp
c020bca1:	00 08                	add    %cl,(%eax)
c020bca3:	00 0b                	add    %cl,(%ebx)
c020bca5:	20 10                	and    %dl,(%eax)
c020bca7:	c0 00 00             	rolb   $0x0,(%eax)
c020bcaa:	00 00                	add    %al,(%eax)
c020bcac:	44                   	inc    %esp
c020bcad:	00 09                	add    %cl,(%ecx)
c020bcaf:	00 0d 20 10 c0 00    	add    %cl,0xc01020
c020bcb5:	00 00                	add    %al,(%eax)
c020bcb7:	00 44 00 0a          	add    %al,0xa(%eax,%eax,1)
c020bcbb:	00 0f                	add    %cl,(%edi)
c020bcbd:	20 10                	and    %dl,(%eax)
c020bcbf:	c0 00 00             	rolb   $0x0,(%eax)
c020bcc2:	00 00                	add    %al,(%eax)
c020bcc4:	44                   	inc    %esp
c020bcc5:	00 0b                	add    %cl,(%ebx)
c020bcc7:	00 11                	add    %dl,(%ecx)
c020bcc9:	20 10                	and    %dl,(%eax)
c020bccb:	c0 00 00             	rolb   $0x0,(%eax)
c020bcce:	00 00                	add    %al,(%eax)
c020bcd0:	44                   	inc    %esp
c020bcd1:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020bcd4:	13 20                	adc    (%eax),%esp
c020bcd6:	10 c0                	adc    %al,%al
c020bcd8:	00 00                	add    %al,(%eax)
c020bcda:	00 00                	add    %al,(%eax)
c020bcdc:	44                   	inc    %esp
c020bcdd:	00 0d 00 15 20 10    	add    %cl,0x10201500
c020bce3:	c0 00 00             	rolb   $0x0,(%eax)
c020bce6:	00 00                	add    %al,(%eax)
c020bce8:	44                   	inc    %esp
c020bce9:	00 10                	add    %dl,(%eax)
c020bceb:	00 1c 20             	add    %bl,(%eax,%eiz,1)
c020bcee:	10 c0                	adc    %al,%al
c020bcf0:	00 00                	add    %al,(%eax)
c020bcf2:	00 00                	add    %al,(%eax)
c020bcf4:	64 00 00             	add    %al,%fs:(%eax)
	...
c020bcff:	00 64 00 01          	add    %ah,0x1(%eax,%eax,1)
c020bd03:	00 00                	add    %al,(%eax)
c020bd05:	00 00                	add    %al,(%eax)
c020bd07:	00 0d 00 00 00 64    	add    %cl,0x64000000
c020bd0d:	00 00                	add    %al,(%eax)
c020bd0f:	00 20                	add    %ah,(%eax)
c020bd11:	20 10                	and    %dl,(%eax)
c020bd13:	c0 00 00             	rolb   $0x0,(%eax)
c020bd16:	00 00                	add    %al,(%eax)
c020bd18:	44                   	inc    %esp
c020bd19:	00 22                	add    %ah,(%edx)
c020bd1b:	00 20                	add    %ah,(%eax)
c020bd1d:	20 10                	and    %dl,(%eax)
c020bd1f:	c0 00 00             	rolb   $0x0,(%eax)
c020bd22:	00 00                	add    %al,(%eax)
c020bd24:	44                   	inc    %esp
c020bd25:	00 23                	add    %ah,(%ebx)
c020bd27:	00 2a                	add    %ch,(%edx)
c020bd29:	20 10                	and    %dl,(%eax)
c020bd2b:	c0 00 00             	rolb   $0x0,(%eax)
c020bd2e:	00 00                	add    %al,(%eax)
c020bd30:	44                   	inc    %esp
c020bd31:	00 24 00             	add    %ah,(%eax,%eax,1)
c020bd34:	34 20                	xor    $0x20,%al
c020bd36:	10 c0                	adc    %al,%al
c020bd38:	00 00                	add    %al,(%eax)
c020bd3a:	00 00                	add    %al,(%eax)
c020bd3c:	44                   	inc    %esp
c020bd3d:	00 25 00 3e 20 10    	add    %ah,0x10203e00
c020bd43:	c0 00 00             	rolb   $0x0,(%eax)
c020bd46:	00 00                	add    %al,(%eax)
c020bd48:	44                   	inc    %esp
c020bd49:	00 26                	add    %ah,(%esi)
c020bd4b:	00 48 20             	add    %cl,0x20(%eax)
c020bd4e:	10 c0                	adc    %al,%al
c020bd50:	00 00                	add    %al,(%eax)
c020bd52:	00 00                	add    %al,(%eax)
c020bd54:	44                   	inc    %esp
c020bd55:	00 27                	add    %ah,(%edi)
c020bd57:	00 52 20             	add    %dl,0x20(%edx)
c020bd5a:	10 c0                	adc    %al,%al
c020bd5c:	00 00                	add    %al,(%eax)
c020bd5e:	00 00                	add    %al,(%eax)
c020bd60:	44                   	inc    %esp
c020bd61:	00 28                	add    %ch,(%eax)
c020bd63:	00 5c 20 10          	add    %bl,0x10(%eax,%eiz,1)
c020bd67:	c0 00 00             	rolb   $0x0,(%eax)
c020bd6a:	00 00                	add    %al,(%eax)
c020bd6c:	44                   	inc    %esp
c020bd6d:	00 29                	add    %ch,(%ecx)
c020bd6f:	00 66 20             	add    %ah,0x20(%esi)
c020bd72:	10 c0                	adc    %al,%al
c020bd74:	00 00                	add    %al,(%eax)
c020bd76:	00 00                	add    %al,(%eax)
c020bd78:	44                   	inc    %esp
c020bd79:	00 2a                	add    %ch,(%edx)
c020bd7b:	00 70 20             	add    %dh,0x20(%eax)
c020bd7e:	10 c0                	adc    %al,%al
c020bd80:	00 00                	add    %al,(%eax)
c020bd82:	00 00                	add    %al,(%eax)
c020bd84:	44                   	inc    %esp
c020bd85:	00 2b                	add    %ch,(%ebx)
c020bd87:	00 78 20             	add    %bh,0x20(%eax)
c020bd8a:	10 c0                	adc    %al,%al
c020bd8c:	00 00                	add    %al,(%eax)
c020bd8e:	00 00                	add    %al,(%eax)
c020bd90:	44                   	inc    %esp
c020bd91:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020bd94:	82                   	(bad)  
c020bd95:	20 10                	and    %dl,(%eax)
c020bd97:	c0 00 00             	rolb   $0x0,(%eax)
c020bd9a:	00 00                	add    %al,(%eax)
c020bd9c:	44                   	inc    %esp
c020bd9d:	00 2d 00 8a 20 10    	add    %ch,0x10208a00
c020bda3:	c0 00 00             	rolb   $0x0,(%eax)
c020bda6:	00 00                	add    %al,(%eax)
c020bda8:	44                   	inc    %esp
c020bda9:	00 2e                	add    %ch,(%esi)
c020bdab:	00 92 20 10 c0 00    	add    %dl,0xc01020(%edx)
c020bdb1:	00 00                	add    %al,(%eax)
c020bdb3:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c020bdb7:	00 9a 20 10 c0 00    	add    %bl,0xc01020(%edx)
c020bdbd:	00 00                	add    %al,(%eax)
c020bdbf:	00 44 00 30          	add    %al,0x30(%eax,%eax,1)
c020bdc3:	00 a2 20 10 c0 00    	add    %ah,0xc01020(%edx)
c020bdc9:	00 00                	add    %al,(%eax)
c020bdcb:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020bdcf:	00 a7 20 10 c0 00    	add    %ah,0xc01020(%edi)
c020bdd5:	00 00                	add    %al,(%eax)
c020bdd7:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
c020bddb:	00 ae 20 10 c0 00    	add    %ch,0xc01020(%esi)
c020bde1:	00 00                	add    %al,(%eax)
c020bde3:	00 44 00 33          	add    %al,0x33(%eax,%eax,1)
c020bde7:	00 b5 20 10 c0 00    	add    %dh,0xc01020(%ebp)
c020bded:	00 00                	add    %al,(%eax)
c020bdef:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c020bdf3:	00 ba 20 10 c0 00    	add    %bh,0xc01020(%edx)
c020bdf9:	00 00                	add    %al,(%eax)
c020bdfb:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c020bdff:	00 c1                	add    %al,%cl
c020be01:	20 10                	and    %dl,(%eax)
c020be03:	c0 00 00             	rolb   $0x0,(%eax)
c020be06:	00 00                	add    %al,(%eax)
c020be08:	44                   	inc    %esp
c020be09:	00 38                	add    %bh,(%eax)
c020be0b:	00 c8                	add    %cl,%al
c020be0d:	20 10                	and    %dl,(%eax)
c020be0f:	c0 00 00             	rolb   $0x0,(%eax)
c020be12:	00 00                	add    %al,(%eax)
c020be14:	44                   	inc    %esp
c020be15:	00 39                	add    %bh,(%ecx)
c020be17:	00 cf                	add    %cl,%bh
c020be19:	20 10                	and    %dl,(%eax)
c020be1b:	c0 00 00             	rolb   $0x0,(%eax)
c020be1e:	00 00                	add    %al,(%eax)
c020be20:	44                   	inc    %esp
c020be21:	00 3a                	add    %bh,(%edx)
c020be23:	00 d6                	add    %dl,%dh
c020be25:	20 10                	and    %dl,(%eax)
c020be27:	c0 00 00             	rolb   $0x0,(%eax)
c020be2a:	00 00                	add    %al,(%eax)
c020be2c:	44                   	inc    %esp
c020be2d:	00 3b                	add    %bh,(%ebx)
c020be2f:	00 dd                	add    %bl,%ch
c020be31:	20 10                	and    %dl,(%eax)
c020be33:	c0 00 00             	rolb   $0x0,(%eax)
c020be36:	00 00                	add    %al,(%eax)
c020be38:	44                   	inc    %esp
c020be39:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020be3c:	e4 20                	in     $0x20,%al
c020be3e:	10 c0                	adc    %al,%al
c020be40:	00 00                	add    %al,(%eax)
c020be42:	00 00                	add    %al,(%eax)
c020be44:	44                   	inc    %esp
c020be45:	00 3d 00 eb 20 10    	add    %bh,0x1020eb00
c020be4b:	c0 00 00             	rolb   $0x0,(%eax)
c020be4e:	00 00                	add    %al,(%eax)
c020be50:	44                   	inc    %esp
c020be51:	00 3e                	add    %bh,(%esi)
c020be53:	00 f2                	add    %dh,%dl
c020be55:	20 10                	and    %dl,(%eax)
c020be57:	c0 00 00             	rolb   $0x0,(%eax)
c020be5a:	00 00                	add    %al,(%eax)
c020be5c:	44                   	inc    %esp
c020be5d:	00 3f                	add    %bh,(%edi)
c020be5f:	00 f9                	add    %bh,%cl
c020be61:	20 10                	and    %dl,(%eax)
c020be63:	c0 00 00             	rolb   $0x0,(%eax)
c020be66:	00 00                	add    %al,(%eax)
c020be68:	44                   	inc    %esp
c020be69:	00 40 00             	add    %al,0x0(%eax)
c020be6c:	00 21                	add    %ah,(%ecx)
c020be6e:	10 c0                	adc    %al,%al
c020be70:	00 00                	add    %al,(%eax)
c020be72:	00 00                	add    %al,(%eax)
c020be74:	44                   	inc    %esp
c020be75:	00 41 00             	add    %al,0x0(%ecx)
c020be78:	07                   	pop    %es
c020be79:	21 10                	and    %edx,(%eax)
c020be7b:	c0 00 00             	rolb   $0x0,(%eax)
c020be7e:	00 00                	add    %al,(%eax)
c020be80:	44                   	inc    %esp
c020be81:	00 42 00             	add    %al,0x0(%edx)
c020be84:	0e                   	push   %cs
c020be85:	21 10                	and    %edx,(%eax)
c020be87:	c0 00 00             	rolb   $0x0,(%eax)
c020be8a:	00 00                	add    %al,(%eax)
c020be8c:	44                   	inc    %esp
c020be8d:	00 43 00             	add    %al,0x0(%ebx)
c020be90:	15 21 10 c0 00       	adc    $0xc01021,%eax
c020be95:	00 00                	add    %al,(%eax)
c020be97:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020be9b:	00 1c 21             	add    %bl,(%ecx,%eiz,1)
c020be9e:	10 c0                	adc    %al,%al
c020bea0:	00 00                	add    %al,(%eax)
c020bea2:	00 00                	add    %al,(%eax)
c020bea4:	44                   	inc    %esp
c020bea5:	00 4d 00             	add    %cl,0x0(%ebp)
c020bea8:	26 21 10             	and    %edx,%es:(%eax)
c020beab:	c0 00 00             	rolb   $0x0,(%eax)
c020beae:	00 00                	add    %al,(%eax)
c020beb0:	44                   	inc    %esp
c020beb1:	00 4f 00             	add    %cl,0x0(%edi)
c020beb4:	27                   	daa    
c020beb5:	21 10                	and    %edx,(%eax)
c020beb7:	c0 00 00             	rolb   $0x0,(%eax)
c020beba:	00 00                	add    %al,(%eax)
c020bebc:	44                   	inc    %esp
c020bebd:	00 50 00             	add    %dl,0x0(%eax)
c020bec0:	2a 21                	sub    (%ecx),%ah
c020bec2:	10 c0                	adc    %al,%al
c020bec4:	00 00                	add    %al,(%eax)
c020bec6:	00 00                	add    %al,(%eax)
c020bec8:	44                   	inc    %esp
c020bec9:	00 52 00             	add    %dl,0x0(%edx)
c020becc:	2b 21                	sub    (%ecx),%esp
c020bece:	10 c0                	adc    %al,%al
c020bed0:	00 00                	add    %al,(%eax)
c020bed2:	00 00                	add    %al,(%eax)
c020bed4:	44                   	inc    %esp
c020bed5:	00 53 00             	add    %dl,0x0(%ebx)
c020bed8:	2f                   	das    
c020bed9:	21 10                	and    %edx,(%eax)
c020bedb:	c0 00 00             	rolb   $0x0,(%eax)
c020bede:	00 00                	add    %al,(%eax)
c020bee0:	44                   	inc    %esp
c020bee1:	00 54 00 31          	add    %dl,0x31(%eax,%eax,1)
c020bee5:	21 10                	and    %edx,(%eax)
c020bee7:	c0 00 00             	rolb   $0x0,(%eax)
c020beea:	00 00                	add    %al,(%eax)
c020beec:	44                   	inc    %esp
c020beed:	00 55 00             	add    %dl,0x0(%ebp)
c020bef0:	33 21                	xor    (%ecx),%esp
c020bef2:	10 c0                	adc    %al,%al
c020bef4:	00 00                	add    %al,(%eax)
c020bef6:	00 00                	add    %al,(%eax)
c020bef8:	44                   	inc    %esp
c020bef9:	00 56 00             	add    %dl,0x0(%esi)
c020befc:	35 21 10 c0 00       	xor    $0xc01021,%eax
c020bf01:	00 00                	add    %al,(%eax)
c020bf03:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c020bf07:	00 37                	add    %dh,(%edi)
c020bf09:	21 10                	and    %edx,(%eax)
c020bf0b:	c0 00 00             	rolb   $0x0,(%eax)
c020bf0e:	00 00                	add    %al,(%eax)
c020bf10:	44                   	inc    %esp
c020bf11:	00 59 00             	add    %bl,0x0(%ecx)
c020bf14:	39 21                	cmp    %esp,(%ecx)
c020bf16:	10 c0                	adc    %al,%al
c020bf18:	00 00                	add    %al,(%eax)
c020bf1a:	00 00                	add    %al,(%eax)
c020bf1c:	44                   	inc    %esp
c020bf1d:	00 5a 00             	add    %bl,0x0(%edx)
c020bf20:	3a 21                	cmp    (%ecx),%ah
c020bf22:	10 c0                	adc    %al,%al
c020bf24:	00 00                	add    %al,(%eax)
c020bf26:	00 00                	add    %al,(%eax)
c020bf28:	44                   	inc    %esp
c020bf29:	00 5b 00             	add    %bl,0x0(%ebx)
c020bf2c:	3f                   	aas    
c020bf2d:	21 10                	and    %edx,(%eax)
c020bf2f:	c0 00 00             	rolb   $0x0,(%eax)
c020bf32:	00 00                	add    %al,(%eax)
c020bf34:	44                   	inc    %esp
c020bf35:	00 5d 00             	add    %bl,0x0(%ebp)
c020bf38:	42                   	inc    %edx
c020bf39:	21 10                	and    %edx,(%eax)
c020bf3b:	c0 00 00             	rolb   $0x0,(%eax)
c020bf3e:	00 00                	add    %al,(%eax)
c020bf40:	44                   	inc    %esp
c020bf41:	00 5e 00             	add    %bl,0x0(%esi)
c020bf44:	43                   	inc    %ebx
c020bf45:	21 10                	and    %edx,(%eax)
c020bf47:	c0 00 00             	rolb   $0x0,(%eax)
c020bf4a:	00 00                	add    %al,(%eax)
c020bf4c:	44                   	inc    %esp
c020bf4d:	00 5f 00             	add    %bl,0x0(%edi)
c020bf50:	45                   	inc    %ebp
c020bf51:	21 10                	and    %edx,(%eax)
c020bf53:	c0 00 00             	rolb   $0x0,(%eax)
c020bf56:	00 00                	add    %al,(%eax)
c020bf58:	44                   	inc    %esp
c020bf59:	00 60 00             	add    %ah,0x0(%eax)
c020bf5c:	47                   	inc    %edi
c020bf5d:	21 10                	and    %edx,(%eax)
c020bf5f:	c0 00 00             	rolb   $0x0,(%eax)
c020bf62:	00 00                	add    %al,(%eax)
c020bf64:	44                   	inc    %esp
c020bf65:	00 61 00             	add    %ah,0x0(%ecx)
c020bf68:	49                   	dec    %ecx
c020bf69:	21 10                	and    %edx,(%eax)
c020bf6b:	c0 00 00             	rolb   $0x0,(%eax)
c020bf6e:	00 00                	add    %al,(%eax)
c020bf70:	44                   	inc    %esp
c020bf71:	00 62 00             	add    %ah,0x0(%edx)
c020bf74:	4b                   	dec    %ebx
c020bf75:	21 10                	and    %edx,(%eax)
c020bf77:	c0 00 00             	rolb   $0x0,(%eax)
c020bf7a:	00 00                	add    %al,(%eax)
c020bf7c:	44                   	inc    %esp
c020bf7d:	00 64 00 4d          	add    %ah,0x4d(%eax,%eax,1)
c020bf81:	21 10                	and    %edx,(%eax)
c020bf83:	c0 00 00             	rolb   $0x0,(%eax)
c020bf86:	00 00                	add    %al,(%eax)
c020bf88:	44                   	inc    %esp
c020bf89:	00 65 00             	add    %ah,0x0(%ebp)
c020bf8c:	4e                   	dec    %esi
c020bf8d:	21 10                	and    %edx,(%eax)
c020bf8f:	c0 00 00             	rolb   $0x0,(%eax)
c020bf92:	00 00                	add    %al,(%eax)
c020bf94:	44                   	inc    %esp
c020bf95:	00 66 00             	add    %ah,0x0(%esi)
c020bf98:	51                   	push   %ecx
c020bf99:	21 10                	and    %edx,(%eax)
c020bf9b:	c0 00 00             	rolb   $0x0,(%eax)
c020bf9e:	00 00                	add    %al,(%eax)
c020bfa0:	44                   	inc    %esp
c020bfa1:	00 6d 00             	add    %ch,0x0(%ebp)
c020bfa4:	52                   	push   %edx
c020bfa5:	21 10                	and    %edx,(%eax)
c020bfa7:	c0 00 00             	rolb   $0x0,(%eax)
c020bfaa:	00 00                	add    %al,(%eax)
c020bfac:	44                   	inc    %esp
c020bfad:	00 6e 00             	add    %ch,0x0(%esi)
c020bfb0:	56                   	push   %esi
c020bfb1:	21 10                	and    %edx,(%eax)
c020bfb3:	c0 00 00             	rolb   $0x0,(%eax)
c020bfb6:	00 00                	add    %al,(%eax)
c020bfb8:	44                   	inc    %esp
c020bfb9:	00 6f 00             	add    %ch,0x0(%edi)
c020bfbc:	59                   	pop    %ecx
c020bfbd:	21 10                	and    %edx,(%eax)
c020bfbf:	c0 00 00             	rolb   $0x0,(%eax)
c020bfc2:	00 00                	add    %al,(%eax)
c020bfc4:	44                   	inc    %esp
c020bfc5:	00 7c 00 5a          	add    %bh,0x5a(%eax,%eax,1)
c020bfc9:	21 10                	and    %edx,(%eax)
c020bfcb:	c0 00 00             	rolb   $0x0,(%eax)
c020bfce:	00 00                	add    %al,(%eax)
c020bfd0:	44                   	inc    %esp
c020bfd1:	00 7d 00             	add    %bh,0x0(%ebp)
c020bfd4:	61                   	popa   
c020bfd5:	21 10                	and    %edx,(%eax)
c020bfd7:	c0 00 00             	rolb   $0x0,(%eax)
c020bfda:	00 00                	add    %al,(%eax)
c020bfdc:	44                   	inc    %esp
c020bfdd:	00 7e 00             	add    %bh,0x0(%esi)
c020bfe0:	68 21 10 c0 00       	push   $0xc01021
c020bfe5:	00 00                	add    %al,(%eax)
c020bfe7:	00 44 00 7f          	add    %al,0x7f(%eax,%eax,1)
c020bfeb:	00 6f 21             	add    %ch,0x21(%edi)
c020bfee:	10 c0                	adc    %al,%al
c020bff0:	00 00                	add    %al,(%eax)
c020bff2:	00 00                	add    %al,(%eax)
c020bff4:	44                   	inc    %esp
c020bff5:	00 80 00 76 21 10    	add    %al,0x10217600(%eax)
c020bffb:	c0 00 00             	rolb   $0x0,(%eax)
c020bffe:	00 00                	add    %al,(%eax)
c020c000:	44                   	inc    %esp
c020c001:	00 81 00 7d 21 10    	add    %al,0x10217d00(%ecx)
c020c007:	c0 00 00             	rolb   $0x0,(%eax)
c020c00a:	00 00                	add    %al,(%eax)
c020c00c:	44                   	inc    %esp
c020c00d:	00 82 00 84 21 10    	add    %al,0x10218400(%edx)
c020c013:	c0 00 00             	rolb   $0x0,(%eax)
c020c016:	00 00                	add    %al,(%eax)
c020c018:	44                   	inc    %esp
c020c019:	00 83 00 8b 21 10    	add    %al,0x10218b00(%ebx)
c020c01f:	c0 00 00             	rolb   $0x0,(%eax)
c020c022:	00 00                	add    %al,(%eax)
c020c024:	44                   	inc    %esp
c020c025:	00 84 00 92 21 10 c0 	add    %al,-0x3fefde6e(%eax,%eax,1)
c020c02c:	00 00                	add    %al,(%eax)
c020c02e:	00 00                	add    %al,(%eax)
c020c030:	44                   	inc    %esp
c020c031:	00 85 00 99 21 10    	add    %al,0x10219900(%ebp)
c020c037:	c0 00 00             	rolb   $0x0,(%eax)
c020c03a:	00 00                	add    %al,(%eax)
c020c03c:	44                   	inc    %esp
c020c03d:	00 86 00 a0 21 10    	add    %al,0x1021a000(%esi)
c020c043:	c0 00 00             	rolb   $0x0,(%eax)
c020c046:	00 00                	add    %al,(%eax)
c020c048:	44                   	inc    %esp
c020c049:	00 87 00 a7 21 10    	add    %al,0x1021a700(%edi)
c020c04f:	c0 00 00             	rolb   $0x0,(%eax)
c020c052:	00 00                	add    %al,(%eax)
c020c054:	44                   	inc    %esp
c020c055:	00 88 00 ae 21 10    	add    %cl,0x1021ae00(%eax)
c020c05b:	c0 00 00             	rolb   $0x0,(%eax)
c020c05e:	00 00                	add    %al,(%eax)
c020c060:	44                   	inc    %esp
c020c061:	00 89 00 b5 21 10    	add    %cl,0x1021b500(%ecx)
c020c067:	c0 00 00             	rolb   $0x0,(%eax)
c020c06a:	00 00                	add    %al,(%eax)
c020c06c:	44                   	inc    %esp
c020c06d:	00 8a 00 bc 21 10    	add    %cl,0x1021bc00(%edx)
c020c073:	c0 00 00             	rolb   $0x0,(%eax)
c020c076:	00 00                	add    %al,(%eax)
c020c078:	44                   	inc    %esp
c020c079:	00 8b 00 c3 21 10    	add    %cl,0x1021c300(%ebx)
c020c07f:	c0 00 00             	rolb   $0x0,(%eax)
c020c082:	00 00                	add    %al,(%eax)
c020c084:	44                   	inc    %esp
c020c085:	00 90 00 ca 21 10    	add    %dl,0x1021ca00(%eax)
c020c08b:	c0 00 00             	rolb   $0x0,(%eax)
c020c08e:	00 00                	add    %al,(%eax)
c020c090:	44                   	inc    %esp
c020c091:	00 92 00 cb 21 10    	add    %dl,0x1021cb00(%edx)
c020c097:	c0 00 00             	rolb   $0x0,(%eax)
c020c09a:	00 00                	add    %al,(%eax)
c020c09c:	44                   	inc    %esp
c020c09d:	00 93 00 ce 21 10    	add    %dl,0x1021ce00(%ebx)
c020c0a3:	c0 00 00             	rolb   $0x0,(%eax)
c020c0a6:	00 00                	add    %al,(%eax)
c020c0a8:	44                   	inc    %esp
c020c0a9:	00 95 00 cf 21 10    	add    %dl,0x1021cf00(%ebp)
c020c0af:	c0 00 00             	rolb   $0x0,(%eax)
c020c0b2:	00 00                	add    %al,(%eax)
c020c0b4:	44                   	inc    %esp
c020c0b5:	00 96 00 d3 21 10    	add    %dl,0x1021d300(%esi)
c020c0bb:	c0 00 00             	rolb   $0x0,(%eax)
c020c0be:	00 00                	add    %al,(%eax)
c020c0c0:	44                   	inc    %esp
c020c0c1:	00 97 00 d5 21 10    	add    %dl,0x1021d500(%edi)
c020c0c7:	c0 00 00             	rolb   $0x0,(%eax)
c020c0ca:	00 00                	add    %al,(%eax)
c020c0cc:	44                   	inc    %esp
c020c0cd:	00 98 00 d7 21 10    	add    %bl,0x1021d700(%eax)
c020c0d3:	c0 00 00             	rolb   $0x0,(%eax)
c020c0d6:	00 00                	add    %al,(%eax)
c020c0d8:	44                   	inc    %esp
c020c0d9:	00 99 00 d9 21 10    	add    %bl,0x1021d900(%ecx)
c020c0df:	c0 00 00             	rolb   $0x0,(%eax)
c020c0e2:	00 00                	add    %al,(%eax)
c020c0e4:	44                   	inc    %esp
c020c0e5:	00 9a 00 db 21 10    	add    %bl,0x1021db00(%edx)
c020c0eb:	c0 00 00             	rolb   $0x0,(%eax)
c020c0ee:	00 00                	add    %al,(%eax)
c020c0f0:	44                   	inc    %esp
c020c0f1:	00 9c 00 dd 21 10 c0 	add    %bl,-0x3fefde23(%eax,%eax,1)
c020c0f8:	00 00                	add    %al,(%eax)
c020c0fa:	00 00                	add    %al,(%eax)
c020c0fc:	44                   	inc    %esp
c020c0fd:	00 9d 00 de 21 10    	add    %bl,0x1021de00(%ebp)
c020c103:	c0 00 00             	rolb   $0x0,(%eax)
c020c106:	00 00                	add    %al,(%eax)
c020c108:	44                   	inc    %esp
c020c109:	00 9e 00 e3 21 10    	add    %bl,0x1021e300(%esi)
c020c10f:	c0 00 00             	rolb   $0x0,(%eax)
c020c112:	00 00                	add    %al,(%eax)
c020c114:	44                   	inc    %esp
c020c115:	00 a0 00 e6 21 10    	add    %ah,0x1021e600(%eax)
c020c11b:	c0 00 00             	rolb   $0x0,(%eax)
c020c11e:	00 00                	add    %al,(%eax)
c020c120:	44                   	inc    %esp
c020c121:	00 a1 00 e7 21 10    	add    %ah,0x1021e700(%ecx)
c020c127:	c0 00 00             	rolb   $0x0,(%eax)
c020c12a:	00 00                	add    %al,(%eax)
c020c12c:	44                   	inc    %esp
c020c12d:	00 a2 00 e9 21 10    	add    %ah,0x1021e900(%edx)
c020c133:	c0 00 00             	rolb   $0x0,(%eax)
c020c136:	00 00                	add    %al,(%eax)
c020c138:	44                   	inc    %esp
c020c139:	00 a3 00 eb 21 10    	add    %ah,0x1021eb00(%ebx)
c020c13f:	c0 00 00             	rolb   $0x0,(%eax)
c020c142:	00 00                	add    %al,(%eax)
c020c144:	44                   	inc    %esp
c020c145:	00 a4 00 ed 21 10 c0 	add    %ah,-0x3fefde13(%eax,%eax,1)
c020c14c:	00 00                	add    %al,(%eax)
c020c14e:	00 00                	add    %al,(%eax)
c020c150:	44                   	inc    %esp
c020c151:	00 a5 00 ef 21 10    	add    %ah,0x1021ef00(%ebp)
c020c157:	c0 00 00             	rolb   $0x0,(%eax)
c020c15a:	00 00                	add    %al,(%eax)
c020c15c:	44                   	inc    %esp
c020c15d:	00 a7 00 f1 21 10    	add    %ah,0x1021f100(%edi)
c020c163:	c0 00 00             	rolb   $0x0,(%eax)
c020c166:	00 00                	add    %al,(%eax)
c020c168:	44                   	inc    %esp
c020c169:	00 a8 00 f2 21 10    	add    %ch,0x1021f200(%eax)
c020c16f:	c0 00 00             	rolb   $0x0,(%eax)
c020c172:	00 00                	add    %al,(%eax)
c020c174:	44                   	inc    %esp
c020c175:	00 a9 00 f5 21 10    	add    %ch,0x1021f500(%ecx)
c020c17b:	c0 00 00             	rolb   $0x0,(%eax)
c020c17e:	00 00                	add    %al,(%eax)
c020c180:	64 00 00             	add    %al,%fs:(%eax)
c020c183:	00 00                	add    %al,(%eax)
c020c185:	00 00                	add    %al,(%eax)
c020c187:	00 19                	add    %bl,(%ecx)
c020c189:	00 00                	add    %al,(%eax)
c020c18b:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c020c18f:	00 f8                	add    %bh,%al
c020c191:	21 10                	and    %edx,(%eax)
c020c193:	c0 41 00 00          	rolb   $0x0,0x0(%ecx)
c020c197:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c020c19b:	00 f8                	add    %bh,%al
c020c19d:	21 10                	and    %edx,(%eax)
c020c19f:	c0 4e 00 00          	rorb   $0x0,0x0(%esi)
c020c1a3:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020c1a6:	00 00                	add    %al,(%eax)
c020c1a8:	00 00                	add    %al,(%eax)
c020c1aa:	00 00                	add    %al,(%eax)
c020c1ac:	5d                   	pop    %ebp
c020c1ad:	00 00                	add    %al,(%eax)
c020c1af:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c1b5:	00 00                	add    %al,(%eax)
c020c1b7:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020c1bd:	00 00                	add    %al,(%eax)
c020c1bf:	00 00                	add    %al,(%eax)
c020c1c1:	00 00                	add    %al,(%eax)
c020c1c3:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020c1c9:	00 00                	add    %al,(%eax)
c020c1cb:	00 00                	add    %al,(%eax)
c020c1cd:	00 00                	add    %al,(%eax)
c020c1cf:	00 d0                	add    %dl,%al
c020c1d1:	00 00                	add    %al,(%eax)
c020c1d3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c1d9:	00 00                	add    %al,(%eax)
c020c1db:	00 fb                	add    %bh,%bl
c020c1dd:	00 00                	add    %al,(%eax)
c020c1df:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c1e5:	00 00                	add    %al,(%eax)
c020c1e7:	00 2b                	add    %ch,(%ebx)
c020c1e9:	01 00                	add    %eax,(%eax)
c020c1eb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c1f1:	00 00                	add    %al,(%eax)
c020c1f3:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020c1f7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c1fd:	00 00                	add    %al,(%eax)
c020c1ff:	00 c1                	add    %al,%cl
c020c201:	01 00                	add    %eax,(%eax)
c020c203:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c209:	00 00                	add    %al,(%eax)
c020c20b:	00 ec                	add    %ch,%ah
c020c20d:	01 00                	add    %eax,(%eax)
c020c20f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c215:	00 00                	add    %al,(%eax)
c020c217:	00 1b                	add    %bl,(%ebx)
c020c219:	02 00                	add    (%eax),%al
c020c21b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c221:	00 00                	add    %al,(%eax)
c020c223:	00 45 02             	add    %al,0x2(%ebp)
c020c226:	00 00                	add    %al,(%eax)
c020c228:	80 00 00             	addb   $0x0,(%eax)
c020c22b:	00 00                	add    %al,(%eax)
c020c22d:	00 00                	add    %al,(%eax)
c020c22f:	00 6e 02             	add    %ch,0x2(%esi)
c020c232:	00 00                	add    %al,(%eax)
c020c234:	80 00 00             	addb   $0x0,(%eax)
c020c237:	00 00                	add    %al,(%eax)
c020c239:	00 00                	add    %al,(%eax)
c020c23b:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020c241:	00 00                	add    %al,(%eax)
c020c243:	00 00                	add    %al,(%eax)
c020c245:	00 00                	add    %al,(%eax)
c020c247:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020c24d:	00 00                	add    %al,(%eax)
c020c24f:	00 00                	add    %al,(%eax)
c020c251:	00 00                	add    %al,(%eax)
c020c253:	00 c4                	add    %al,%ah
c020c255:	02 00                	add    (%eax),%al
c020c257:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c25d:	00 00                	add    %al,(%eax)
c020c25f:	00 e3                	add    %ah,%bl
c020c261:	02 00                	add    (%eax),%al
c020c263:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c269:	00 00                	add    %al,(%eax)
c020c26b:	00 02                	add    %al,(%edx)
c020c26d:	03 00                	add    (%eax),%eax
c020c26f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c275:	00 00                	add    %al,(%eax)
c020c277:	00 23                	add    %ah,(%ebx)
c020c279:	03 00                	add    (%eax),%eax
c020c27b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c281:	00 00                	add    %al,(%eax)
c020c283:	00 37                	add    %dh,(%edi)
c020c285:	03 00                	add    (%eax),%eax
c020c287:	00 82 00 00 00 00    	add    %al,0x0(%edx)
c020c28d:	00 00                	add    %al,(%eax)
c020c28f:	00 47 03             	add    %al,0x3(%edi)
c020c292:	00 00                	add    %al,(%eax)
c020c294:	82                   	(bad)  
c020c295:	00 00                	add    %al,(%eax)
c020c297:	00 26                	add    %ah,(%esi)
c020c299:	19 00                	sbb    %eax,(%eax)
c020c29b:	00 57 03             	add    %dl,0x3(%edi)
c020c29e:	00 00                	add    %al,(%eax)
c020c2a0:	80 00 1f             	addb   $0x1f,(%eax)
c020c2a3:	00 00                	add    %al,(%eax)
c020c2a5:	00 00                	add    %al,(%eax)
c020c2a7:	00 6b 03             	add    %ch,0x3(%ebx)
c020c2aa:	00 00                	add    %al,(%eax)
c020c2ac:	80 00 20             	addb   $0x20,(%eax)
c020c2af:	00 00                	add    %al,(%eax)
c020c2b1:	00 00                	add    %al,(%eax)
c020c2b3:	00 7e 03             	add    %bh,0x3(%esi)
c020c2b6:	00 00                	add    %al,(%eax)
c020c2b8:	80 00 21             	addb   $0x21,(%eax)
c020c2bb:	00 00                	add    %al,(%eax)
c020c2bd:	00 00                	add    %al,(%eax)
c020c2bf:	00 92 03 00 00 80    	add    %dl,-0x7ffffffd(%edx)
c020c2c5:	00 22                	add    %ah,(%edx)
c020c2c7:	00 00                	add    %al,(%eax)
c020c2c9:	00 00                	add    %al,(%eax)
c020c2cb:	00 a5 03 00 00 80    	add    %ah,-0x7ffffffd(%ebp)
c020c2d1:	00 23                	add    %ah,(%ebx)
c020c2d3:	00 00                	add    %al,(%eax)
c020c2d5:	00 00                	add    %al,(%eax)
c020c2d7:	00 b9 03 00 00 80    	add    %bh,-0x7ffffffd(%ecx)
c020c2dd:	00 24 00             	add    %ah,(%eax,%eax,1)
	...
c020c2e8:	a2 00 00 00 00       	mov    %al,0x0
c020c2ed:	00 00                	add    %al,(%eax)
c020c2ef:	00 cb                	add    %cl,%bl
c020c2f1:	03 00                	add    (%eax),%eax
c020c2f3:	00 82 00 00 00 f5    	add    %al,-0xb000000(%edx)
c020c2f9:	5f                   	pop    %edi
c020c2fa:	00 00                	add    %al,(%eax)
c020c2fc:	e4 03                	in     $0x3,%al
c020c2fe:	00 00                	add    %al,(%eax)
c020c300:	80 00 00             	addb   $0x0,(%eax)
c020c303:	00 00                	add    %al,(%eax)
c020c305:	00 00                	add    %al,(%eax)
c020c307:	00 e4                	add    %ah,%ah
c020c309:	04 00                	add    $0x0,%al
c020c30b:	00 80 00 2e 00 00    	add    %al,0x2e00(%eax)
c020c311:	00 00                	add    %al,(%eax)
c020c313:	00 00                	add    %al,(%eax)
c020c315:	00 00                	add    %al,(%eax)
c020c317:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020c31d:	00 00                	add    %al,(%eax)
c020c31f:	00 00                	add    %al,(%eax)
c020c321:	00 00                	add    %al,(%eax)
c020c323:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020c329:	00 00                	add    %al,(%eax)
c020c32b:	00 f7                	add    %dh,%bh
c020c32d:	04 00                	add    $0x0,%al
c020c32f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c332:	22 00                	and    (%eax),%al
c020c334:	f8                   	clc    
c020c335:	21 10                	and    %edx,(%eax)
c020c337:	c0 06 05             	rolb   $0x5,(%esi)
c020c33a:	00 00                	add    %al,(%eax)
c020c33c:	a0 00 22 00 08       	mov    0x8002200,%al
c020c341:	00 00                	add    %al,(%eax)
c020c343:	00 00                	add    %al,(%eax)
c020c345:	00 00                	add    %al,(%eax)
c020c347:	00 2e                	add    %ch,(%esi)
c020c349:	00 00                	add    %al,(%eax)
c020c34b:	00 f8                	add    %bh,%al
c020c34d:	21 10                	and    %edx,(%eax)
c020c34f:	c0 00 00             	rolb   $0x0,(%eax)
c020c352:	00 00                	add    %al,(%eax)
c020c354:	44                   	inc    %esp
c020c355:	00 23                	add    %ah,(%ebx)
	...
c020c35f:	00 44 00 24          	add    %al,0x24(%eax,%eax,1)
c020c363:	00 06                	add    %al,(%esi)
c020c365:	00 00                	add    %al,(%eax)
c020c367:	00 00                	add    %al,(%eax)
c020c369:	00 00                	add    %al,(%eax)
c020c36b:	00 44 00 25          	add    %al,0x25(%eax,%eax,1)
c020c36f:	00 21                	add    %ah,(%ecx)
c020c371:	00 00                	add    %al,(%eax)
c020c373:	00 00                	add    %al,(%eax)
c020c375:	00 00                	add    %al,(%eax)
c020c377:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c37a:	00 00                	add    %al,(%eax)
c020c37c:	23 00                	and    (%eax),%eax
c020c37e:	00 00                	add    %al,(%eax)
c020c380:	00 00                	add    %al,(%eax)
c020c382:	00 00                	add    %al,(%eax)
c020c384:	4e                   	dec    %esi
c020c385:	00 00                	add    %al,(%eax)
c020c387:	00 1b                	add    %bl,(%ebx)
c020c389:	22 10                	and    (%eax),%dl
c020c38b:	c0 17 05             	rclb   $0x5,(%edi)
c020c38e:	00 00                	add    %al,(%eax)
c020c390:	24 00                	and    $0x0,%al
c020c392:	28 00                	sub    %al,(%eax)
c020c394:	1b 22                	sbb    (%edx),%esp
c020c396:	10 c0                	adc    %al,%al
c020c398:	29 05 00 00 a0 00    	sub    %eax,0xa00000
c020c39e:	28 00                	sub    %al,(%eax)
c020c3a0:	08 00                	or     %al,(%eax)
c020c3a2:	00 00                	add    %al,(%eax)
c020c3a4:	00 00                	add    %al,(%eax)
c020c3a6:	00 00                	add    %al,(%eax)
c020c3a8:	2e 00 00             	add    %al,%cs:(%eax)
c020c3ab:	00 1b                	add    %bl,(%ebx)
c020c3ad:	22 10                	and    (%eax),%dl
c020c3af:	c0 00 00             	rolb   $0x0,(%eax)
c020c3b2:	00 00                	add    %al,(%eax)
c020c3b4:	44                   	inc    %esp
c020c3b5:	00 29                	add    %ch,(%ecx)
	...
c020c3bf:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c020c3c3:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020c3c6:	00 00                	add    %al,(%eax)
c020c3c8:	00 00                	add    %al,(%eax)
c020c3ca:	00 00                	add    %al,(%eax)
c020c3cc:	44                   	inc    %esp
c020c3cd:	00 2d 00 28 00 00    	add    %ch,0x2800
c020c3d3:	00 34 05 00 00 80 00 	add    %dh,0x800000(,%eax,1)
c020c3da:	28 00                	sub    %al,(%eax)
c020c3dc:	f4                   	hlt    
c020c3dd:	ff                   	(bad)  
c020c3de:	ff                   	(bad)  
c020c3df:	ff 00                	incl   (%eax)
c020c3e1:	00 00                	add    %al,(%eax)
c020c3e3:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c3e6:	00 00                	add    %al,(%eax)
c020c3e8:	2a 00                	sub    (%eax),%al
c020c3ea:	00 00                	add    %al,(%eax)
c020c3ec:	00 00                	add    %al,(%eax)
c020c3ee:	00 00                	add    %al,(%eax)
c020c3f0:	4e                   	dec    %esi
c020c3f1:	00 00                	add    %al,(%eax)
c020c3f3:	00 45 22             	add    %al,0x22(%ebp)
c020c3f6:	10 c0                	adc    %al,%al
c020c3f8:	3e                   	ds
c020c3f9:	05 00 00 24 00       	add    $0x240000,%eax
c020c3fe:	2f                   	das    
c020c3ff:	00 45 22             	add    %al,0x22(%ebp)
c020c402:	10 c0                	adc    %al,%al
c020c404:	4d                   	dec    %ebp
c020c405:	05 00 00 a0 00       	add    $0xa00000,%eax
c020c40a:	2f                   	das    
c020c40b:	00 08                	add    %cl,(%eax)
c020c40d:	00 00                	add    %al,(%eax)
c020c40f:	00 00                	add    %al,(%eax)
c020c411:	00 00                	add    %al,(%eax)
c020c413:	00 2e                	add    %ch,(%esi)
c020c415:	00 00                	add    %al,(%eax)
c020c417:	00 45 22             	add    %al,0x22(%ebp)
c020c41a:	10 c0                	adc    %al,%al
c020c41c:	00 00                	add    %al,(%eax)
c020c41e:	00 00                	add    %al,(%eax)
c020c420:	44                   	inc    %esp
c020c421:	00 30                	add    %dh,(%eax)
	...
c020c42b:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c020c42f:	00 06                	add    %al,(%esi)
c020c431:	00 00                	add    %al,(%eax)
c020c433:	00 00                	add    %al,(%eax)
c020c435:	00 00                	add    %al,(%eax)
c020c437:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c020c43b:	00 0d 00 00 00 00    	add    %cl,0x0
c020c441:	00 00                	add    %al,(%eax)
c020c443:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c020c447:	00 13                	add    %dl,(%ebx)
c020c449:	00 00                	add    %al,(%eax)
c020c44b:	00 00                	add    %al,(%eax)
c020c44d:	00 00                	add    %al,(%eax)
c020c44f:	00 44 00 39          	add    %al,0x39(%eax,%eax,1)
c020c453:	00 19                	add    %bl,(%ecx)
c020c455:	00 00                	add    %al,(%eax)
c020c457:	00 00                	add    %al,(%eax)
c020c459:	00 00                	add    %al,(%eax)
c020c45b:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c020c45f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c020c462:	00 00                	add    %al,(%eax)
c020c464:	00 00                	add    %al,(%eax)
c020c466:	00 00                	add    %al,(%eax)
c020c468:	44                   	inc    %esp
c020c469:	00 3e                	add    %bh,(%esi)
c020c46b:	00 52 00             	add    %dl,0x0(%edx)
c020c46e:	00 00                	add    %al,(%eax)
c020c470:	00 00                	add    %al,(%eax)
c020c472:	00 00                	add    %al,(%eax)
c020c474:	44                   	inc    %esp
c020c475:	00 41 00             	add    %al,0x0(%ecx)
c020c478:	75 00                	jne    c020c47a <interrupt_handlers+0xc1a>
c020c47a:	00 00                	add    %al,(%eax)
c020c47c:	00 00                	add    %al,(%eax)
c020c47e:	00 00                	add    %al,(%eax)
c020c480:	44                   	inc    %esp
c020c481:	00 42 00             	add    %al,0x0(%edx)
c020c484:	7b 00                	jnp    c020c486 <interrupt_handlers+0xc26>
c020c486:	00 00                	add    %al,(%eax)
c020c488:	00 00                	add    %al,(%eax)
c020c48a:	00 00                	add    %al,(%eax)
c020c48c:	44                   	inc    %esp
c020c48d:	00 45 00             	add    %al,0x0(%ebp)
c020c490:	8a 00                	mov    (%eax),%al
c020c492:	00 00                	add    %al,(%eax)
c020c494:	00 00                	add    %al,(%eax)
c020c496:	00 00                	add    %al,(%eax)
c020c498:	44                   	inc    %esp
c020c499:	00 46 00             	add    %al,0x0(%esi)
c020c49c:	8e 00                	mov    (%eax),%es
c020c49e:	00 00                	add    %al,(%eax)
c020c4a0:	00 00                	add    %al,(%eax)
c020c4a2:	00 00                	add    %al,(%eax)
c020c4a4:	44                   	inc    %esp
c020c4a5:	00 47 00             	add    %al,0x0(%edi)
c020c4a8:	90                   	nop
c020c4a9:	00 00                	add    %al,(%eax)
c020c4ab:	00 00                	add    %al,(%eax)
c020c4ad:	00 00                	add    %al,(%eax)
c020c4af:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020c4b3:	00 b6 00 00 00 00    	add    %dh,0x0(%esi)
c020c4b9:	00 00                	add    %al,(%eax)
c020c4bb:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020c4bf:	00 ba 00 00 00 00    	add    %bh,0x0(%edx)
c020c4c5:	00 00                	add    %al,(%eax)
c020c4c7:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
c020c4cb:	00 c0                	add    %al,%al
c020c4cd:	00 00                	add    %al,(%eax)
c020c4cf:	00 5b 05             	add    %bl,0x5(%ebx)
c020c4d2:	00 00                	add    %al,(%eax)
c020c4d4:	80 00 31             	addb   $0x31,(%eax)
c020c4d7:	00 d0                	add    %dl,%al
c020c4d9:	ff                   	(bad)  
c020c4da:	ff                   	(bad)  
c020c4db:	ff 90 05 00 00 80    	call   *-0x7ffffffb(%eax)
c020c4e1:	00 32                	add    %dh,(%edx)
c020c4e3:	00 f0                	add    %dh,%al
c020c4e5:	ff                   	(bad)  
c020c4e6:	ff                   	(bad)  
c020c4e7:	ff 9b 05 00 00 80    	lcall  *-0x7ffffffb(%ebx)
c020c4ed:	00 33                	add    %dh,(%ebx)
c020c4ef:	00 f4                	add    %dh,%ah
c020c4f1:	ff                   	(bad)  
c020c4f2:	ff                   	(bad)  
c020c4f3:	ff 00                	incl   (%eax)
c020c4f5:	00 00                	add    %al,(%eax)
c020c4f7:	00 c0                	add    %al,%al
	...
c020c501:	00 00                	add    %al,(%eax)
c020c503:	00 e0                	add    %ah,%al
c020c505:	00 00                	add    %al,(%eax)
c020c507:	00 c2                	add    %al,%dl
c020c509:	00 00                	add    %al,(%eax)
c020c50b:	00 00                	add    %al,(%eax)
c020c50d:	00 00                	add    %al,(%eax)
c020c50f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c512:	00 00                	add    %al,(%eax)
c020c514:	c2 00 00             	ret    $0x0
c020c517:	00 00                	add    %al,(%eax)
c020c519:	00 00                	add    %al,(%eax)
c020c51b:	00 4e 00             	add    %cl,0x0(%esi)
c020c51e:	00 00                	add    %al,(%eax)
c020c520:	07                   	pop    %es
c020c521:	23 10                	and    (%eax),%edx
c020c523:	c0 a3 05 00 00 24 00 	shlb   $0x0,0x24000005(%ebx)
c020c52a:	4b                   	dec    %ebx
c020c52b:	00 07                	add    %al,(%edi)
c020c52d:	23 10                	and    (%eax),%edx
c020c52f:	c0 4d 05 00          	rorb   $0x0,0x5(%ebp)
c020c533:	00 a0 00 4b 00 08    	add    %ah,0x8004b00(%eax)
c020c539:	00 00                	add    %al,(%eax)
c020c53b:	00 00                	add    %al,(%eax)
c020c53d:	00 00                	add    %al,(%eax)
c020c53f:	00 2e                	add    %ch,(%esi)
c020c541:	00 00                	add    %al,(%eax)
c020c543:	00 07                	add    %al,(%edi)
c020c545:	23 10                	and    (%eax),%edx
c020c547:	c0 00 00             	rolb   $0x0,(%eax)
c020c54a:	00 00                	add    %al,(%eax)
c020c54c:	44                   	inc    %esp
c020c54d:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c020c551:	00 00                	add    %al,(%eax)
c020c553:	00 00                	add    %al,(%eax)
c020c555:	00 00                	add    %al,(%eax)
c020c557:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c020c55b:	00 09                	add    %cl,(%ecx)
c020c55d:	00 00                	add    %al,(%eax)
c020c55f:	00 00                	add    %al,(%eax)
c020c561:	00 00                	add    %al,(%eax)
c020c563:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c020c567:	00 49 00             	add    %cl,0x0(%ecx)
c020c56a:	00 00                	add    %al,(%eax)
c020c56c:	00 00                	add    %al,(%eax)
c020c56e:	00 00                	add    %al,(%eax)
c020c570:	44                   	inc    %esp
c020c571:	00 52 00             	add    %dl,0x0(%edx)
c020c574:	50                   	push   %eax
c020c575:	00 00                	add    %al,(%eax)
c020c577:	00 00                	add    %al,(%eax)
c020c579:	00 00                	add    %al,(%eax)
c020c57b:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c020c57f:	00 56 00             	add    %dl,0x0(%esi)
c020c582:	00 00                	add    %al,(%eax)
c020c584:	00 00                	add    %al,(%eax)
c020c586:	00 00                	add    %al,(%eax)
c020c588:	44                   	inc    %esp
c020c589:	00 56 00             	add    %dl,0x0(%esi)
c020c58c:	59                   	pop    %ecx
c020c58d:	00 00                	add    %al,(%eax)
c020c58f:	00 00                	add    %al,(%eax)
c020c591:	00 00                	add    %al,(%eax)
c020c593:	00 44 00 58          	add    %al,0x58(%eax,%eax,1)
c020c597:	00 5b 00             	add    %bl,0x0(%ebx)
c020c59a:	00 00                	add    %al,(%eax)
c020c59c:	00 00                	add    %al,(%eax)
c020c59e:	00 00                	add    %al,(%eax)
c020c5a0:	44                   	inc    %esp
c020c5a1:	00 59 00             	add    %bl,0x0(%ecx)
c020c5a4:	7d 00                	jge    c020c5a6 <interrupt_handlers+0xd46>
c020c5a6:	00 00                	add    %al,(%eax)
c020c5a8:	00 00                	add    %al,(%eax)
c020c5aa:	00 00                	add    %al,(%eax)
c020c5ac:	44                   	inc    %esp
c020c5ad:	00 56 00             	add    %dl,0x0(%esi)
c020c5b0:	8e 00                	mov    (%eax),%es
c020c5b2:	00 00                	add    %al,(%eax)
c020c5b4:	00 00                	add    %al,(%eax)
c020c5b6:	00 00                	add    %al,(%eax)
c020c5b8:	44                   	inc    %esp
c020c5b9:	00 5c 00 94          	add    %bl,-0x6c(%eax,%eax,1)
c020c5bd:	00 00                	add    %al,(%eax)
c020c5bf:	00 00                	add    %al,(%eax)
c020c5c1:	00 00                	add    %al,(%eax)
c020c5c3:	00 44 00 5d          	add    %al,0x5d(%eax,%eax,1)
c020c5c7:	00 9a 00 00 00 00    	add    %bl,0x0(%edx)
c020c5cd:	00 00                	add    %al,(%eax)
c020c5cf:	00 44 00 5c          	add    %al,0x5c(%eax,%eax,1)
c020c5d3:	00 c4                	add    %al,%ah
c020c5d5:	00 00                	add    %al,(%eax)
c020c5d7:	00 00                	add    %al,(%eax)
c020c5d9:	00 00                	add    %al,(%eax)
c020c5db:	00 44 00 5c          	add    %al,0x5c(%eax,%eax,1)
c020c5df:	00 c8                	add    %cl,%al
c020c5e1:	00 00                	add    %al,(%eax)
c020c5e3:	00 00                	add    %al,(%eax)
c020c5e5:	00 00                	add    %al,(%eax)
c020c5e7:	00 44 00 5f          	add    %al,0x5f(%eax,%eax,1)
c020c5eb:	00 ce                	add    %cl,%dh
c020c5ed:	00 00                	add    %al,(%eax)
c020c5ef:	00 b2 05 00 00 80    	add    %dh,-0x7ffffffb(%edx)
c020c5f5:	00 4d 00             	add    %cl,0x0(%ebp)
c020c5f8:	e4 ff                	in     $0xff,%al
c020c5fa:	ff                   	(bad)  
c020c5fb:	ff d1                	call   *%ecx
c020c5fd:	05 00 00 80 00       	add    $0x800000,%eax
c020c602:	4f                   	dec    %edi
c020c603:	00 64 ff ff          	add    %ah,-0x1(%edi,%edi,8)
c020c607:	ff 9b 05 00 00 80    	lcall  *-0x7ffffffb(%ebx)
c020c60d:	00 50 00             	add    %dl,0x0(%eax)
c020c610:	f4                   	hlt    
c020c611:	ff                   	(bad)  
c020c612:	ff                   	(bad)  
c020c613:	ff 00                	incl   (%eax)
c020c615:	00 00                	add    %al,(%eax)
c020c617:	00 c0                	add    %al,%al
	...
c020c621:	00 00                	add    %al,(%eax)
c020c623:	00 e0                	add    %ah,%al
c020c625:	00 00                	add    %al,(%eax)
c020c627:	00 d0                	add    %dl,%al
c020c629:	00 00                	add    %al,(%eax)
c020c62b:	00 00                	add    %al,(%eax)
c020c62d:	00 00                	add    %al,(%eax)
c020c62f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c632:	00 00                	add    %al,(%eax)
c020c634:	d0 00                	rolb   (%eax)
c020c636:	00 00                	add    %al,(%eax)
c020c638:	00 00                	add    %al,(%eax)
c020c63a:	00 00                	add    %al,(%eax)
c020c63c:	4e                   	dec    %esi
c020c63d:	00 00                	add    %al,(%eax)
c020c63f:	00 d7                	add    %dl,%bh
c020c641:	23 10                	and    (%eax),%edx
c020c643:	c0 ee 05             	shr    $0x5,%dh
c020c646:	00 00                	add    %al,(%eax)
c020c648:	24 00                	and    $0x0,%al
c020c64a:	61                   	popa   
c020c64b:	00 d7                	add    %dl,%bh
c020c64d:	23 10                	and    (%eax),%edx
c020c64f:	c0 fc 05             	sar    $0x5,%ah
c020c652:	00 00                	add    %al,(%eax)
c020c654:	a0 00 61 00 08       	mov    0x8006100,%al
c020c659:	00 00                	add    %al,(%eax)
c020c65b:	00 00                	add    %al,(%eax)
c020c65d:	00 00                	add    %al,(%eax)
c020c65f:	00 2e                	add    %ch,(%esi)
c020c661:	00 00                	add    %al,(%eax)
c020c663:	00 d7                	add    %dl,%bh
c020c665:	23 10                	and    (%eax),%edx
c020c667:	c0 00 00             	rolb   $0x0,(%eax)
c020c66a:	00 00                	add    %al,(%eax)
c020c66c:	44                   	inc    %esp
c020c66d:	00 62 00             	add    %ah,0x0(%edx)
	...
c020c678:	44                   	inc    %esp
c020c679:	00 66 00             	add    %ah,0x0(%esi)
c020c67c:	06                   	push   %es
c020c67d:	00 00                	add    %al,(%eax)
c020c67f:	00 00                	add    %al,(%eax)
c020c681:	00 00                	add    %al,(%eax)
c020c683:	00 44 00 68          	add    %al,0x68(%eax,%eax,1)
c020c687:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020c68a:	00 00                	add    %al,(%eax)
c020c68c:	00 00                	add    %al,(%eax)
c020c68e:	00 00                	add    %al,(%eax)
c020c690:	44                   	inc    %esp
c020c691:	00 6a 00             	add    %ch,0x0(%edx)
c020c694:	21 00                	and    %eax,(%eax)
c020c696:	00 00                	add    %al,(%eax)
c020c698:	00 00                	add    %al,(%eax)
c020c69a:	00 00                	add    %al,(%eax)
c020c69c:	44                   	inc    %esp
c020c69d:	00 6c 00 28          	add    %ch,0x28(%eax,%eax,1)
c020c6a1:	00 00                	add    %al,(%eax)
c020c6a3:	00 00                	add    %al,(%eax)
c020c6a5:	00 00                	add    %al,(%eax)
c020c6a7:	00 44 00 6d          	add    %al,0x6d(%eax,%eax,1)
c020c6ab:	00 2b                	add    %ch,(%ebx)
c020c6ad:	00 00                	add    %al,(%eax)
c020c6af:	00 1a                	add    %bl,(%edx)
c020c6b1:	06                   	push   %es
c020c6b2:	00 00                	add    %al,(%eax)
c020c6b4:	80 00 63             	addb   $0x63,(%eax)
c020c6b7:	00 f0                	add    %dh,%al
c020c6b9:	ff                   	(bad)  
c020c6ba:	ff                   	(bad)  
c020c6bb:	ff 27                	jmp    *(%edi)
c020c6bd:	06                   	push   %es
c020c6be:	00 00                	add    %al,(%eax)
c020c6c0:	80 00 64             	addb   $0x64,(%eax)
c020c6c3:	00 f4                	add    %dh,%ah
c020c6c5:	ff                   	(bad)  
c020c6c6:	ff                   	(bad)  
c020c6c7:	ff 00                	incl   (%eax)
c020c6c9:	00 00                	add    %al,(%eax)
c020c6cb:	00 c0                	add    %al,%al
	...
c020c6d5:	00 00                	add    %al,(%eax)
c020c6d7:	00 e0                	add    %ah,%al
c020c6d9:	00 00                	add    %al,(%eax)
c020c6db:	00 2d 00 00 00 00    	add    %ch,0x0
c020c6e1:	00 00                	add    %al,(%eax)
c020c6e3:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c6e6:	00 00                	add    %al,(%eax)
c020c6e8:	2d 00 00 00 00       	sub    $0x0,%eax
c020c6ed:	00 00                	add    %al,(%eax)
c020c6ef:	00 4e 00             	add    %cl,0x0(%esi)
c020c6f2:	00 00                	add    %al,(%eax)
c020c6f4:	04 24                	add    $0x24,%al
c020c6f6:	10 c0                	adc    %al,%al
c020c6f8:	32 06                	xor    (%esi),%al
c020c6fa:	00 00                	add    %al,(%eax)
c020c6fc:	24 00                	and    $0x0,%al
c020c6fe:	6f                   	outsl  %ds:(%esi),(%dx)
c020c6ff:	00 04 24             	add    %al,(%esp)
c020c702:	10 c0                	adc    %al,%al
c020c704:	41                   	inc    %ecx
c020c705:	06                   	push   %es
c020c706:	00 00                	add    %al,(%eax)
c020c708:	a0 00 6f 00 08       	mov    0x8006f00,%al
c020c70d:	00 00                	add    %al,(%eax)
c020c70f:	00 50 06             	add    %dl,0x6(%eax)
c020c712:	00 00                	add    %al,(%eax)
c020c714:	a0 00 6f 00 0c       	mov    0xc006f00,%al
c020c719:	00 00                	add    %al,(%eax)
c020c71b:	00 00                	add    %al,(%eax)
c020c71d:	00 00                	add    %al,(%eax)
c020c71f:	00 2e                	add    %ch,(%esi)
c020c721:	00 00                	add    %al,(%eax)
c020c723:	00 04 24             	add    %al,(%esp)
c020c726:	10 c0                	adc    %al,%al
c020c728:	00 00                	add    %al,(%eax)
c020c72a:	00 00                	add    %al,(%eax)
c020c72c:	44                   	inc    %esp
c020c72d:	00 70 00             	add    %dh,0x0(%eax)
	...
c020c738:	44                   	inc    %esp
c020c739:	00 73 00             	add    %dh,0x0(%ebx)
c020c73c:	06                   	push   %es
c020c73d:	00 00                	add    %al,(%eax)
c020c73f:	00 00                	add    %al,(%eax)
c020c741:	00 00                	add    %al,(%eax)
c020c743:	00 44 00 74          	add    %al,0x74(%eax,%eax,1)
c020c747:	00 0d 00 00 00 00    	add    %cl,0x0
c020c74d:	00 00                	add    %al,(%eax)
c020c74f:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c020c753:	00 12                	add    %dl,(%edx)
c020c755:	00 00                	add    %al,(%eax)
c020c757:	00 00                	add    %al,(%eax)
c020c759:	00 00                	add    %al,(%eax)
c020c75b:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c020c75f:	00 20                	add    %ah,(%eax)
c020c761:	00 00                	add    %al,(%eax)
c020c763:	00 00                	add    %al,(%eax)
c020c765:	00 00                	add    %al,(%eax)
c020c767:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c020c76b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c76e:	00 00                	add    %al,(%eax)
c020c770:	00 00                	add    %al,(%eax)
c020c772:	00 00                	add    %al,(%eax)
c020c774:	44                   	inc    %esp
c020c775:	00 78 00             	add    %bh,0x0(%eax)
c020c778:	2e 00 00             	add    %al,%cs:(%eax)
c020c77b:	00 00                	add    %al,(%eax)
c020c77d:	00 00                	add    %al,(%eax)
c020c77f:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
c020c783:	00 45 00             	add    %al,0x0(%ebp)
c020c786:	00 00                	add    %al,(%eax)
c020c788:	00 00                	add    %al,(%eax)
c020c78a:	00 00                	add    %al,(%eax)
c020c78c:	44                   	inc    %esp
c020c78d:	00 7a 00             	add    %bh,0x0(%edx)
c020c790:	4e                   	dec    %esi
c020c791:	00 00                	add    %al,(%eax)
c020c793:	00 00                	add    %al,(%eax)
c020c795:	00 00                	add    %al,(%eax)
c020c797:	00 44 00 7b          	add    %al,0x7b(%eax,%eax,1)
c020c79b:	00 58 00             	add    %bl,0x0(%eax)
c020c79e:	00 00                	add    %al,(%eax)
c020c7a0:	00 00                	add    %al,(%eax)
c020c7a2:	00 00                	add    %al,(%eax)
c020c7a4:	44                   	inc    %esp
c020c7a5:	00 7c 00 6c          	add    %bh,0x6c(%eax,%eax,1)
c020c7a9:	00 00                	add    %al,(%eax)
c020c7ab:	00 00                	add    %al,(%eax)
c020c7ad:	00 00                	add    %al,(%eax)
c020c7af:	00 44 00 7d          	add    %al,0x7d(%eax,%eax,1)
c020c7b3:	00 72 00             	add    %dh,0x0(%edx)
c020c7b6:	00 00                	add    %al,(%eax)
c020c7b8:	00 00                	add    %al,(%eax)
c020c7ba:	00 00                	add    %al,(%eax)
c020c7bc:	44                   	inc    %esp
c020c7bd:	00 7e 00             	add    %bh,0x0(%esi)
c020c7c0:	7c 00                	jl     c020c7c2 <interrupt_handlers+0xf62>
c020c7c2:	00 00                	add    %al,(%eax)
c020c7c4:	00 00                	add    %al,(%eax)
c020c7c6:	00 00                	add    %al,(%eax)
c020c7c8:	44                   	inc    %esp
c020c7c9:	00 7f 00             	add    %bh,0x0(%edi)
c020c7cc:	90                   	nop
c020c7cd:	00 00                	add    %al,(%eax)
c020c7cf:	00 00                	add    %al,(%eax)
c020c7d1:	00 00                	add    %al,(%eax)
c020c7d3:	00 44 00 80          	add    %al,-0x80(%eax,%eax,1)
c020c7d7:	00 96 00 00 00 00    	add    %dl,0x0(%esi)
c020c7dd:	00 00                	add    %al,(%eax)
c020c7df:	00 44 00 81          	add    %al,-0x7f(%eax,%eax,1)
c020c7e3:	00 a0 00 00 00 00    	add    %ah,0x0(%eax)
c020c7e9:	00 00                	add    %al,(%eax)
c020c7eb:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c020c7ef:	00 b4 00 00 00 00 00 	add    %dh,0x0(%eax,%eax,1)
c020c7f6:	00 00                	add    %al,(%eax)
c020c7f8:	44                   	inc    %esp
c020c7f9:	00 84 00 ba 00 00 00 	add    %al,0xba(%eax,%eax,1)
c020c800:	00 00                	add    %al,(%eax)
c020c802:	00 00                	add    %al,(%eax)
c020c804:	44                   	inc    %esp
c020c805:	00 85 00 cb 00 00    	add    %al,0xcb00(%ebp)
c020c80b:	00 00                	add    %al,(%eax)
c020c80d:	00 00                	add    %al,(%eax)
c020c80f:	00 44 00 8a          	add    %al,-0x76(%eax,%eax,1)
c020c813:	00 d1                	add    %dl,%cl
c020c815:	00 00                	add    %al,(%eax)
c020c817:	00 00                	add    %al,(%eax)
c020c819:	00 00                	add    %al,(%eax)
c020c81b:	00 44 00 8b          	add    %al,-0x75(%eax,%eax,1)
c020c81f:	00 e2                	add    %ah,%dl
c020c821:	00 00                	add    %al,(%eax)
c020c823:	00 00                	add    %al,(%eax)
c020c825:	00 00                	add    %al,(%eax)
c020c827:	00 44 00 74          	add    %al,0x74(%eax,%eax,1)
c020c82b:	00 e6                	add    %ah,%dh
c020c82d:	00 00                	add    %al,(%eax)
c020c82f:	00 00                	add    %al,(%eax)
c020c831:	00 00                	add    %al,(%eax)
c020c833:	00 44 00 74          	add    %al,0x74(%eax,%eax,1)
c020c837:	00 ea                	add    %ch,%dl
c020c839:	00 00                	add    %al,(%eax)
c020c83b:	00 00                	add    %al,(%eax)
c020c83d:	00 00                	add    %al,(%eax)
c020c83f:	00 44 00 90          	add    %al,-0x70(%eax,%eax,1)
c020c843:	00 f8                	add    %bh,%al
c020c845:	00 00                	add    %al,(%eax)
c020c847:	00 00                	add    %al,(%eax)
c020c849:	00 00                	add    %al,(%eax)
c020c84b:	00 44 00 92          	add    %al,-0x6e(%eax,%eax,1)
c020c84f:	00 fb                	add    %bh,%bl
c020c851:	00 00                	add    %al,(%eax)
c020c853:	00 5b 06             	add    %bl,0x6(%ebx)
c020c856:	00 00                	add    %al,(%eax)
c020c858:	80 00 71             	addb   $0x71,(%eax)
c020c85b:	00 f4                	add    %dh,%ah
c020c85d:	ff                   	(bad)  
c020c85e:	ff                   	(bad)  
c020c85f:	ff 00                	incl   (%eax)
c020c861:	00 00                	add    %al,(%eax)
c020c863:	00 c0                	add    %al,%al
	...
c020c86d:	00 00                	add    %al,(%eax)
c020c86f:	00 e0                	add    %ah,%al
c020c871:	00 00                	add    %al,(%eax)
c020c873:	00 fd                	add    %bh,%ch
c020c875:	00 00                	add    %al,(%eax)
c020c877:	00 00                	add    %al,(%eax)
c020c879:	00 00                	add    %al,(%eax)
c020c87b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020c87e:	00 00                	add    %al,(%eax)
c020c880:	fd                   	std    
c020c881:	00 00                	add    %al,(%eax)
c020c883:	00 00                	add    %al,(%eax)
c020c885:	00 00                	add    %al,(%eax)
c020c887:	00 4e 00             	add    %cl,0x0(%esi)
c020c88a:	00 00                	add    %al,(%eax)
c020c88c:	01 25 10 c0 00 00    	add    %esp,0xc010
c020c892:	00 00                	add    %al,(%eax)
c020c894:	64 00 00             	add    %al,%fs:(%eax)
c020c897:	00 01                	add    %al,(%ecx)
c020c899:	25 10 c0 19 00       	and    $0x19c010,%eax
c020c89e:	00 00                	add    %al,(%eax)
c020c8a0:	64 00 02             	add    %al,%fs:(%edx)
c020c8a3:	00 04 25 10 c0 64 06 	add    %al,0x664c010(,%eiz,1)
c020c8aa:	00 00                	add    %al,(%eax)
c020c8ac:	64 00 02             	add    %al,%fs:(%edx)
c020c8af:	00 04 25 10 c0 4e 00 	add    %al,0x4ec010(,%eiz,1)
c020c8b6:	00 00                	add    %al,(%eax)
c020c8b8:	3c 00                	cmp    $0x0,%al
c020c8ba:	00 00                	add    %al,(%eax)
c020c8bc:	00 00                	add    %al,(%eax)
c020c8be:	00 00                	add    %al,(%eax)
c020c8c0:	5d                   	pop    %ebp
c020c8c1:	00 00                	add    %al,(%eax)
c020c8c3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c8c9:	00 00                	add    %al,(%eax)
c020c8cb:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020c8d1:	00 00                	add    %al,(%eax)
c020c8d3:	00 00                	add    %al,(%eax)
c020c8d5:	00 00                	add    %al,(%eax)
c020c8d7:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020c8dd:	00 00                	add    %al,(%eax)
c020c8df:	00 00                	add    %al,(%eax)
c020c8e1:	00 00                	add    %al,(%eax)
c020c8e3:	00 d0                	add    %dl,%al
c020c8e5:	00 00                	add    %al,(%eax)
c020c8e7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c8ed:	00 00                	add    %al,(%eax)
c020c8ef:	00 fb                	add    %bh,%bl
c020c8f1:	00 00                	add    %al,(%eax)
c020c8f3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c8f9:	00 00                	add    %al,(%eax)
c020c8fb:	00 2b                	add    %ch,(%ebx)
c020c8fd:	01 00                	add    %eax,(%eax)
c020c8ff:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c905:	00 00                	add    %al,(%eax)
c020c907:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020c90b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c911:	00 00                	add    %al,(%eax)
c020c913:	00 c1                	add    %al,%cl
c020c915:	01 00                	add    %eax,(%eax)
c020c917:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c91d:	00 00                	add    %al,(%eax)
c020c91f:	00 ec                	add    %ch,%ah
c020c921:	01 00                	add    %eax,(%eax)
c020c923:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c929:	00 00                	add    %al,(%eax)
c020c92b:	00 1b                	add    %bl,(%ebx)
c020c92d:	02 00                	add    (%eax),%al
c020c92f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c935:	00 00                	add    %al,(%eax)
c020c937:	00 45 02             	add    %al,0x2(%ebp)
c020c93a:	00 00                	add    %al,(%eax)
c020c93c:	80 00 00             	addb   $0x0,(%eax)
c020c93f:	00 00                	add    %al,(%eax)
c020c941:	00 00                	add    %al,(%eax)
c020c943:	00 6e 02             	add    %ch,0x2(%esi)
c020c946:	00 00                	add    %al,(%eax)
c020c948:	80 00 00             	addb   $0x0,(%eax)
c020c94b:	00 00                	add    %al,(%eax)
c020c94d:	00 00                	add    %al,(%eax)
c020c94f:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020c955:	00 00                	add    %al,(%eax)
c020c957:	00 00                	add    %al,(%eax)
c020c959:	00 00                	add    %al,(%eax)
c020c95b:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020c961:	00 00                	add    %al,(%eax)
c020c963:	00 00                	add    %al,(%eax)
c020c965:	00 00                	add    %al,(%eax)
c020c967:	00 c4                	add    %al,%ah
c020c969:	02 00                	add    (%eax),%al
c020c96b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c971:	00 00                	add    %al,(%eax)
c020c973:	00 e3                	add    %ah,%bl
c020c975:	02 00                	add    (%eax),%al
c020c977:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c97d:	00 00                	add    %al,(%eax)
c020c97f:	00 02                	add    %al,(%edx)
c020c981:	03 00                	add    (%eax),%eax
c020c983:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c989:	00 00                	add    %al,(%eax)
c020c98b:	00 23                	add    %ah,(%ebx)
c020c98d:	03 00                	add    (%eax),%eax
c020c98f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020c995:	00 00                	add    %al,(%eax)
c020c997:	00 cb                	add    %cl,%bl
c020c999:	03 00                	add    (%eax),%eax
c020c99b:	00 c2                	add    %al,%dl
c020c99d:	00 00                	add    %al,(%eax)
c020c99f:	00 f5                	add    %dh,%ch
c020c9a1:	5f                   	pop    %edi
c020c9a2:	00 00                	add    %al,(%eax)
c020c9a4:	47                   	inc    %edi
c020c9a5:	03 00                	add    (%eax),%eax
c020c9a7:	00 c2                	add    %al,%dl
c020c9a9:	00 00                	add    %al,(%eax)
c020c9ab:	00 26                	add    %ah,(%esi)
c020c9ad:	19 00                	sbb    %eax,(%eax)
c020c9af:	00 7a 06             	add    %bh,0x6(%edx)
c020c9b2:	00 00                	add    %al,(%eax)
c020c9b4:	82                   	(bad)  
c020c9b5:	00 00                	add    %al,(%eax)
c020c9b7:	00 b9 08 00 00 88    	add    %bh,-0x77fffff8(%ecx)
c020c9bd:	06                   	push   %es
c020c9be:	00 00                	add    %al,(%eax)
c020c9c0:	82                   	(bad)  
c020c9c1:	00 00                	add    %al,(%eax)
c020c9c3:	00 89 91 00 00 96    	add    %cl,-0x69ffff6f(%ecx)
c020c9c9:	06                   	push   %es
c020c9ca:	00 00                	add    %al,(%eax)
c020c9cc:	80 00 00             	addb   $0x0,(%eax)
c020c9cf:	00 00                	add    %al,(%eax)
c020c9d1:	00 00                	add    %al,(%eax)
c020c9d3:	00 07                	add    %al,(%edi)
c020c9d5:	07                   	pop    %es
c020c9d6:	00 00                	add    %al,(%eax)
c020c9d8:	80 00 23             	addb   $0x23,(%eax)
c020c9db:	00 00                	add    %al,(%eax)
c020c9dd:	00 00                	add    %al,(%eax)
c020c9df:	00 20                	add    %ah,(%eax)
c020c9e1:	07                   	pop    %es
c020c9e2:	00 00                	add    %al,(%eax)
c020c9e4:	80 00 00             	addb   $0x0,(%eax)
c020c9e7:	00 00                	add    %al,(%eax)
c020c9e9:	00 00                	add    %al,(%eax)
c020c9eb:	00 57 07             	add    %dl,0x7(%edi)
c020c9ee:	00 00                	add    %al,(%eax)
c020c9f0:	80 00 29             	addb   $0x29,(%eax)
c020c9f3:	00 00                	add    %al,(%eax)
c020c9f5:	00 00                	add    %al,(%eax)
c020c9f7:	00 6e 07             	add    %ch,0x7(%esi)
c020c9fa:	00 00                	add    %al,(%eax)
c020c9fc:	80 00 00             	addb   $0x0,(%eax)
c020c9ff:	00 00                	add    %al,(%eax)
c020ca01:	00 00                	add    %al,(%eax)
c020ca03:	00 9b 08 00 00 80    	add    %bl,-0x7ffffff8(%ebx)
c020ca09:	00 40 00             	add    %al,0x0(%eax)
c020ca0c:	00 00                	add    %al,(%eax)
c020ca0e:	00 00                	add    %al,(%eax)
c020ca10:	b2 08                	mov    $0x8,%dl
c020ca12:	00 00                	add    %al,(%eax)
c020ca14:	80 00 43             	addb   $0x43,(%eax)
	...
c020ca1f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020ca25:	00 00                	add    %al,(%eax)
c020ca27:	00 e2                	add    %ah,%dl
c020ca29:	08 00                	or     %al,(%eax)
c020ca2b:	00 80 00 4c 00 00    	add    %al,0x4c00(%eax)
c020ca31:	00 00                	add    %al,(%eax)
c020ca33:	00 f5                	add    %dh,%ch
c020ca35:	08 00                	or     %al,(%eax)
c020ca37:	00 80 00 4d 00 00    	add    %al,0x4d00(%eax)
c020ca3d:	00 00                	add    %al,(%eax)
c020ca3f:	00 00                	add    %al,(%eax)
c020ca41:	00 00                	add    %al,(%eax)
c020ca43:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020ca49:	00 00                	add    %al,(%eax)
c020ca4b:	00 08                	add    %cl,(%eax)
c020ca4d:	09 00                	or     %eax,(%eax)
c020ca4f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ca52:	21 00                	and    %eax,(%eax)
c020ca54:	04 25                	add    $0x25,%al
c020ca56:	10 c0                	adc    %al,%al
c020ca58:	00 00                	add    %al,(%eax)
c020ca5a:	00 00                	add    %al,(%eax)
c020ca5c:	2e 00 00             	add    %al,%cs:(%eax)
c020ca5f:	00 04 25 10 c0 00 00 	add    %al,0xc010(,%eiz,1)
c020ca66:	00 00                	add    %al,(%eax)
c020ca68:	44                   	inc    %esp
c020ca69:	00 22                	add    %ah,(%edx)
	...
c020ca73:	00 44 00 23          	add    %al,0x23(%eax,%eax,1)
c020ca77:	00 06                	add    %al,(%esi)
c020ca79:	00 00                	add    %al,(%eax)
c020ca7b:	00 00                	add    %al,(%eax)
c020ca7d:	00 00                	add    %al,(%eax)
c020ca7f:	00 44 00 24          	add    %al,0x24(%eax,%eax,1)
c020ca83:	00 0a                	add    %cl,(%edx)
c020ca85:	00 00                	add    %al,(%eax)
c020ca87:	00 00                	add    %al,(%eax)
c020ca89:	00 00                	add    %al,(%eax)
c020ca8b:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020ca8f:	00 18                	add    %bl,(%eax)
c020ca91:	00 00                	add    %al,(%eax)
c020ca93:	00 00                	add    %al,(%eax)
c020ca95:	00 00                	add    %al,(%eax)
c020ca97:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c020ca9b:	00 25 00 00 00 00    	add    %ah,0x0
c020caa1:	00 00                	add    %al,(%eax)
c020caa3:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c020caa7:	00 2e                	add    %ch,(%esi)
c020caa9:	00 00                	add    %al,(%eax)
c020caab:	00 00                	add    %al,(%eax)
c020caad:	00 00                	add    %al,(%eax)
c020caaf:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c020cab3:	00 4f 00             	add    %cl,0x0(%edi)
c020cab6:	00 00                	add    %al,(%eax)
c020cab8:	00 00                	add    %al,(%eax)
c020caba:	00 00                	add    %al,(%eax)
c020cabc:	44                   	inc    %esp
c020cabd:	00 29                	add    %ch,(%ecx)
c020cabf:	00 53 00             	add    %dl,0x0(%ebx)
c020cac2:	00 00                	add    %al,(%eax)
c020cac4:	00 00                	add    %al,(%eax)
c020cac6:	00 00                	add    %al,(%eax)
c020cac8:	44                   	inc    %esp
c020cac9:	00 2e                	add    %ch,(%esi)
c020cacb:	00 5c 00 00          	add    %bl,0x0(%eax,%eax,1)
c020cacf:	00 00                	add    %al,(%eax)
c020cad1:	00 00                	add    %al,(%eax)
c020cad3:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c020cad7:	00 65 00             	add    %ah,0x0(%ebp)
c020cada:	00 00                	add    %al,(%eax)
c020cadc:	00 00                	add    %al,(%eax)
c020cade:	00 00                	add    %al,(%eax)
c020cae0:	44                   	inc    %esp
c020cae1:	00 2e                	add    %ch,(%esi)
c020cae3:	00 78 00             	add    %bh,0x0(%eax)
c020cae6:	00 00                	add    %al,(%eax)
c020cae8:	00 00                	add    %al,(%eax)
c020caea:	00 00                	add    %al,(%eax)
c020caec:	44                   	inc    %esp
c020caed:	00 2e                	add    %ch,(%esi)
c020caef:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
c020caf3:	00 00                	add    %al,(%eax)
c020caf5:	00 00                	add    %al,(%eax)
c020caf7:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
c020cafb:	00 85 00 00 00 00    	add    %al,0x0(%ebp)
c020cb01:	00 00                	add    %al,(%eax)
c020cb03:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c020cb07:	00 8e 00 00 00 18    	add    %cl,0x18000000(%esi)
c020cb0d:	09 00                	or     %eax,(%eax)
c020cb0f:	00 80 00 23 00 fb    	add    %al,-0x4ffdd00(%eax)
c020cb15:	ff                   	(bad)  
c020cb16:	ff                   	(bad)  
c020cb17:	ff 2d 09 00 00 80    	ljmp   *0x80000009
c020cb1d:	00 24 00             	add    %ah,(%eax,%eax,1)
c020cb20:	f8                   	clc    
c020cb21:	ff                   	(bad)  
c020cb22:	ff                   	(bad)  
c020cb23:	ff 00                	incl   (%eax)
c020cb25:	00 00                	add    %al,(%eax)
c020cb27:	00 c0                	add    %al,%al
c020cb29:	00 00                	add    %al,(%eax)
c020cb2b:	00 00                	add    %al,(%eax)
c020cb2d:	00 00                	add    %al,(%eax)
c020cb2f:	00 9b 05 00 00 80    	add    %bl,-0x7ffffffb(%ebx)
c020cb35:	00 27                	add    %ah,(%edi)
c020cb37:	00 fc                	add    %bh,%ah
c020cb39:	ff                   	(bad)  
c020cb3a:	ff                   	(bad)  
c020cb3b:	ff 00                	incl   (%eax)
c020cb3d:	00 00                	add    %al,(%eax)
c020cb3f:	00 c0                	add    %al,%al
c020cb41:	00 00                	add    %al,(%eax)
c020cb43:	00 25 00 00 00 00    	add    %ah,0x0
c020cb49:	00 00                	add    %al,(%eax)
c020cb4b:	00 e0                	add    %ah,%al
c020cb4d:	00 00                	add    %al,(%eax)
c020cb4f:	00 8e 00 00 00 00    	add    %cl,0x0(%esi)
c020cb55:	00 00                	add    %al,(%eax)
c020cb57:	00 e0                	add    %ah,%al
c020cb59:	00 00                	add    %al,(%eax)
c020cb5b:	00 90 00 00 00 00    	add    %dl,0x0(%eax)
c020cb61:	00 00                	add    %al,(%eax)
c020cb63:	00 24 00             	add    %ah,(%eax,%eax,1)
c020cb66:	00 00                	add    %al,(%eax)
c020cb68:	90                   	nop
c020cb69:	00 00                	add    %al,(%eax)
c020cb6b:	00 00                	add    %al,(%eax)
c020cb6d:	00 00                	add    %al,(%eax)
c020cb6f:	00 4e 00             	add    %cl,0x0(%esi)
c020cb72:	00 00                	add    %al,(%eax)
c020cb74:	94                   	xchg   %eax,%esp
c020cb75:	25 10 c0 39 09       	and    $0x939c010,%eax
c020cb7a:	00 00                	add    %al,(%eax)
c020cb7c:	24 00                	and    $0x0,%al
c020cb7e:	37                   	aaa    
c020cb7f:	00 94 25 10 c0 00 00 	add    %dl,0xc010(%ebp,%eiz,1)
c020cb86:	00 00                	add    %al,(%eax)
c020cb88:	2e 00 00             	add    %al,%cs:(%eax)
c020cb8b:	00 94 25 10 c0 00 00 	add    %dl,0xc010(%ebp,%eiz,1)
c020cb92:	00 00                	add    %al,(%eax)
c020cb94:	44                   	inc    %esp
c020cb95:	00 38                	add    %bh,(%eax)
	...
c020cb9f:	00 44 00 39          	add    %al,0x39(%eax,%eax,1)
c020cba3:	00 06                	add    %al,(%esi)
c020cba5:	00 00                	add    %al,(%eax)
c020cba7:	00 00                	add    %al,(%eax)
c020cba9:	00 00                	add    %al,(%eax)
c020cbab:	00 44 00 3b          	add    %al,0x3b(%eax,%eax,1)
c020cbaf:	00 28                	add    %ch,(%eax)
c020cbb1:	00 00                	add    %al,(%eax)
c020cbb3:	00 00                	add    %al,(%eax)
c020cbb5:	00 00                	add    %al,(%eax)
c020cbb7:	00 44 00 3c          	add    %al,0x3c(%eax,%eax,1)
c020cbbb:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020cbbe:	00 00                	add    %al,(%eax)
c020cbc0:	00 00                	add    %al,(%eax)
c020cbc2:	00 00                	add    %al,(%eax)
c020cbc4:	44                   	inc    %esp
c020cbc5:	00 3d 00 57 00 00    	add    %bh,0x5700
c020cbcb:	00 00                	add    %al,(%eax)
c020cbcd:	00 00                	add    %al,(%eax)
c020cbcf:	00 44 00 3e          	add    %al,0x3e(%eax,%eax,1)
c020cbd3:	00 6b 00             	add    %ch,0x0(%ebx)
c020cbd6:	00 00                	add    %al,(%eax)
c020cbd8:	00 00                	add    %al,(%eax)
c020cbda:	00 00                	add    %al,(%eax)
c020cbdc:	44                   	inc    %esp
c020cbdd:	00 3f                	add    %bh,(%edi)
c020cbdf:	00 82 00 00 00 4c    	add    %al,0x4c000000(%edx)
c020cbe5:	09 00                	or     %eax,(%eax)
c020cbe7:	00 80 00 39 00 f6    	add    %al,-0x9ffc700(%eax)
c020cbed:	ff                   	(bad)  
c020cbee:	ff                   	(bad)  
c020cbef:	ff 00                	incl   (%eax)
c020cbf1:	00 00                	add    %al,(%eax)
c020cbf3:	00 c0                	add    %al,%al
	...
c020cbfd:	00 00                	add    %al,(%eax)
c020cbff:	00 e0                	add    %ah,%al
c020cc01:	00 00                	add    %al,(%eax)
c020cc03:	00 84 00 00 00 00 00 	add    %al,0x0(%eax,%eax,1)
c020cc0a:	00 00                	add    %al,(%eax)
c020cc0c:	24 00                	and    $0x0,%al
c020cc0e:	00 00                	add    %al,(%eax)
c020cc10:	84 00                	test   %al,(%eax)
c020cc12:	00 00                	add    %al,(%eax)
c020cc14:	00 00                	add    %al,(%eax)
c020cc16:	00 00                	add    %al,(%eax)
c020cc18:	4e                   	dec    %esi
c020cc19:	00 00                	add    %al,(%eax)
c020cc1b:	00 18                	add    %bl,(%eax)
c020cc1d:	26                   	es
c020cc1e:	10 c0                	adc    %al,%al
c020cc20:	5a                   	pop    %edx
c020cc21:	09 00                	or     %eax,(%eax)
c020cc23:	00 24 00             	add    %ah,(%eax,%eax,1)
c020cc26:	43                   	inc    %ebx
c020cc27:	00 18                	add    %bl,(%eax)
c020cc29:	26                   	es
c020cc2a:	10 c0                	adc    %al,%al
c020cc2c:	00 00                	add    %al,(%eax)
c020cc2e:	00 00                	add    %al,(%eax)
c020cc30:	2e 00 00             	add    %al,%cs:(%eax)
c020cc33:	00 18                	add    %bl,(%eax)
c020cc35:	26                   	es
c020cc36:	10 c0                	adc    %al,%al
c020cc38:	00 00                	add    %al,(%eax)
c020cc3a:	00 00                	add    %al,(%eax)
c020cc3c:	44                   	inc    %esp
c020cc3d:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c020cc41:	00 00                	add    %al,(%eax)
c020cc43:	00 00                	add    %al,(%eax)
c020cc45:	00 00                	add    %al,(%eax)
c020cc47:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
c020cc4b:	00 06                	add    %al,(%esi)
c020cc4d:	00 00                	add    %al,(%eax)
c020cc4f:	00 00                	add    %al,(%eax)
c020cc51:	00 00                	add    %al,(%eax)
c020cc53:	00 44 00 4b          	add    %al,0x4b(%eax,%eax,1)
c020cc57:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020cc5a:	00 00                	add    %al,(%eax)
c020cc5c:	00 00                	add    %al,(%eax)
c020cc5e:	00 00                	add    %al,(%eax)
c020cc60:	44                   	inc    %esp
c020cc61:	00 4c 00 13          	add    %cl,0x13(%eax,%eax,1)
c020cc65:	00 00                	add    %al,(%eax)
c020cc67:	00 00                	add    %al,(%eax)
c020cc69:	00 00                	add    %al,(%eax)
c020cc6b:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c020cc6f:	00 1c 00             	add    %bl,(%eax,%eax,1)
c020cc72:	00 00                	add    %al,(%eax)
c020cc74:	00 00                	add    %al,(%eax)
c020cc76:	00 00                	add    %al,(%eax)
c020cc78:	44                   	inc    %esp
c020cc79:	00 4c 00 2f          	add    %cl,0x2f(%eax,%eax,1)
c020cc7d:	00 00                	add    %al,(%eax)
c020cc7f:	00 00                	add    %al,(%eax)
c020cc81:	00 00                	add    %al,(%eax)
c020cc83:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c020cc87:	00 33                	add    %dh,(%ebx)
c020cc89:	00 00                	add    %al,(%eax)
c020cc8b:	00 00                	add    %al,(%eax)
c020cc8d:	00 00                	add    %al,(%eax)
c020cc8f:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c020cc93:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020cc96:	00 00                	add    %al,(%eax)
c020cc98:	00 00                	add    %al,(%eax)
c020cc9a:	00 00                	add    %al,(%eax)
c020cc9c:	44                   	inc    %esp
c020cc9d:	00 51 00             	add    %dl,0x0(%ecx)
c020cca0:	45                   	inc    %ebp
c020cca1:	00 00                	add    %al,(%eax)
c020cca3:	00 00                	add    %al,(%eax)
c020cca5:	00 00                	add    %al,(%eax)
c020cca7:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c020ccab:	00 4e 00             	add    %cl,0x0(%esi)
c020ccae:	00 00                	add    %al,(%eax)
c020ccb0:	00 00                	add    %al,(%eax)
c020ccb2:	00 00                	add    %al,(%eax)
c020ccb4:	44                   	inc    %esp
c020ccb5:	00 54 00 53          	add    %dl,0x53(%eax,%eax,1)
c020ccb9:	00 00                	add    %al,(%eax)
c020ccbb:	00 6f 09             	add    %ch,0x9(%edi)
c020ccbe:	00 00                	add    %al,(%eax)
c020ccc0:	80 00 49             	addb   $0x49,(%eax)
c020ccc3:	00 f2                	add    %dh,%dl
c020ccc5:	ff                   	(bad)  
c020ccc6:	ff                   	(bad)  
c020ccc7:	ff 9b 05 00 00 80    	lcall  *-0x7ffffffb(%ebx)
c020cccd:	00 4b 00             	add    %cl,0x0(%ebx)
c020ccd0:	f4                   	hlt    
c020ccd1:	ff                   	(bad)  
c020ccd2:	ff                   	(bad)  
c020ccd3:	ff 00                	incl   (%eax)
c020ccd5:	00 00                	add    %al,(%eax)
c020ccd7:	00 c0                	add    %al,%al
	...
c020cce1:	00 00                	add    %al,(%eax)
c020cce3:	00 e0                	add    %ah,%al
c020cce5:	00 00                	add    %al,(%eax)
c020cce7:	00 55 00             	add    %dl,0x0(%ebp)
c020ccea:	00 00                	add    %al,(%eax)
c020ccec:	00 00                	add    %al,(%eax)
c020ccee:	00 00                	add    %al,(%eax)
c020ccf0:	24 00                	and    $0x0,%al
c020ccf2:	00 00                	add    %al,(%eax)
c020ccf4:	55                   	push   %ebp
c020ccf5:	00 00                	add    %al,(%eax)
c020ccf7:	00 00                	add    %al,(%eax)
c020ccf9:	00 00                	add    %al,(%eax)
c020ccfb:	00 4e 00             	add    %cl,0x0(%esi)
c020ccfe:	00 00                	add    %al,(%eax)
c020cd00:	6d                   	insl   (%dx),%es:(%edi)
c020cd01:	26                   	es
c020cd02:	10 c0                	adc    %al,%al
c020cd04:	80 09 00             	orb    $0x0,(%ecx)
c020cd07:	00 24 00             	add    %ah,(%eax,%eax,1)
c020cd0a:	58                   	pop    %eax
c020cd0b:	00 6d 26             	add    %ch,0x26(%ebp)
c020cd0e:	10 c0                	adc    %al,%al
c020cd10:	94                   	xchg   %eax,%esp
c020cd11:	09 00                	or     %eax,(%eax)
c020cd13:	00 a0 00 58 00 08    	add    %ah,0x8005800(%eax)
c020cd19:	00 00                	add    %al,(%eax)
c020cd1b:	00 9d 09 00 00 a0    	add    %bl,-0x5ffffff7(%ebp)
c020cd21:	00 58 00             	add    %bl,0x0(%eax)
c020cd24:	0c 00                	or     $0x0,%al
c020cd26:	00 00                	add    %al,(%eax)
c020cd28:	af                   	scas   %es:(%edi),%eax
c020cd29:	09 00                	or     %eax,(%eax)
c020cd2b:	00 a0 00 58 00 10    	add    %ah,0x10005800(%eax)
c020cd31:	00 00                	add    %al,(%eax)
c020cd33:	00 00                	add    %al,(%eax)
c020cd35:	00 00                	add    %al,(%eax)
c020cd37:	00 2e                	add    %ch,(%esi)
c020cd39:	00 00                	add    %al,(%eax)
c020cd3b:	00 6d 26             	add    %ch,0x26(%ebp)
c020cd3e:	10 c0                	adc    %al,%al
c020cd40:	00 00                	add    %al,(%eax)
c020cd42:	00 00                	add    %al,(%eax)
c020cd44:	44                   	inc    %esp
c020cd45:	00 59 00             	add    %bl,0x0(%ecx)
	...
c020cd50:	44                   	inc    %esp
c020cd51:	00 5a 00             	add    %bl,0x0(%edx)
c020cd54:	0c 00                	or     $0x0,%al
c020cd56:	00 00                	add    %al,(%eax)
c020cd58:	00 00                	add    %al,(%eax)
c020cd5a:	00 00                	add    %al,(%eax)
c020cd5c:	44                   	inc    %esp
c020cd5d:	00 5d 00             	add    %bl,0x0(%ebp)
c020cd60:	26 00 00             	add    %al,%es:(%eax)
c020cd63:	00 00                	add    %al,(%eax)
c020cd65:	00 00                	add    %al,(%eax)
c020cd67:	00 44 00 5e          	add    %al,0x5e(%eax,%eax,1)
c020cd6b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020cd6e:	00 00                	add    %al,(%eax)
c020cd70:	00 00                	add    %al,(%eax)
c020cd72:	00 00                	add    %al,(%eax)
c020cd74:	44                   	inc    %esp
c020cd75:	00 5f 00             	add    %bl,0x0(%edi)
c020cd78:	3c 00                	cmp    $0x0,%al
c020cd7a:	00 00                	add    %al,(%eax)
c020cd7c:	00 00                	add    %al,(%eax)
c020cd7e:	00 00                	add    %al,(%eax)
c020cd80:	44                   	inc    %esp
c020cd81:	00 60 00             	add    %ah,0x0(%eax)
c020cd84:	47                   	inc    %edi
c020cd85:	00 00                	add    %al,(%eax)
c020cd87:	00 00                	add    %al,(%eax)
c020cd89:	00 00                	add    %al,(%eax)
c020cd8b:	00 44 00 61          	add    %al,0x61(%eax,%eax,1)
c020cd8f:	00 4d 00             	add    %cl,0x0(%ebp)
c020cd92:	00 00                	add    %al,(%eax)
c020cd94:	00 00                	add    %al,(%eax)
c020cd96:	00 00                	add    %al,(%eax)
c020cd98:	44                   	inc    %esp
c020cd99:	00 62 00             	add    %ah,0x0(%edx)
c020cd9c:	5f                   	pop    %edi
c020cd9d:	00 00                	add    %al,(%eax)
c020cd9f:	00 00                	add    %al,(%eax)
c020cda1:	00 00                	add    %al,(%eax)
c020cda3:	00 44 00 63          	add    %al,0x63(%eax,%eax,1)
c020cda7:	00 65 00             	add    %ah,0x0(%ebp)
c020cdaa:	00 00                	add    %al,(%eax)
c020cdac:	00 00                	add    %al,(%eax)
c020cdae:	00 00                	add    %al,(%eax)
c020cdb0:	44                   	inc    %esp
c020cdb1:	00 65 00             	add    %ah,0x0(%ebp)
c020cdb4:	77 00                	ja     c020cdb6 <interrupt_handlers+0x1556>
c020cdb6:	00 00                	add    %al,(%eax)
c020cdb8:	00 00                	add    %al,(%eax)
c020cdba:	00 00                	add    %al,(%eax)
c020cdbc:	44                   	inc    %esp
c020cdbd:	00 66 00             	add    %ah,0x0(%esi)
c020cdc0:	a9 00 00 00 00       	test   $0x0,%eax
c020cdc5:	00 00                	add    %al,(%eax)
c020cdc7:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c020cdcb:	00 b9 00 00 00 00    	add    %bh,0x0(%ecx)
c020cdd1:	00 00                	add    %al,(%eax)
c020cdd3:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c020cdd7:	00 c6                	add    %al,%dh
c020cdd9:	00 00                	add    %al,(%eax)
c020cddb:	00 00                	add    %al,(%eax)
c020cddd:	00 00                	add    %al,(%eax)
c020cddf:	00 44 00 6b          	add    %al,0x6b(%eax,%eax,1)
c020cde3:	00 d6                	add    %dl,%dh
c020cde5:	00 00                	add    %al,(%eax)
c020cde7:	00 00                	add    %al,(%eax)
c020cde9:	00 00                	add    %al,(%eax)
c020cdeb:	00 44 00 6d          	add    %al,0x6d(%eax,%eax,1)
c020cdef:	00 df                	add    %bl,%bh
c020cdf1:	00 00                	add    %al,(%eax)
c020cdf3:	00 00                	add    %al,(%eax)
c020cdf5:	00 00                	add    %al,(%eax)
c020cdf7:	00 44 00 6e          	add    %al,0x6e(%eax,%eax,1)
c020cdfb:	00 e4                	add    %ah,%ah
c020cdfd:	00 00                	add    %al,(%eax)
c020cdff:	00 00                	add    %al,(%eax)
c020ce01:	00 00                	add    %al,(%eax)
c020ce03:	00 44 00 70          	add    %al,0x70(%eax,%eax,1)
c020ce07:	00 e9                	add    %ch,%cl
c020ce09:	00 00                	add    %al,(%eax)
c020ce0b:	00 c1                	add    %al,%cl
c020ce0d:	09 00                	or     %eax,(%eax)
c020ce0f:	00 80 00 5a 00 f6    	add    %al,-0x9ffa600(%eax)
c020ce15:	ff                   	(bad)  
c020ce16:	ff                   	(bad)  
c020ce17:	ff cf                	dec    %edi
c020ce19:	09 00                	or     %eax,(%eax)
c020ce1b:	00 80 00 58 00 e4    	add    %al,-0x1bffa800(%eax)
c020ce21:	ff                   	(bad)  
c020ce22:	ff                   	(bad)  
c020ce23:	ff 00                	incl   (%eax)
c020ce25:	00 00                	add    %al,(%eax)
c020ce27:	00 c0                	add    %al,%al
	...
c020ce31:	00 00                	add    %al,(%eax)
c020ce33:	00 e0                	add    %ah,%al
c020ce35:	00 00                	add    %al,(%eax)
c020ce37:	00 eb                	add    %ch,%bl
c020ce39:	00 00                	add    %al,(%eax)
c020ce3b:	00 00                	add    %al,(%eax)
c020ce3d:	00 00                	add    %al,(%eax)
c020ce3f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ce42:	00 00                	add    %al,(%eax)
c020ce44:	eb 00                	jmp    c020ce46 <interrupt_handlers+0x15e6>
c020ce46:	00 00                	add    %al,(%eax)
c020ce48:	00 00                	add    %al,(%eax)
c020ce4a:	00 00                	add    %al,(%eax)
c020ce4c:	4e                   	dec    %esi
c020ce4d:	00 00                	add    %al,(%eax)
c020ce4f:	00 58 27             	add    %bl,0x27(%eax)
c020ce52:	10 c0                	adc    %al,%al
c020ce54:	d7                   	xlat   %ds:(%ebx)
c020ce55:	09 00                	or     %eax,(%eax)
c020ce57:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ce5a:	74 00                	je     c020ce5c <interrupt_handlers+0x15fc>
c020ce5c:	58                   	pop    %eax
c020ce5d:	27                   	daa    
c020ce5e:	10 c0                	adc    %al,%al
c020ce60:	ed                   	in     (%dx),%eax
c020ce61:	09 00                	or     %eax,(%eax)
c020ce63:	00 a0 00 74 00 08    	add    %ah,0x8007400(%eax)
c020ce69:	00 00                	add    %al,(%eax)
c020ce6b:	00 9d 09 00 00 a0    	add    %bl,-0x5ffffff7(%ebp)
c020ce71:	00 74 00 0c          	add    %dh,0xc(%eax,%eax,1)
c020ce75:	00 00                	add    %al,(%eax)
c020ce77:	00 af 09 00 00 a0    	add    %ch,-0x5ffffff7(%edi)
c020ce7d:	00 74 00 10          	add    %dh,0x10(%eax,%eax,1)
c020ce81:	00 00                	add    %al,(%eax)
c020ce83:	00 00                	add    %al,(%eax)
c020ce85:	00 00                	add    %al,(%eax)
c020ce87:	00 2e                	add    %ch,(%esi)
c020ce89:	00 00                	add    %al,(%eax)
c020ce8b:	00 58 27             	add    %bl,0x27(%eax)
c020ce8e:	10 c0                	adc    %al,%al
c020ce90:	00 00                	add    %al,(%eax)
c020ce92:	00 00                	add    %al,(%eax)
c020ce94:	44                   	inc    %esp
c020ce95:	00 75 00             	add    %dh,0x0(%ebp)
	...
c020cea0:	44                   	inc    %esp
c020cea1:	00 76 00             	add    %dh,0x0(%esi)
c020cea4:	06                   	push   %es
c020cea5:	00 00                	add    %al,(%eax)
c020cea7:	00 00                	add    %al,(%eax)
c020cea9:	00 00                	add    %al,(%eax)
c020ceab:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c020ceaf:	00 0d 00 00 00 00    	add    %cl,0x0
c020ceb5:	00 00                	add    %al,(%eax)
c020ceb7:	00 44 00 78          	add    %al,0x78(%eax,%eax,1)
c020cebb:	00 0f                	add    %cl,(%edi)
c020cebd:	00 00                	add    %al,(%eax)
c020cebf:	00 00                	add    %al,(%eax)
c020cec1:	00 00                	add    %al,(%eax)
c020cec3:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c020cec7:	00 37                	add    %dh,(%edi)
c020cec9:	00 00                	add    %al,(%eax)
c020cecb:	00 00                	add    %al,(%eax)
c020cecd:	00 00                	add    %al,(%eax)
c020cecf:	00 44 00 7b          	add    %al,0x7b(%eax,%eax,1)
c020ced3:	00 46 00             	add    %al,0x0(%esi)
c020ced6:	00 00                	add    %al,(%eax)
c020ced8:	9b                   	fwait
c020ced9:	05 00 00 80 00       	add    $0x800000,%eax
c020cede:	76 00                	jbe    c020cee0 <interrupt_handlers+0x1680>
c020cee0:	f4                   	hlt    
c020cee1:	ff                   	(bad)  
c020cee2:	ff                   	(bad)  
c020cee3:	ff 00                	incl   (%eax)
c020cee5:	00 00                	add    %al,(%eax)
c020cee7:	00 c0                	add    %al,%al
	...
c020cef1:	00 00                	add    %al,(%eax)
c020cef3:	00 e0                	add    %ah,%al
c020cef5:	00 00                	add    %al,(%eax)
c020cef7:	00 48 00             	add    %cl,0x0(%eax)
c020cefa:	00 00                	add    %al,(%eax)
c020cefc:	00 00                	add    %al,(%eax)
c020cefe:	00 00                	add    %al,(%eax)
c020cf00:	24 00                	and    $0x0,%al
c020cf02:	00 00                	add    %al,(%eax)
c020cf04:	48                   	dec    %eax
c020cf05:	00 00                	add    %al,(%eax)
c020cf07:	00 00                	add    %al,(%eax)
c020cf09:	00 00                	add    %al,(%eax)
c020cf0b:	00 4e 00             	add    %cl,0x0(%esi)
c020cf0e:	00 00                	add    %al,(%eax)
c020cf10:	a0 27 10 c0 03       	mov    0x3c01027,%al
c020cf15:	0a 00                	or     (%eax),%al
c020cf17:	00 26                	add    %ah,(%esi)
c020cf19:	00 1a                	add    %bl,(%edx)
c020cf1b:	00 24 46             	add    %ah,(%esi,%eax,2)
c020cf1e:	10 c0                	adc    %al,%al
c020cf20:	1f                   	pop    %ds
c020cf21:	0a 00                	or     (%eax),%al
c020cf23:	00 26                	add    %ah,(%esi)
c020cf25:	00 1d 00 00 50 10    	add    %bl,0x10500000
c020cf2b:	c0                   	(bad)  
c020cf2c:	36 0a 00             	or     %ss:(%eax),%al
c020cf2f:	00 26                	add    %ah,(%esi)
c020cf31:	00 1e                	add    %bl,(%esi)
c020cf33:	00 02                	add    %al,(%edx)
c020cf35:	50                   	push   %eax
c020cf36:	10 c0                	adc    %al,%al
c020cf38:	00 00                	add    %al,(%eax)
c020cf3a:	00 00                	add    %al,(%eax)
c020cf3c:	64 00 00             	add    %al,%fs:(%eax)
c020cf3f:	00 a0 27 10 c0 19    	add    %ah,0x19c01027(%eax)
c020cf45:	00 00                	add    %al,(%eax)
c020cf47:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c020cf4b:	00 a0 27 10 c0 4d    	add    %ah,0x4dc01027(%eax)
c020cf51:	0a 00                	or     (%eax),%al
c020cf53:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c020cf57:	00 a0 27 10 c0 4e    	add    %ah,0x4ec01027(%eax)
c020cf5d:	00 00                	add    %al,(%eax)
c020cf5f:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020cf62:	00 00                	add    %al,(%eax)
c020cf64:	00 00                	add    %al,(%eax)
c020cf66:	00 00                	add    %al,(%eax)
c020cf68:	5d                   	pop    %ebp
c020cf69:	00 00                	add    %al,(%eax)
c020cf6b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cf71:	00 00                	add    %al,(%eax)
c020cf73:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020cf79:	00 00                	add    %al,(%eax)
c020cf7b:	00 00                	add    %al,(%eax)
c020cf7d:	00 00                	add    %al,(%eax)
c020cf7f:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020cf85:	00 00                	add    %al,(%eax)
c020cf87:	00 00                	add    %al,(%eax)
c020cf89:	00 00                	add    %al,(%eax)
c020cf8b:	00 d0                	add    %dl,%al
c020cf8d:	00 00                	add    %al,(%eax)
c020cf8f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cf95:	00 00                	add    %al,(%eax)
c020cf97:	00 fb                	add    %bh,%bl
c020cf99:	00 00                	add    %al,(%eax)
c020cf9b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cfa1:	00 00                	add    %al,(%eax)
c020cfa3:	00 2b                	add    %ch,(%ebx)
c020cfa5:	01 00                	add    %eax,(%eax)
c020cfa7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cfad:	00 00                	add    %al,(%eax)
c020cfaf:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020cfb3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cfb9:	00 00                	add    %al,(%eax)
c020cfbb:	00 c1                	add    %al,%cl
c020cfbd:	01 00                	add    %eax,(%eax)
c020cfbf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cfc5:	00 00                	add    %al,(%eax)
c020cfc7:	00 ec                	add    %ch,%ah
c020cfc9:	01 00                	add    %eax,(%eax)
c020cfcb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cfd1:	00 00                	add    %al,(%eax)
c020cfd3:	00 1b                	add    %bl,(%ebx)
c020cfd5:	02 00                	add    (%eax),%al
c020cfd7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020cfdd:	00 00                	add    %al,(%eax)
c020cfdf:	00 45 02             	add    %al,0x2(%ebp)
c020cfe2:	00 00                	add    %al,(%eax)
c020cfe4:	80 00 00             	addb   $0x0,(%eax)
c020cfe7:	00 00                	add    %al,(%eax)
c020cfe9:	00 00                	add    %al,(%eax)
c020cfeb:	00 6e 02             	add    %ch,0x2(%esi)
c020cfee:	00 00                	add    %al,(%eax)
c020cff0:	80 00 00             	addb   $0x0,(%eax)
c020cff3:	00 00                	add    %al,(%eax)
c020cff5:	00 00                	add    %al,(%eax)
c020cff7:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020cffd:	00 00                	add    %al,(%eax)
c020cfff:	00 00                	add    %al,(%eax)
c020d001:	00 00                	add    %al,(%eax)
c020d003:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020d009:	00 00                	add    %al,(%eax)
c020d00b:	00 00                	add    %al,(%eax)
c020d00d:	00 00                	add    %al,(%eax)
c020d00f:	00 c4                	add    %al,%ah
c020d011:	02 00                	add    (%eax),%al
c020d013:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d019:	00 00                	add    %al,(%eax)
c020d01b:	00 e3                	add    %ah,%bl
c020d01d:	02 00                	add    (%eax),%al
c020d01f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d025:	00 00                	add    %al,(%eax)
c020d027:	00 02                	add    %al,(%edx)
c020d029:	03 00                	add    (%eax),%eax
c020d02b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d031:	00 00                	add    %al,(%eax)
c020d033:	00 23                	add    %ah,(%ebx)
c020d035:	03 00                	add    (%eax),%eax
c020d037:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d03d:	00 00                	add    %al,(%eax)
c020d03f:	00 60 0a             	add    %ah,0xa(%eax)
c020d042:	00 00                	add    %al,(%eax)
c020d044:	82                   	(bad)  
c020d045:	00 00                	add    %al,(%eax)
c020d047:	00 00                	add    %al,(%eax)
c020d049:	00 00                	add    %al,(%eax)
c020d04b:	00 47 03             	add    %al,0x3(%edi)
c020d04e:	00 00                	add    %al,(%eax)
c020d050:	c2 00 00             	ret    $0x0
c020d053:	00 26                	add    %ah,(%esi)
c020d055:	19 00                	sbb    %eax,(%eax)
c020d057:	00 00                	add    %al,(%eax)
c020d059:	00 00                	add    %al,(%eax)
c020d05b:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020d061:	00 00                	add    %al,(%eax)
c020d063:	00 76 0a             	add    %dh,0xa(%esi)
c020d066:	00 00                	add    %al,(%eax)
c020d068:	24 00                	and    $0x0,%al
c020d06a:	16                   	push   %ss
c020d06b:	00 a0 27 10 c0 83    	add    %ah,-0x7c3fefd9(%eax)
c020d071:	0a 00                	or     (%eax),%al
c020d073:	00 a0 00 16 00 08    	add    %ah,0x8001600(%eax)
c020d079:	00 00                	add    %al,(%eax)
c020d07b:	00 8f 0a 00 00 a0    	add    %cl,-0x5ffffff6(%edi)
c020d081:	00 16                	add    %dl,(%esi)
c020d083:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d086:	00 00                	add    %al,(%eax)
c020d088:	00 00                	add    %al,(%eax)
c020d08a:	00 00                	add    %al,(%eax)
c020d08c:	2e 00 00             	add    %al,%cs:(%eax)
c020d08f:	00 a0 27 10 c0 00    	add    %ah,0xc01027(%eax)
c020d095:	00 00                	add    %al,(%eax)
c020d097:	00 44 00 17          	add    %al,0x17(%eax,%eax,1)
	...
c020d0a3:	00 44 00 18          	add    %al,0x18(%eax,%eax,1)
c020d0a7:	00 13                	add    %dl,(%ebx)
c020d0a9:	00 00                	add    %al,(%eax)
c020d0ab:	00 00                	add    %al,(%eax)
c020d0ad:	00 00                	add    %al,(%eax)
c020d0af:	00 44 00 19          	add    %al,0x19(%eax,%eax,1)
c020d0b3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c020d0b6:	00 00                	add    %al,(%eax)
c020d0b8:	9c                   	pushf  
c020d0b9:	0a 00                	or     (%eax),%al
c020d0bb:	00 80 00 16 00 fc    	add    %al,-0x3ffea00(%eax)
c020d0c1:	ff                   	(bad)  
c020d0c2:	ff                   	(bad)  
c020d0c3:	ff a7 0a 00 00 80    	jmp    *-0x7ffffff6(%edi)
c020d0c9:	00 16                	add    %dl,(%esi)
c020d0cb:	00 f8                	add    %bh,%al
c020d0cd:	ff                   	(bad)  
c020d0ce:	ff                   	(bad)  
c020d0cf:	ff 00                	incl   (%eax)
c020d0d1:	00 00                	add    %al,(%eax)
c020d0d3:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d0d6:	00 00                	add    %al,(%eax)
c020d0d8:	1e                   	push   %ds
c020d0d9:	00 00                	add    %al,(%eax)
c020d0db:	00 00                	add    %al,(%eax)
c020d0dd:	00 00                	add    %al,(%eax)
c020d0df:	00 4e 00             	add    %cl,0x0(%esi)
c020d0e2:	00 00                	add    %al,(%eax)
c020d0e4:	be 27 10 c0 b3       	mov    $0xb3c01027,%esi
c020d0e9:	0a 00                	or     (%eax),%al
c020d0eb:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d0ee:	1c 00                	sbb    $0x0,%al
c020d0f0:	be 27 10 c0 83       	mov    $0x83c01027,%esi
c020d0f5:	0a 00                	or     (%eax),%al
c020d0f7:	00 a0 00 1c 00 08    	add    %ah,0x8001c00(%eax)
c020d0fd:	00 00                	add    %al,(%eax)
c020d0ff:	00 00                	add    %al,(%eax)
c020d101:	00 00                	add    %al,(%eax)
c020d103:	00 2e                	add    %ch,(%esi)
c020d105:	00 00                	add    %al,(%eax)
c020d107:	00 be 27 10 c0 00    	add    %bh,0xc01027(%esi)
c020d10d:	00 00                	add    %al,(%eax)
c020d10f:	00 44 00 1d          	add    %al,0x1d(%eax,%eax,1)
	...
c020d11b:	00 44 00 1f          	add    %al,0x1f(%eax,%eax,1)
c020d11f:	00 0e                	add    %cl,(%esi)
c020d121:	00 00                	add    %al,(%eax)
c020d123:	00 00                	add    %al,(%eax)
c020d125:	00 00                	add    %al,(%eax)
c020d127:	00 44 00 21          	add    %al,0x21(%eax,%eax,1)
c020d12b:	00 20                	add    %ah,(%eax)
c020d12d:	00 00                	add    %al,(%eax)
c020d12f:	00 00                	add    %al,(%eax)
c020d131:	00 00                	add    %al,(%eax)
c020d133:	00 44 00 22          	add    %al,0x22(%eax,%eax,1)
c020d137:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d13a:	00 00                	add    %al,(%eax)
c020d13c:	be 0a 00 00 80       	mov    $0x8000000a,%esi
c020d141:	00 1e                	add    %bl,(%esi)
c020d143:	00 fb                	add    %bh,%bl
c020d145:	ff                   	(bad)  
c020d146:	ff                   	(bad)  
c020d147:	ff 9c 0a 00 00 80 00 	lcall  *0x800000(%edx,%ecx,1)
c020d14e:	1c 00                	sbb    $0x0,%al
c020d150:	e8 ff ff ff 00       	call   c120d154 <kernel_end+0xffa154>
c020d155:	00 00                	add    %al,(%eax)
c020d157:	00 c0                	add    %al,%al
	...
c020d161:	00 00                	add    %al,(%eax)
c020d163:	00 e0                	add    %ah,%al
c020d165:	00 00                	add    %al,(%eax)
c020d167:	00 2a                	add    %ch,(%edx)
c020d169:	00 00                	add    %al,(%eax)
c020d16b:	00 00                	add    %al,(%eax)
c020d16d:	00 00                	add    %al,(%eax)
c020d16f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d172:	00 00                	add    %al,(%eax)
c020d174:	2a 00                	sub    (%eax),%al
c020d176:	00 00                	add    %al,(%eax)
c020d178:	00 00                	add    %al,(%eax)
c020d17a:	00 00                	add    %al,(%eax)
c020d17c:	4e                   	dec    %esi
c020d17d:	00 00                	add    %al,(%eax)
c020d17f:	00 e8                	add    %ch,%al
c020d181:	27                   	daa    
c020d182:	10 c0                	adc    %al,%al
c020d184:	c8 0a 00 00          	enter  $0xa,$0x0
c020d188:	24 00                	and    $0x0,%al
c020d18a:	25 00 e8 27 10       	and    $0x1027e800,%eax
c020d18f:	c0 83 0a 00 00 a0 00 	rolb   $0x0,-0x5ffffff6(%ebx)
c020d196:	25 00 08 00 00       	and    $0x800,%eax
c020d19b:	00 00                	add    %al,(%eax)
c020d19d:	00 00                	add    %al,(%eax)
c020d19f:	00 2e                	add    %ch,(%esi)
c020d1a1:	00 00                	add    %al,(%eax)
c020d1a3:	00 e8                	add    %ch,%al
c020d1a5:	27                   	daa    
c020d1a6:	10 c0                	adc    %al,%al
c020d1a8:	00 00                	add    %al,(%eax)
c020d1aa:	00 00                	add    %al,(%eax)
c020d1ac:	44                   	inc    %esp
c020d1ad:	00 26                	add    %ah,(%esi)
	...
c020d1b7:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c020d1bb:	00 0e                	add    %cl,(%esi)
c020d1bd:	00 00                	add    %al,(%eax)
c020d1bf:	00 00                	add    %al,(%eax)
c020d1c1:	00 00                	add    %al,(%eax)
c020d1c3:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c020d1c7:	00 22                	add    %ah,(%edx)
c020d1c9:	00 00                	add    %al,(%eax)
c020d1cb:	00 00                	add    %al,(%eax)
c020d1cd:	00 00                	add    %al,(%eax)
c020d1cf:	00 44 00 2c          	add    %al,0x2c(%eax,%eax,1)
c020d1d3:	00 26                	add    %ah,(%esi)
c020d1d5:	00 00                	add    %al,(%eax)
c020d1d7:	00 d3                	add    %dl,%bl
c020d1d9:	0a 00                	or     (%eax),%al
c020d1db:	00 80 00 27 00 fa    	add    %al,-0x5ffd900(%eax)
c020d1e1:	ff                   	(bad)  
c020d1e2:	ff                   	(bad)  
c020d1e3:	ff 9c 0a 00 00 80 00 	lcall  *0x800000(%edx,%ecx,1)
c020d1ea:	25 00 e8 ff ff       	and    $0xffffe800,%eax
c020d1ef:	ff 00                	incl   (%eax)
c020d1f1:	00 00                	add    %al,(%eax)
c020d1f3:	00 c0                	add    %al,%al
	...
c020d1fd:	00 00                	add    %al,(%eax)
c020d1ff:	00 e0                	add    %ah,%al
c020d201:	00 00                	add    %al,(%eax)
c020d203:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020d206:	00 00                	add    %al,(%eax)
c020d208:	00 00                	add    %al,(%eax)
c020d20a:	00 00                	add    %al,(%eax)
c020d20c:	24 00                	and    $0x0,%al
c020d20e:	00 00                	add    %al,(%eax)
c020d210:	2c 00                	sub    $0x0,%al
c020d212:	00 00                	add    %al,(%eax)
c020d214:	00 00                	add    %al,(%eax)
c020d216:	00 00                	add    %al,(%eax)
c020d218:	4e                   	dec    %esi
c020d219:	00 00                	add    %al,(%eax)
c020d21b:	00 14 28             	add    %dl,(%eax,%ebp,1)
c020d21e:	10 c0                	adc    %al,%al
c020d220:	00 00                	add    %al,(%eax)
c020d222:	00 00                	add    %al,(%eax)
c020d224:	64 00 00             	add    %al,%fs:(%eax)
c020d227:	00 14 28             	add    %dl,(%eax,%ebp,1)
c020d22a:	10 c0                	adc    %al,%al
c020d22c:	19 00                	sbb    %eax,(%eax)
c020d22e:	00 00                	add    %al,(%eax)
c020d230:	64 00 02             	add    %al,%fs:(%edx)
c020d233:	00 14 28             	add    %dl,(%eax,%ebp,1)
c020d236:	10 c0                	adc    %al,%al
c020d238:	dd 0a                	fisttpll (%edx)
c020d23a:	00 00                	add    %al,(%eax)
c020d23c:	64 00 02             	add    %al,%fs:(%edx)
c020d23f:	00 14 28             	add    %dl,(%eax,%ebp,1)
c020d242:	10 c0                	adc    %al,%al
c020d244:	4e                   	dec    %esi
c020d245:	00 00                	add    %al,(%eax)
c020d247:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020d24a:	00 00                	add    %al,(%eax)
c020d24c:	00 00                	add    %al,(%eax)
c020d24e:	00 00                	add    %al,(%eax)
c020d250:	5d                   	pop    %ebp
c020d251:	00 00                	add    %al,(%eax)
c020d253:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d259:	00 00                	add    %al,(%eax)
c020d25b:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020d261:	00 00                	add    %al,(%eax)
c020d263:	00 00                	add    %al,(%eax)
c020d265:	00 00                	add    %al,(%eax)
c020d267:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020d26d:	00 00                	add    %al,(%eax)
c020d26f:	00 00                	add    %al,(%eax)
c020d271:	00 00                	add    %al,(%eax)
c020d273:	00 d0                	add    %dl,%al
c020d275:	00 00                	add    %al,(%eax)
c020d277:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d27d:	00 00                	add    %al,(%eax)
c020d27f:	00 fb                	add    %bh,%bl
c020d281:	00 00                	add    %al,(%eax)
c020d283:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d289:	00 00                	add    %al,(%eax)
c020d28b:	00 2b                	add    %ch,(%ebx)
c020d28d:	01 00                	add    %eax,(%eax)
c020d28f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d295:	00 00                	add    %al,(%eax)
c020d297:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020d29b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d2a1:	00 00                	add    %al,(%eax)
c020d2a3:	00 c1                	add    %al,%cl
c020d2a5:	01 00                	add    %eax,(%eax)
c020d2a7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d2ad:	00 00                	add    %al,(%eax)
c020d2af:	00 ec                	add    %ch,%ah
c020d2b1:	01 00                	add    %eax,(%eax)
c020d2b3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d2b9:	00 00                	add    %al,(%eax)
c020d2bb:	00 1b                	add    %bl,(%ebx)
c020d2bd:	02 00                	add    (%eax),%al
c020d2bf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d2c5:	00 00                	add    %al,(%eax)
c020d2c7:	00 45 02             	add    %al,0x2(%ebp)
c020d2ca:	00 00                	add    %al,(%eax)
c020d2cc:	80 00 00             	addb   $0x0,(%eax)
c020d2cf:	00 00                	add    %al,(%eax)
c020d2d1:	00 00                	add    %al,(%eax)
c020d2d3:	00 6e 02             	add    %ch,0x2(%esi)
c020d2d6:	00 00                	add    %al,(%eax)
c020d2d8:	80 00 00             	addb   $0x0,(%eax)
c020d2db:	00 00                	add    %al,(%eax)
c020d2dd:	00 00                	add    %al,(%eax)
c020d2df:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020d2e5:	00 00                	add    %al,(%eax)
c020d2e7:	00 00                	add    %al,(%eax)
c020d2e9:	00 00                	add    %al,(%eax)
c020d2eb:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020d2f1:	00 00                	add    %al,(%eax)
c020d2f3:	00 00                	add    %al,(%eax)
c020d2f5:	00 00                	add    %al,(%eax)
c020d2f7:	00 c4                	add    %al,%ah
c020d2f9:	02 00                	add    (%eax),%al
c020d2fb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d301:	00 00                	add    %al,(%eax)
c020d303:	00 e3                	add    %ah,%bl
c020d305:	02 00                	add    (%eax),%al
c020d307:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d30d:	00 00                	add    %al,(%eax)
c020d30f:	00 02                	add    %al,(%edx)
c020d311:	03 00                	add    (%eax),%eax
c020d313:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d319:	00 00                	add    %al,(%eax)
c020d31b:	00 23                	add    %ah,(%ebx)
c020d31d:	03 00                	add    (%eax),%eax
c020d31f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020d325:	00 00                	add    %al,(%eax)
c020d327:	00 eb                	add    %ch,%bl
c020d329:	0a 00                	or     (%eax),%al
c020d32b:	00 82 00 00 00 00    	add    %al,0x0(%edx)
c020d331:	00 00                	add    %al,(%eax)
c020d333:	00 47 03             	add    %al,0x3(%edi)
c020d336:	00 00                	add    %al,(%eax)
c020d338:	c2 00 00             	ret    $0x0
c020d33b:	00 26                	add    %ah,(%esi)
c020d33d:	19 00                	sbb    %eax,(%eax)
c020d33f:	00 00                	add    %al,(%eax)
c020d341:	00 00                	add    %al,(%eax)
c020d343:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020d349:	00 00                	add    %al,(%eax)
c020d34b:	00 fc                	add    %bh,%ah
c020d34d:	0a 00                	or     (%eax),%al
c020d34f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d352:	1a 00                	sbb    (%eax),%al
c020d354:	14 28                	adc    $0x28,%al
c020d356:	10 c0                	adc    %al,%al
c020d358:	13 0b                	adc    (%ebx),%ecx
c020d35a:	00 00                	add    %al,(%eax)
c020d35c:	a0 00 1a 00 08       	mov    0x8001a00,%al
c020d361:	00 00                	add    %al,(%eax)
c020d363:	00 20                	add    %ah,(%eax)
c020d365:	0b 00                	or     (%eax),%eax
c020d367:	00 a0 00 1a 00 0c    	add    %ah,0xc001a00(%eax)
c020d36d:	00 00                	add    %al,(%eax)
c020d36f:	00 3c 0b             	add    %bh,(%ebx,%ecx,1)
c020d372:	00 00                	add    %al,(%eax)
c020d374:	a0 00 1a 00 10       	mov    0x10001a00,%al
c020d379:	00 00                	add    %al,(%eax)
c020d37b:	00 00                	add    %al,(%eax)
c020d37d:	00 00                	add    %al,(%eax)
c020d37f:	00 2e                	add    %ch,(%esi)
c020d381:	00 00                	add    %al,(%eax)
c020d383:	00 14 28             	add    %dl,(%eax,%ebp,1)
c020d386:	10 c0                	adc    %al,%al
c020d388:	00 00                	add    %al,(%eax)
c020d38a:	00 00                	add    %al,(%eax)
c020d38c:	44                   	inc    %esp
c020d38d:	00 1b                	add    %bl,(%ebx)
	...
c020d397:	00 44 00 1c          	add    %al,0x1c(%eax,%eax,1)
c020d39b:	00 06                	add    %al,(%esi)
c020d39d:	00 00                	add    %al,(%eax)
c020d39f:	00 00                	add    %al,(%eax)
c020d3a1:	00 00                	add    %al,(%eax)
c020d3a3:	00 44 00 1d          	add    %al,0x1d(%eax,%eax,1)
c020d3a7:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d3aa:	00 00                	add    %al,(%eax)
c020d3ac:	00 00                	add    %al,(%eax)
c020d3ae:	00 00                	add    %al,(%eax)
c020d3b0:	44                   	inc    %esp
c020d3b1:	00 20                	add    %ah,(%eax)
c020d3b3:	00 12                	add    %dl,(%edx)
c020d3b5:	00 00                	add    %al,(%eax)
c020d3b7:	00 00                	add    %al,(%eax)
c020d3b9:	00 00                	add    %al,(%eax)
c020d3bb:	00 44 00 22          	add    %al,0x22(%eax,%eax,1)
c020d3bf:	00 19                	add    %bl,(%ecx)
c020d3c1:	00 00                	add    %al,(%eax)
c020d3c3:	00 00                	add    %al,(%eax)
c020d3c5:	00 00                	add    %al,(%eax)
c020d3c7:	00 44 00 22          	add    %al,0x22(%eax,%eax,1)
c020d3cb:	00 1f                	add    %bl,(%edi)
c020d3cd:	00 00                	add    %al,(%eax)
c020d3cf:	00 00                	add    %al,(%eax)
c020d3d1:	00 00                	add    %al,(%eax)
c020d3d3:	00 44 00 23          	add    %al,0x23(%eax,%eax,1)
c020d3d7:	00 25 00 00 00 00    	add    %ah,0x0
c020d3dd:	00 00                	add    %al,(%eax)
c020d3df:	00 44 00 27          	add    %al,0x27(%eax,%eax,1)
c020d3e3:	00 2a                	add    %ch,(%edx)
c020d3e5:	00 00                	add    %al,(%eax)
c020d3e7:	00 00                	add    %al,(%eax)
c020d3e9:	00 00                	add    %al,(%eax)
c020d3eb:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020d3ef:	00 3d 00 00 00 00    	add    %bh,0x0
c020d3f5:	00 00                	add    %al,(%eax)
c020d3f7:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020d3fb:	00 43 00             	add    %al,0x0(%ebx)
c020d3fe:	00 00                	add    %al,(%eax)
c020d400:	00 00                	add    %al,(%eax)
c020d402:	00 00                	add    %al,(%eax)
c020d404:	44                   	inc    %esp
c020d405:	00 26                	add    %ah,(%esi)
c020d407:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c020d40b:	00 00                	add    %al,(%eax)
c020d40d:	00 00                	add    %al,(%eax)
c020d40f:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c020d413:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c020d417:	00 00                	add    %al,(%eax)
c020d419:	00 00                	add    %al,(%eax)
c020d41b:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c020d41f:	00 4f 00             	add    %cl,0x0(%edi)
c020d422:	00 00                	add    %al,(%eax)
c020d424:	47                   	inc    %edi
c020d425:	0b 00                	or     (%eax),%eax
c020d427:	00 80 00 1c 00 fc    	add    %al,-0x3ffe400(%eax)
c020d42d:	ff                   	(bad)  
c020d42e:	ff                   	(bad)  
c020d42f:	ff 5a 0b             	lcall  *0xb(%edx)
c020d432:	00 00                	add    %al,(%eax)
c020d434:	80 00 1d             	addb   $0x1d,(%eax)
c020d437:	00 f8                	add    %bh,%al
c020d439:	ff                   	(bad)  
c020d43a:	ff                   	(bad)  
c020d43b:	ff 9b 05 00 00 80    	lcall  *-0x7ffffffb(%ebx)
c020d441:	00 1e                	add    %bl,(%esi)
c020d443:	00 f4                	add    %dh,%ah
c020d445:	ff                   	(bad)  
c020d446:	ff                   	(bad)  
c020d447:	ff 00                	incl   (%eax)
c020d449:	00 00                	add    %al,(%eax)
c020d44b:	00 c0                	add    %al,%al
	...
c020d455:	00 00                	add    %al,(%eax)
c020d457:	00 e0                	add    %ah,%al
c020d459:	00 00                	add    %al,(%eax)
c020d45b:	00 51 00             	add    %dl,0x0(%ecx)
c020d45e:	00 00                	add    %al,(%eax)
c020d460:	00 00                	add    %al,(%eax)
c020d462:	00 00                	add    %al,(%eax)
c020d464:	24 00                	and    $0x0,%al
c020d466:	00 00                	add    %al,(%eax)
c020d468:	51                   	push   %ecx
c020d469:	00 00                	add    %al,(%eax)
c020d46b:	00 00                	add    %al,(%eax)
c020d46d:	00 00                	add    %al,(%eax)
c020d46f:	00 4e 00             	add    %cl,0x0(%esi)
c020d472:	00 00                	add    %al,(%eax)
c020d474:	65 28 10             	sub    %dl,%gs:(%eax)
c020d477:	c0                   	(bad)  
c020d478:	75 0b                	jne    c020d485 <interrupt_handlers+0x1c25>
c020d47a:	00 00                	add    %al,(%eax)
c020d47c:	24 00                	and    $0x0,%al
c020d47e:	31 00                	xor    %eax,(%eax)
c020d480:	65 28 10             	sub    %dl,%gs:(%eax)
c020d483:	c0 13 0b             	rclb   $0xb,(%ebx)
c020d486:	00 00                	add    %al,(%eax)
c020d488:	a0 00 31 00 08       	mov    0x8003100,%al
c020d48d:	00 00                	add    %al,(%eax)
c020d48f:	00 84 0b 00 00 a0 00 	add    %al,0xa00000(%ebx,%ecx,1)
c020d496:	31 00                	xor    %eax,(%eax)
c020d498:	0c 00                	or     $0x0,%al
c020d49a:	00 00                	add    %al,(%eax)
c020d49c:	3c 0b                	cmp    $0xb,%al
c020d49e:	00 00                	add    %al,(%eax)
c020d4a0:	a0 00 31 00 10       	mov    0x10003100,%al
c020d4a5:	00 00                	add    %al,(%eax)
c020d4a7:	00 00                	add    %al,(%eax)
c020d4a9:	00 00                	add    %al,(%eax)
c020d4ab:	00 2e                	add    %ch,(%esi)
c020d4ad:	00 00                	add    %al,(%eax)
c020d4af:	00 65 28             	add    %ah,0x28(%ebp)
c020d4b2:	10 c0                	adc    %al,%al
c020d4b4:	00 00                	add    %al,(%eax)
c020d4b6:	00 00                	add    %al,(%eax)
c020d4b8:	44                   	inc    %esp
c020d4b9:	00 32                	add    %dh,(%edx)
	...
c020d4c3:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c020d4c7:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d4ca:	00 00                	add    %al,(%eax)
c020d4cc:	00 00                	add    %al,(%eax)
c020d4ce:	00 00                	add    %al,(%eax)
c020d4d0:	44                   	inc    %esp
c020d4d1:	00 37                	add    %dh,(%edi)
c020d4d3:	00 12                	add    %dl,(%edx)
c020d4d5:	00 00                	add    %al,(%eax)
c020d4d7:	00 00                	add    %al,(%eax)
c020d4d9:	00 00                	add    %al,(%eax)
c020d4db:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c020d4df:	00 19                	add    %bl,(%ecx)
c020d4e1:	00 00                	add    %al,(%eax)
c020d4e3:	00 00                	add    %al,(%eax)
c020d4e5:	00 00                	add    %al,(%eax)
c020d4e7:	00 44 00 3a          	add    %al,0x3a(%eax,%eax,1)
c020d4eb:	00 20                	add    %ah,(%eax)
c020d4ed:	00 00                	add    %al,(%eax)
c020d4ef:	00 00                	add    %al,(%eax)
c020d4f1:	00 00                	add    %al,(%eax)
c020d4f3:	00 44 00 3b          	add    %al,0x3b(%eax,%eax,1)
c020d4f7:	00 26                	add    %ah,(%esi)
c020d4f9:	00 00                	add    %al,(%eax)
c020d4fb:	00 00                	add    %al,(%eax)
c020d4fd:	00 00                	add    %al,(%eax)
c020d4ff:	00 44 00 3f          	add    %al,0x3f(%eax,%eax,1)
c020d503:	00 28                	add    %ch,(%eax)
c020d505:	00 00                	add    %al,(%eax)
c020d507:	00 00                	add    %al,(%eax)
c020d509:	00 00                	add    %al,(%eax)
c020d50b:	00 44 00 3e          	add    %al,0x3e(%eax,%eax,1)
c020d50f:	00 2e                	add    %ch,(%esi)
c020d511:	00 00                	add    %al,(%eax)
c020d513:	00 00                	add    %al,(%eax)
c020d515:	00 00                	add    %al,(%eax)
c020d517:	00 44 00 3e          	add    %al,0x3e(%eax,%eax,1)
c020d51b:	00 2f                	add    %ch,(%edi)
c020d51d:	00 00                	add    %al,(%eax)
c020d51f:	00 00                	add    %al,(%eax)
c020d521:	00 00                	add    %al,(%eax)
c020d523:	00 44 00 42          	add    %al,0x42(%eax,%eax,1)
c020d527:	00 39                	add    %bh,(%ecx)
c020d529:	00 00                	add    %al,(%eax)
c020d52b:	00 00                	add    %al,(%eax)
c020d52d:	00 00                	add    %al,(%eax)
c020d52f:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020d533:	00 41 00             	add    %al,0x0(%ecx)
c020d536:	00 00                	add    %al,(%eax)
c020d538:	00 00                	add    %al,(%eax)
c020d53a:	00 00                	add    %al,(%eax)
c020d53c:	44                   	inc    %esp
c020d53d:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020d541:	00 00                	add    %al,(%eax)
c020d543:	00 00                	add    %al,(%eax)
c020d545:	00 00                	add    %al,(%eax)
c020d547:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020d54b:	00 50 00             	add    %dl,0x0(%eax)
c020d54e:	00 00                	add    %al,(%eax)
c020d550:	00 00                	add    %al,(%eax)
c020d552:	00 00                	add    %al,(%eax)
c020d554:	44                   	inc    %esp
c020d555:	00 43 00             	add    %al,0x0(%ebx)
c020d558:	54                   	push   %esp
c020d559:	00 00                	add    %al,(%eax)
c020d55b:	00 00                	add    %al,(%eax)
c020d55d:	00 00                	add    %al,(%eax)
c020d55f:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020d563:	00 5c 00 00          	add    %bl,0x0(%eax,%eax,1)
c020d567:	00 00                	add    %al,(%eax)
c020d569:	00 00                	add    %al,(%eax)
c020d56b:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c020d56f:	00 5e 00             	add    %bl,0x0(%esi)
c020d572:	00 00                	add    %al,(%eax)
c020d574:	00 00                	add    %al,(%eax)
c020d576:	00 00                	add    %al,(%eax)
c020d578:	44                   	inc    %esp
c020d579:	00 48 00             	add    %cl,0x0(%eax)
c020d57c:	67 00 00             	add    %al,(%bx,%si)
c020d57f:	00 00                	add    %al,(%eax)
c020d581:	00 00                	add    %al,(%eax)
c020d583:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c020d587:	00 74 00 00          	add    %dh,0x0(%eax,%eax,1)
c020d58b:	00 00                	add    %al,(%eax)
c020d58d:	00 00                	add    %al,(%eax)
c020d58f:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c020d593:	00 78 00             	add    %bh,0x0(%eax)
c020d596:	00 00                	add    %al,(%eax)
c020d598:	00 00                	add    %al,(%eax)
c020d59a:	00 00                	add    %al,(%eax)
c020d59c:	44                   	inc    %esp
c020d59d:	00 4c 00 80          	add    %cl,-0x80(%eax,%eax,1)
c020d5a1:	00 00                	add    %al,(%eax)
c020d5a3:	00 00                	add    %al,(%eax)
c020d5a5:	00 00                	add    %al,(%eax)
c020d5a7:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c020d5ab:	00 8a 00 00 00 1a    	add    %cl,0x1a000000(%edx)
c020d5b1:	06                   	push   %es
c020d5b2:	00 00                	add    %al,(%eax)
c020d5b4:	80 00 33             	addb   $0x33,(%eax)
c020d5b7:	00 fc                	add    %bh,%ah
c020d5b9:	ff                   	(bad)  
c020d5ba:	ff                   	(bad)  
c020d5bb:	ff 9b 05 00 00 80    	lcall  *-0x7ffffffb(%ebx)
c020d5c1:	00 34 00             	add    %dh,(%eax,%eax,1)
c020d5c4:	f8                   	clc    
c020d5c5:	ff                   	(bad)  
c020d5c6:	ff                   	(bad)  
c020d5c7:	ff 8f 0b 00 00 80    	decl   -0x7ffffff5(%edi)
c020d5cd:	00 35 00 f4 ff ff    	add    %dh,0xfffff400
c020d5d3:	ff a1 0b 00 00 80    	jmp    *-0x7ffffff5(%ecx)
c020d5d9:	00 31                	add    %dh,(%ecx)
c020d5db:	00 ec                	add    %ch,%ah
c020d5dd:	ff                   	(bad)  
c020d5de:	ff                   	(bad)  
c020d5df:	ff 00                	incl   (%eax)
c020d5e1:	00 00                	add    %al,(%eax)
c020d5e3:	00 c0                	add    %al,%al
	...
c020d5ed:	00 00                	add    %al,(%eax)
c020d5ef:	00 e0                	add    %ah,%al
c020d5f1:	00 00                	add    %al,(%eax)
c020d5f3:	00 8c 00 00 00 00 00 	add    %cl,0x0(%eax,%eax,1)
c020d5fa:	00 00                	add    %al,(%eax)
c020d5fc:	24 00                	and    $0x0,%al
c020d5fe:	00 00                	add    %al,(%eax)
c020d600:	8c 00                	mov    %es,(%eax)
c020d602:	00 00                	add    %al,(%eax)
c020d604:	00 00                	add    %al,(%eax)
c020d606:	00 00                	add    %al,(%eax)
c020d608:	4e                   	dec    %esi
c020d609:	00 00                	add    %al,(%eax)
c020d60b:	00 f1                	add    %dh,%cl
c020d60d:	28 10                	sub    %dl,(%eax)
c020d60f:	c0 ab 0b 00 00 24 00 	shrb   $0x0,0x2400000b(%ebx)
c020d616:	54                   	push   %esp
c020d617:	00 f1                	add    %dh,%cl
c020d619:	28 10                	sub    %dl,(%eax)
c020d61b:	c0 13 0b             	rclb   $0xb,(%ebx)
c020d61e:	00 00                	add    %al,(%eax)
c020d620:	a0 00 54 00 08       	mov    0x8005400,%al
c020d625:	00 00                	add    %al,(%eax)
c020d627:	00 3c 0b             	add    %bh,(%ebx,%ecx,1)
c020d62a:	00 00                	add    %al,(%eax)
c020d62c:	a0 00 54 00 0c       	mov    0xc005400,%al
c020d631:	00 00                	add    %al,(%eax)
c020d633:	00 00                	add    %al,(%eax)
c020d635:	00 00                	add    %al,(%eax)
c020d637:	00 2e                	add    %ch,(%esi)
c020d639:	00 00                	add    %al,(%eax)
c020d63b:	00 f1                	add    %dh,%cl
c020d63d:	28 10                	sub    %dl,(%eax)
c020d63f:	c0 00 00             	rolb   $0x0,(%eax)
c020d642:	00 00                	add    %al,(%eax)
c020d644:	44                   	inc    %esp
c020d645:	00 55 00             	add    %dl,0x0(%ebp)
	...
c020d650:	44                   	inc    %esp
c020d651:	00 58 00             	add    %bl,0x0(%eax)
c020d654:	06                   	push   %es
c020d655:	00 00                	add    %al,(%eax)
c020d657:	00 00                	add    %al,(%eax)
c020d659:	00 00                	add    %al,(%eax)
c020d65b:	00 44 00 59          	add    %al,0x59(%eax,%eax,1)
c020d65f:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d662:	00 00                	add    %al,(%eax)
c020d664:	00 00                	add    %al,(%eax)
c020d666:	00 00                	add    %al,(%eax)
c020d668:	44                   	inc    %esp
c020d669:	00 5a 00             	add    %bl,0x0(%edx)
c020d66c:	13 00                	adc    (%eax),%eax
c020d66e:	00 00                	add    %al,(%eax)
c020d670:	00 00                	add    %al,(%eax)
c020d672:	00 00                	add    %al,(%eax)
c020d674:	44                   	inc    %esp
c020d675:	00 5c 00 1a          	add    %bl,0x1a(%eax,%eax,1)
c020d679:	00 00                	add    %al,(%eax)
c020d67b:	00 00                	add    %al,(%eax)
c020d67d:	00 00                	add    %al,(%eax)
c020d67f:	00 44 00 5d          	add    %al,0x5d(%eax,%eax,1)
c020d683:	00 20                	add    %ah,(%eax)
c020d685:	00 00                	add    %al,(%eax)
c020d687:	00 00                	add    %al,(%eax)
c020d689:	00 00                	add    %al,(%eax)
c020d68b:	00 44 00 61          	add    %al,0x61(%eax,%eax,1)
c020d68f:	00 22                	add    %ah,(%edx)
c020d691:	00 00                	add    %al,(%eax)
c020d693:	00 00                	add    %al,(%eax)
c020d695:	00 00                	add    %al,(%eax)
c020d697:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c020d69b:	00 28                	add    %ch,(%eax)
c020d69d:	00 00                	add    %al,(%eax)
c020d69f:	00 00                	add    %al,(%eax)
c020d6a1:	00 00                	add    %al,(%eax)
c020d6a3:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c020d6a7:	00 29                	add    %ch,(%ecx)
c020d6a9:	00 00                	add    %al,(%eax)
c020d6ab:	00 00                	add    %al,(%eax)
c020d6ad:	00 00                	add    %al,(%eax)
c020d6af:	00 44 00 64          	add    %al,0x64(%eax,%eax,1)
c020d6b3:	00 33                	add    %dh,(%ebx)
c020d6b5:	00 00                	add    %al,(%eax)
c020d6b7:	00 00                	add    %al,(%eax)
c020d6b9:	00 00                	add    %al,(%eax)
c020d6bb:	00 44 00 65          	add    %al,0x65(%eax,%eax,1)
c020d6bf:	00 3b                	add    %bh,(%ebx)
c020d6c1:	00 00                	add    %al,(%eax)
c020d6c3:	00 00                	add    %al,(%eax)
c020d6c5:	00 00                	add    %al,(%eax)
c020d6c7:	00 44 00 66          	add    %al,0x66(%eax,%eax,1)
c020d6cb:	00 3d 00 00 00 00    	add    %bh,0x0
c020d6d1:	00 00                	add    %al,(%eax)
c020d6d3:	00 44 00 65          	add    %al,0x65(%eax,%eax,1)
c020d6d7:	00 47 00             	add    %al,0x0(%edi)
c020d6da:	00 00                	add    %al,(%eax)
c020d6dc:	00 00                	add    %al,(%eax)
c020d6de:	00 00                	add    %al,(%eax)
c020d6e0:	44                   	inc    %esp
c020d6e1:	00 65 00             	add    %ah,0x0(%ebp)
c020d6e4:	4b                   	dec    %ebx
c020d6e5:	00 00                	add    %al,(%eax)
c020d6e7:	00 00                	add    %al,(%eax)
c020d6e9:	00 00                	add    %al,(%eax)
c020d6eb:	00 44 00 65          	add    %al,0x65(%eax,%eax,1)
c020d6ef:	00 53 00             	add    %dl,0x0(%ebx)
c020d6f2:	00 00                	add    %al,(%eax)
c020d6f4:	00 00                	add    %al,(%eax)
c020d6f6:	00 00                	add    %al,(%eax)
c020d6f8:	44                   	inc    %esp
c020d6f9:	00 69 00             	add    %ch,0x0(%ecx)
c020d6fc:	55                   	push   %ebp
c020d6fd:	00 00                	add    %al,(%eax)
c020d6ff:	00 00                	add    %al,(%eax)
c020d701:	00 00                	add    %al,(%eax)
c020d703:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c020d707:	00 5e 00             	add    %bl,0x0(%esi)
c020d70a:	00 00                	add    %al,(%eax)
c020d70c:	00 00                	add    %al,(%eax)
c020d70e:	00 00                	add    %al,(%eax)
c020d710:	44                   	inc    %esp
c020d711:	00 69 00             	add    %ch,0x0(%ecx)
c020d714:	68 00 00 00 00       	push   $0x0
c020d719:	00 00                	add    %al,(%eax)
c020d71b:	00 44 00 69          	add    %al,0x69(%eax,%eax,1)
c020d71f:	00 6c 00 00          	add    %ch,0x0(%eax,%eax,1)
c020d723:	00 00                	add    %al,(%eax)
c020d725:	00 00                	add    %al,(%eax)
c020d727:	00 44 00 6d          	add    %al,0x6d(%eax,%eax,1)
c020d72b:	00 74 00 00          	add    %dh,0x0(%eax,%eax,1)
c020d72f:	00 1a                	add    %bl,(%edx)
c020d731:	06                   	push   %es
c020d732:	00 00                	add    %al,(%eax)
c020d734:	80 00 56             	addb   $0x56,(%eax)
c020d737:	00 fc                	add    %bh,%ah
c020d739:	ff                   	(bad)  
c020d73a:	ff                   	(bad)  
c020d73b:	ff 9b 05 00 00 80    	lcall  *-0x7ffffffb(%ebx)
c020d741:	00 57 00             	add    %dl,0x0(%edi)
c020d744:	f8                   	clc    
c020d745:	ff                   	(bad)  
c020d746:	ff                   	(bad)  
c020d747:	ff                   	(bad)  
c020d748:	b8 0b 00 00 80       	mov    $0x8000000b,%eax
c020d74d:	00 58 00             	add    %bl,0x0(%eax)
c020d750:	f4                   	hlt    
c020d751:	ff                   	(bad)  
c020d752:	ff                   	(bad)  
c020d753:	ff 00                	incl   (%eax)
c020d755:	00 00                	add    %al,(%eax)
c020d757:	00 c0                	add    %al,%al
	...
c020d761:	00 00                	add    %al,(%eax)
c020d763:	00 e0                	add    %ah,%al
c020d765:	00 00                	add    %al,(%eax)
c020d767:	00 76 00             	add    %dh,0x0(%esi)
c020d76a:	00 00                	add    %al,(%eax)
c020d76c:	00 00                	add    %al,(%eax)
c020d76e:	00 00                	add    %al,(%eax)
c020d770:	24 00                	and    $0x0,%al
c020d772:	00 00                	add    %al,(%eax)
c020d774:	76 00                	jbe    c020d776 <interrupt_handlers+0x1f16>
c020d776:	00 00                	add    %al,(%eax)
c020d778:	00 00                	add    %al,(%eax)
c020d77a:	00 00                	add    %al,(%eax)
c020d77c:	4e                   	dec    %esi
c020d77d:	00 00                	add    %al,(%eax)
c020d77f:	00 67 29             	add    %ah,0x29(%edi)
c020d782:	10 c0                	adc    %al,%al
c020d784:	c1 0b 00             	rorl   $0x0,(%ebx)
c020d787:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d78a:	73 00                	jae    c020d78c <interrupt_handlers+0x1f2c>
c020d78c:	67 29 10             	sub    %edx,(%bx,%si)
c020d78f:	c0 cf 0b             	ror    $0xb,%bh
c020d792:	00 00                	add    %al,(%eax)
c020d794:	a0 00 73 00 08       	mov    0x8007300,%al
c020d799:	00 00                	add    %al,(%eax)
c020d79b:	00 dc                	add    %bl,%ah
c020d79d:	0b 00                	or     (%eax),%eax
c020d79f:	00 a0 00 73 00 0c    	add    %ah,0xc007300(%eax)
c020d7a5:	00 00                	add    %al,(%eax)
c020d7a7:	00 00                	add    %al,(%eax)
c020d7a9:	00 00                	add    %al,(%eax)
c020d7ab:	00 2e                	add    %ch,(%esi)
c020d7ad:	00 00                	add    %al,(%eax)
c020d7af:	00 67 29             	add    %ah,0x29(%edi)
c020d7b2:	10 c0                	adc    %al,%al
c020d7b4:	00 00                	add    %al,(%eax)
c020d7b6:	00 00                	add    %al,(%eax)
c020d7b8:	44                   	inc    %esp
c020d7b9:	00 74 00 00          	add    %dh,0x0(%eax,%eax,1)
c020d7bd:	00 00                	add    %al,(%eax)
c020d7bf:	00 00                	add    %al,(%eax)
c020d7c1:	00 00                	add    %al,(%eax)
c020d7c3:	00 44 00 75          	add    %al,0x75(%eax,%eax,1)
c020d7c7:	00 06                	add    %al,(%esi)
c020d7c9:	00 00                	add    %al,(%eax)
c020d7cb:	00 00                	add    %al,(%eax)
c020d7cd:	00 00                	add    %al,(%eax)
c020d7cf:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c020d7d3:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d7d6:	00 00                	add    %al,(%eax)
c020d7d8:	00 00                	add    %al,(%eax)
c020d7da:	00 00                	add    %al,(%eax)
c020d7dc:	44                   	inc    %esp
c020d7dd:	00 7b 00             	add    %bh,0x0(%ebx)
c020d7e0:	12 00                	adc    (%eax),%al
c020d7e2:	00 00                	add    %al,(%eax)
c020d7e4:	00 00                	add    %al,(%eax)
c020d7e6:	00 00                	add    %al,(%eax)
c020d7e8:	44                   	inc    %esp
c020d7e9:	00 7c 00 1f          	add    %bh,0x1f(%eax,%eax,1)
c020d7ed:	00 00                	add    %al,(%eax)
c020d7ef:	00 00                	add    %al,(%eax)
c020d7f1:	00 00                	add    %al,(%eax)
c020d7f3:	00 44 00 7d          	add    %al,0x7d(%eax,%eax,1)
c020d7f7:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020d7fa:	00 00                	add    %al,(%eax)
c020d7fc:	00 00                	add    %al,(%eax)
c020d7fe:	00 00                	add    %al,(%eax)
c020d800:	44                   	inc    %esp
c020d801:	00 7e 00             	add    %bh,0x0(%esi)
c020d804:	32 00                	xor    (%eax),%al
c020d806:	00 00                	add    %al,(%eax)
c020d808:	00 00                	add    %al,(%eax)
c020d80a:	00 00                	add    %al,(%eax)
c020d80c:	44                   	inc    %esp
c020d80d:	00 80 00 42 00 00    	add    %al,0x4200(%eax)
c020d813:	00 00                	add    %al,(%eax)
c020d815:	00 00                	add    %al,(%eax)
c020d817:	00 44 00 82          	add    %al,-0x7e(%eax,%eax,1)
c020d81b:	00 4b 00             	add    %cl,0x0(%ebx)
c020d81e:	00 00                	add    %al,(%eax)
c020d820:	00 00                	add    %al,(%eax)
c020d822:	00 00                	add    %al,(%eax)
c020d824:	44                   	inc    %esp
c020d825:	00 83 00 59 00 00    	add    %al,0x5900(%ebx)
c020d82b:	00 e8                	add    %ch,%al
c020d82d:	0b 00                	or     (%eax),%eax
c020d82f:	00 80 00 75 00 fc    	add    %al,-0x3ff8b00(%eax)
c020d835:	ff                   	(bad)  
c020d836:	ff                   	(bad)  
c020d837:	ff f2                	push   %edx
c020d839:	0b 00                	or     (%eax),%eax
c020d83b:	00 80 00 76 00 f8    	add    %al,-0x7ff8a00(%eax)
c020d841:	ff                   	(bad)  
c020d842:	ff                   	(bad)  
c020d843:	ff                   	(bad)  
c020d844:	fc                   	cld    
c020d845:	0b 00                	or     (%eax),%eax
c020d847:	00 80 00 78 00 f7    	add    %al,-0x8ff8800(%eax)
c020d84d:	ff                   	(bad)  
c020d84e:	ff                   	(bad)  
c020d84f:	ff 05 0c 00 00 80    	incl   0x8000000c
c020d855:	00 78 00             	add    %bh,0x0(%eax)
c020d858:	f6 ff                	idiv   %bh
c020d85a:	ff                   	(bad)  
c020d85b:	ff 00                	incl   (%eax)
c020d85d:	00 00                	add    %al,(%eax)
c020d85f:	00 c0                	add    %al,%al
	...
c020d869:	00 00                	add    %al,(%eax)
c020d86b:	00 e0                	add    %ah,%al
c020d86d:	00 00                	add    %al,(%eax)
c020d86f:	00 5b 00             	add    %bl,0x0(%ebx)
c020d872:	00 00                	add    %al,(%eax)
c020d874:	00 00                	add    %al,(%eax)
c020d876:	00 00                	add    %al,(%eax)
c020d878:	24 00                	and    $0x0,%al
c020d87a:	00 00                	add    %al,(%eax)
c020d87c:	5b                   	pop    %ebx
c020d87d:	00 00                	add    %al,(%eax)
c020d87f:	00 00                	add    %al,(%eax)
c020d881:	00 00                	add    %al,(%eax)
c020d883:	00 4e 00             	add    %cl,0x0(%esi)
c020d886:	00 00                	add    %al,(%eax)
c020d888:	c2 29 10             	ret    $0x1029
c020d88b:	c0 0e 0c             	rorb   $0xc,(%esi)
c020d88e:	00 00                	add    %al,(%eax)
c020d890:	24 00                	and    $0x0,%al
c020d892:	8a 00                	mov    (%eax),%al
c020d894:	c2 29 10             	ret    $0x1029
c020d897:	c0 1d 0c 00 00 a0 00 	rcrb   $0x0,0xa000000c
c020d89e:	8a 00                	mov    (%eax),%al
c020d8a0:	08 00                	or     %al,(%eax)
c020d8a2:	00 00                	add    %al,(%eax)
c020d8a4:	2a 0c 00             	sub    (%eax,%eax,1),%cl
c020d8a7:	00 a0 00 8a 00 0c    	add    %ah,0xc008a00(%eax)
c020d8ad:	00 00                	add    %al,(%eax)
c020d8af:	00 00                	add    %al,(%eax)
c020d8b1:	00 00                	add    %al,(%eax)
c020d8b3:	00 2e                	add    %ch,(%esi)
c020d8b5:	00 00                	add    %al,(%eax)
c020d8b7:	00 c2                	add    %al,%dl
c020d8b9:	29 10                	sub    %edx,(%eax)
c020d8bb:	c0 00 00             	rolb   $0x0,(%eax)
c020d8be:	00 00                	add    %al,(%eax)
c020d8c0:	44                   	inc    %esp
c020d8c1:	00 8b 00 00 00 00    	add    %cl,0x0(%ebx)
c020d8c7:	00 00                	add    %al,(%eax)
c020d8c9:	00 00                	add    %al,(%eax)
c020d8cb:	00 44 00 8c          	add    %al,-0x74(%eax,%eax,1)
c020d8cf:	00 06                	add    %al,(%esi)
c020d8d1:	00 00                	add    %al,(%eax)
c020d8d3:	00 00                	add    %al,(%eax)
c020d8d5:	00 00                	add    %al,(%eax)
c020d8d7:	00 44 00 8d          	add    %al,-0x73(%eax,%eax,1)
c020d8db:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d8de:	00 00                	add    %al,(%eax)
c020d8e0:	00 00                	add    %al,(%eax)
c020d8e2:	00 00                	add    %al,(%eax)
c020d8e4:	44                   	inc    %esp
c020d8e5:	00 8f 00 12 00 00    	add    %cl,0x1200(%edi)
c020d8eb:	00 00                	add    %al,(%eax)
c020d8ed:	00 00                	add    %al,(%eax)
c020d8ef:	00 44 00 8f          	add    %al,-0x71(%eax,%eax,1)
c020d8f3:	00 18                	add    %bl,(%eax)
c020d8f5:	00 00                	add    %al,(%eax)
c020d8f7:	00 00                	add    %al,(%eax)
c020d8f9:	00 00                	add    %al,(%eax)
c020d8fb:	00 44 00 90          	add    %al,-0x70(%eax,%eax,1)
c020d8ff:	00 1e                	add    %bl,(%esi)
c020d901:	00 00                	add    %al,(%eax)
c020d903:	00 00                	add    %al,(%eax)
c020d905:	00 00                	add    %al,(%eax)
c020d907:	00 44 00 94          	add    %al,-0x6c(%eax,%eax,1)
c020d90b:	00 23                	add    %ah,(%ebx)
c020d90d:	00 00                	add    %al,(%eax)
c020d90f:	00 00                	add    %al,(%eax)
c020d911:	00 00                	add    %al,(%eax)
c020d913:	00 44 00 95          	add    %al,-0x6b(%eax,%eax,1)
c020d917:	00 32                	add    %dh,(%edx)
c020d919:	00 00                	add    %al,(%eax)
c020d91b:	00 00                	add    %al,(%eax)
c020d91d:	00 00                	add    %al,(%eax)
c020d91f:	00 44 00 97          	add    %al,-0x69(%eax,%eax,1)
c020d923:	00 45 00             	add    %al,0x0(%ebp)
c020d926:	00 00                	add    %al,(%eax)
c020d928:	00 00                	add    %al,(%eax)
c020d92a:	00 00                	add    %al,(%eax)
c020d92c:	44                   	inc    %esp
c020d92d:	00 99 00 48 00 00    	add    %bl,0x4800(%ecx)
c020d933:	00 45 0c             	add    %al,0xc(%ebp)
c020d936:	00 00                	add    %al,(%eax)
c020d938:	80 00 8c             	addb   $0x8c,(%eax)
c020d93b:	00 fc                	add    %bh,%ah
c020d93d:	ff                   	(bad)  
c020d93e:	ff                   	(bad)  
c020d93f:	ff 4e 0c             	decl   0xc(%esi)
c020d942:	00 00                	add    %al,(%eax)
c020d944:	80 00 8d             	addb   $0x8d,(%eax)
c020d947:	00 f8                	add    %bh,%al
c020d949:	ff                   	(bad)  
c020d94a:	ff                   	(bad)  
c020d94b:	ff 00                	incl   (%eax)
c020d94d:	00 00                	add    %al,(%eax)
c020d94f:	00 c0                	add    %al,%al
	...
c020d959:	00 00                	add    %al,(%eax)
c020d95b:	00 e0                	add    %ah,%al
c020d95d:	00 00                	add    %al,(%eax)
c020d95f:	00 4a 00             	add    %cl,0x0(%edx)
c020d962:	00 00                	add    %al,(%eax)
c020d964:	00 00                	add    %al,(%eax)
c020d966:	00 00                	add    %al,(%eax)
c020d968:	24 00                	and    $0x0,%al
c020d96a:	00 00                	add    %al,(%eax)
c020d96c:	4a                   	dec    %edx
c020d96d:	00 00                	add    %al,(%eax)
c020d96f:	00 00                	add    %al,(%eax)
c020d971:	00 00                	add    %al,(%eax)
c020d973:	00 4e 00             	add    %cl,0x0(%esi)
c020d976:	00 00                	add    %al,(%eax)
c020d978:	0c 2a                	or     $0x2a,%al
c020d97a:	10 c0                	adc    %al,%al
c020d97c:	57                   	push   %edi
c020d97d:	0c 00                	or     $0x0,%al
c020d97f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020d982:	9f                   	lahf   
c020d983:	00 0c 2a             	add    %cl,(%edx,%ebp,1)
c020d986:	10 c0                	adc    %al,%al
c020d988:	66                   	data16
c020d989:	0c 00                	or     $0x0,%al
c020d98b:	00 a0 00 9f 00 08    	add    %ah,0x8009f00(%eax)
c020d991:	00 00                	add    %al,(%eax)
c020d993:	00 dc                	add    %bl,%ah
c020d995:	0b 00                	or     (%eax),%eax
c020d997:	00 a0 00 9f 00 0c    	add    %ah,0xc009f00(%eax)
c020d99d:	00 00                	add    %al,(%eax)
c020d99f:	00 00                	add    %al,(%eax)
c020d9a1:	00 00                	add    %al,(%eax)
c020d9a3:	00 2e                	add    %ch,(%esi)
c020d9a5:	00 00                	add    %al,(%eax)
c020d9a7:	00 0c 2a             	add    %cl,(%edx,%ebp,1)
c020d9aa:	10 c0                	adc    %al,%al
c020d9ac:	00 00                	add    %al,(%eax)
c020d9ae:	00 00                	add    %al,(%eax)
c020d9b0:	44                   	inc    %esp
c020d9b1:	00 a0 00 00 00 00    	add    %ah,0x0(%eax)
c020d9b7:	00 00                	add    %al,(%eax)
c020d9b9:	00 00                	add    %al,(%eax)
c020d9bb:	00 44 00 a1          	add    %al,-0x5f(%eax,%eax,1)
c020d9bf:	00 06                	add    %al,(%esi)
c020d9c1:	00 00                	add    %al,(%eax)
c020d9c3:	00 00                	add    %al,(%eax)
c020d9c5:	00 00                	add    %al,(%eax)
c020d9c7:	00 44 00 a2          	add    %al,-0x5e(%eax,%eax,1)
c020d9cb:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020d9ce:	00 00                	add    %al,(%eax)
c020d9d0:	00 00                	add    %al,(%eax)
c020d9d2:	00 00                	add    %al,(%eax)
c020d9d4:	44                   	inc    %esp
c020d9d5:	00 a4 00 12 00 00 00 	add    %ah,0x12(%eax,%eax,1)
c020d9dc:	00 00                	add    %al,(%eax)
c020d9de:	00 00                	add    %al,(%eax)
c020d9e0:	44                   	inc    %esp
c020d9e1:	00 a4 00 18 00 00 00 	add    %ah,0x18(%eax,%eax,1)
c020d9e8:	00 00                	add    %al,(%eax)
c020d9ea:	00 00                	add    %al,(%eax)
c020d9ec:	44                   	inc    %esp
c020d9ed:	00 a5 00 1e 00 00    	add    %ah,0x1e00(%ebp)
c020d9f3:	00 00                	add    %al,(%eax)
c020d9f5:	00 00                	add    %al,(%eax)
c020d9f7:	00 44 00 a8          	add    %al,-0x58(%eax,%eax,1)
c020d9fb:	00 25 00 00 00 00    	add    %ah,0x0
c020da01:	00 00                	add    %al,(%eax)
c020da03:	00 44 00 a8          	add    %al,-0x58(%eax,%eax,1)
c020da07:	00 26                	add    %ah,(%esi)
c020da09:	00 00                	add    %al,(%eax)
c020da0b:	00 00                	add    %al,(%eax)
c020da0d:	00 00                	add    %al,(%eax)
c020da0f:	00 44 00 ac          	add    %al,-0x54(%eax,%eax,1)
c020da13:	00 39                	add    %bh,(%ecx)
c020da15:	00 00                	add    %al,(%eax)
c020da17:	00 00                	add    %al,(%eax)
c020da19:	00 00                	add    %al,(%eax)
c020da1b:	00 44 00 ad          	add    %al,-0x53(%eax,%eax,1)
c020da1f:	00 3b                	add    %bh,(%ebx)
c020da21:	00 00                	add    %al,(%eax)
c020da23:	00 00                	add    %al,(%eax)
c020da25:	00 00                	add    %al,(%eax)
c020da27:	00 44 00 ac          	add    %al,-0x54(%eax,%eax,1)
c020da2b:	00 4a 00             	add    %cl,0x0(%edx)
c020da2e:	00 00                	add    %al,(%eax)
c020da30:	00 00                	add    %al,(%eax)
c020da32:	00 00                	add    %al,(%eax)
c020da34:	44                   	inc    %esp
c020da35:	00 b0 00 5d 00 00    	add    %dh,0x5d00(%eax)
c020da3b:	00 00                	add    %al,(%eax)
c020da3d:	00 00                	add    %al,(%eax)
c020da3f:	00 44 00 b1          	add    %al,-0x4f(%eax,%eax,1)
c020da43:	00 60 00             	add    %ah,0x0(%eax)
c020da46:	00 00                	add    %al,(%eax)
c020da48:	e8 0b 00 00 80       	call   4020da58 <MBOOT_HEADER_MAGIC+0x24732a56>
c020da4d:	00 a1 00 fc ff ff    	add    %ah,-0x400(%ecx)
c020da53:	ff 45 0c             	incl   0xc(%ebp)
c020da56:	00 00                	add    %al,(%eax)
c020da58:	80 00 a2             	addb   $0xa2,(%eax)
c020da5b:	00 f8                	add    %bh,%al
c020da5d:	ff                   	(bad)  
c020da5e:	ff                   	(bad)  
c020da5f:	ff 00                	incl   (%eax)
c020da61:	00 00                	add    %al,(%eax)
c020da63:	00 c0                	add    %al,%al
	...
c020da6d:	00 00                	add    %al,(%eax)
c020da6f:	00 e0                	add    %ah,%al
c020da71:	00 00                	add    %al,(%eax)
c020da73:	00 62 00             	add    %ah,0x0(%edx)
c020da76:	00 00                	add    %al,(%eax)
c020da78:	00 00                	add    %al,(%eax)
c020da7a:	00 00                	add    %al,(%eax)
c020da7c:	24 00                	and    $0x0,%al
c020da7e:	00 00                	add    %al,(%eax)
c020da80:	62 00                	bound  %eax,(%eax)
c020da82:	00 00                	add    %al,(%eax)
c020da84:	00 00                	add    %al,(%eax)
c020da86:	00 00                	add    %al,(%eax)
c020da88:	4e                   	dec    %esi
c020da89:	00 00                	add    %al,(%eax)
c020da8b:	00 6e 2a             	add    %ch,0x2a(%esi)
c020da8e:	10 c0                	adc    %al,%al
c020da90:	73 0c                	jae    c020da9e <interrupt_handlers+0x223e>
c020da92:	00 00                	add    %al,(%eax)
c020da94:	24 00                	and    $0x0,%al
c020da96:	b7 00                	mov    $0x0,%bh
c020da98:	6e                   	outsb  %ds:(%esi),(%dx)
c020da99:	2a 10                	sub    (%eax),%dl
c020da9b:	c0 81 0c 00 00 a0 00 	rolb   $0x0,-0x5ffffff4(%ecx)
c020daa2:	b7 00                	mov    $0x0,%bh
c020daa4:	08 00                	or     %al,(%eax)
c020daa6:	00 00                	add    %al,(%eax)
c020daa8:	00 00                	add    %al,(%eax)
c020daaa:	00 00                	add    %al,(%eax)
c020daac:	2e 00 00             	add    %al,%cs:(%eax)
c020daaf:	00 6e 2a             	add    %ch,0x2a(%esi)
c020dab2:	10 c0                	adc    %al,%al
c020dab4:	00 00                	add    %al,(%eax)
c020dab6:	00 00                	add    %al,(%eax)
c020dab8:	44                   	inc    %esp
c020dab9:	00 b8 00 00 00 00    	add    %bh,0x0(%eax)
c020dabf:	00 00                	add    %al,(%eax)
c020dac1:	00 00                	add    %al,(%eax)
c020dac3:	00 44 00 bb          	add    %al,-0x45(%eax,%eax,1)
c020dac7:	00 06                	add    %al,(%esi)
c020dac9:	00 00                	add    %al,(%eax)
c020dacb:	00 00                	add    %al,(%eax)
c020dacd:	00 00                	add    %al,(%eax)
c020dacf:	00 44 00 bd          	add    %al,-0x43(%eax,%eax,1)
c020dad3:	00 0d 00 00 00 00    	add    %cl,0x0
c020dad9:	00 00                	add    %al,(%eax)
c020dadb:	00 44 00 be          	add    %al,-0x42(%eax,%eax,1)
c020dadf:	00 0f                	add    %cl,(%edi)
c020dae1:	00 00                	add    %al,(%eax)
c020dae3:	00 00                	add    %al,(%eax)
c020dae5:	00 00                	add    %al,(%eax)
c020dae7:	00 44 00 bd          	add    %al,-0x43(%eax,%eax,1)
c020daeb:	00 13                	add    %dl,(%ebx)
c020daed:	00 00                	add    %al,(%eax)
c020daef:	00 00                	add    %al,(%eax)
c020daf1:	00 00                	add    %al,(%eax)
c020daf3:	00 44 00 c1          	add    %al,-0x3f(%eax,%eax,1)
c020daf7:	00 26                	add    %ah,(%esi)
c020daf9:	00 00                	add    %al,(%eax)
c020dafb:	00 00                	add    %al,(%eax)
c020dafd:	00 00                	add    %al,(%eax)
c020daff:	00 44 00 c2          	add    %al,-0x3e(%eax,%eax,1)
c020db03:	00 29                	add    %ch,(%ecx)
c020db05:	00 00                	add    %al,(%eax)
c020db07:	00 1a                	add    %bl,(%edx)
c020db09:	06                   	push   %es
c020db0a:	00 00                	add    %al,(%eax)
c020db0c:	80 00 b9             	addb   $0xb9,(%eax)
c020db0f:	00 fc                	add    %bh,%ah
c020db11:	ff                   	(bad)  
c020db12:	ff                   	(bad)  
c020db13:	ff 00                	incl   (%eax)
c020db15:	00 00                	add    %al,(%eax)
c020db17:	00 c0                	add    %al,%al
	...
c020db21:	00 00                	add    %al,(%eax)
c020db23:	00 e0                	add    %ah,%al
c020db25:	00 00                	add    %al,(%eax)
c020db27:	00 2b                	add    %ch,(%ebx)
c020db29:	00 00                	add    %al,(%eax)
c020db2b:	00 00                	add    %al,(%eax)
c020db2d:	00 00                	add    %al,(%eax)
c020db2f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020db32:	00 00                	add    %al,(%eax)
c020db34:	2b 00                	sub    (%eax),%eax
c020db36:	00 00                	add    %al,(%eax)
c020db38:	00 00                	add    %al,(%eax)
c020db3a:	00 00                	add    %al,(%eax)
c020db3c:	4e                   	dec    %esi
c020db3d:	00 00                	add    %al,(%eax)
c020db3f:	00 99 2a 10 c0 00    	add    %bl,0xc0102a(%ecx)
c020db45:	00 00                	add    %al,(%eax)
c020db47:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c020db4b:	00 99 2a 10 c0 19    	add    %bl,0x19c0102a(%ecx)
c020db51:	00 00                	add    %al,(%eax)
c020db53:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c020db57:	00 9c 2a 10 c0 8d 0c 	add    %bl,0xc8dc010(%edx,%ebp,1)
c020db5e:	00 00                	add    %al,(%eax)
c020db60:	64 00 02             	add    %al,%fs:(%edx)
c020db63:	00 9c 2a 10 c0 4e 00 	add    %bl,0x4ec010(%edx,%ebp,1)
c020db6a:	00 00                	add    %al,(%eax)
c020db6c:	3c 00                	cmp    $0x0,%al
c020db6e:	00 00                	add    %al,(%eax)
c020db70:	00 00                	add    %al,(%eax)
c020db72:	00 00                	add    %al,(%eax)
c020db74:	5d                   	pop    %ebp
c020db75:	00 00                	add    %al,(%eax)
c020db77:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020db7d:	00 00                	add    %al,(%eax)
c020db7f:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020db85:	00 00                	add    %al,(%eax)
c020db87:	00 00                	add    %al,(%eax)
c020db89:	00 00                	add    %al,(%eax)
c020db8b:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020db91:	00 00                	add    %al,(%eax)
c020db93:	00 00                	add    %al,(%eax)
c020db95:	00 00                	add    %al,(%eax)
c020db97:	00 d0                	add    %dl,%al
c020db99:	00 00                	add    %al,(%eax)
c020db9b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dba1:	00 00                	add    %al,(%eax)
c020dba3:	00 fb                	add    %bh,%bl
c020dba5:	00 00                	add    %al,(%eax)
c020dba7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dbad:	00 00                	add    %al,(%eax)
c020dbaf:	00 2b                	add    %ch,(%ebx)
c020dbb1:	01 00                	add    %eax,(%eax)
c020dbb3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dbb9:	00 00                	add    %al,(%eax)
c020dbbb:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020dbbf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dbc5:	00 00                	add    %al,(%eax)
c020dbc7:	00 c1                	add    %al,%cl
c020dbc9:	01 00                	add    %eax,(%eax)
c020dbcb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dbd1:	00 00                	add    %al,(%eax)
c020dbd3:	00 ec                	add    %ch,%ah
c020dbd5:	01 00                	add    %eax,(%eax)
c020dbd7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dbdd:	00 00                	add    %al,(%eax)
c020dbdf:	00 1b                	add    %bl,(%ebx)
c020dbe1:	02 00                	add    (%eax),%al
c020dbe3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dbe9:	00 00                	add    %al,(%eax)
c020dbeb:	00 45 02             	add    %al,0x2(%ebp)
c020dbee:	00 00                	add    %al,(%eax)
c020dbf0:	80 00 00             	addb   $0x0,(%eax)
c020dbf3:	00 00                	add    %al,(%eax)
c020dbf5:	00 00                	add    %al,(%eax)
c020dbf7:	00 6e 02             	add    %ch,0x2(%esi)
c020dbfa:	00 00                	add    %al,(%eax)
c020dbfc:	80 00 00             	addb   $0x0,(%eax)
c020dbff:	00 00                	add    %al,(%eax)
c020dc01:	00 00                	add    %al,(%eax)
c020dc03:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020dc09:	00 00                	add    %al,(%eax)
c020dc0b:	00 00                	add    %al,(%eax)
c020dc0d:	00 00                	add    %al,(%eax)
c020dc0f:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020dc15:	00 00                	add    %al,(%eax)
c020dc17:	00 00                	add    %al,(%eax)
c020dc19:	00 00                	add    %al,(%eax)
c020dc1b:	00 c4                	add    %al,%ah
c020dc1d:	02 00                	add    (%eax),%al
c020dc1f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dc25:	00 00                	add    %al,(%eax)
c020dc27:	00 e3                	add    %ah,%bl
c020dc29:	02 00                	add    (%eax),%al
c020dc2b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dc31:	00 00                	add    %al,(%eax)
c020dc33:	00 02                	add    %al,(%edx)
c020dc35:	03 00                	add    (%eax),%eax
c020dc37:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dc3d:	00 00                	add    %al,(%eax)
c020dc3f:	00 23                	add    %ah,(%ebx)
c020dc41:	03 00                	add    (%eax),%eax
c020dc43:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dc49:	00 00                	add    %al,(%eax)
c020dc4b:	00 9c 0c 00 00 82 00 	add    %bl,0x820000(%esp,%ecx,1)
c020dc52:	00 00                	add    %al,(%eax)
c020dc54:	00 00                	add    %al,(%eax)
c020dc56:	00 00                	add    %al,(%eax)
c020dc58:	ac                   	lods   %ds:(%esi),%al
c020dc59:	0c 00                	or     $0x0,%al
c020dc5b:	00 82 00 00 00 4b    	add    %al,0x4b000000(%edx)
c020dc61:	ea 00 00 47 03 00 00 	ljmp   $0x0,$0x3470000
c020dc68:	c2 00 00             	ret    $0x0
c020dc6b:	00 26                	add    %ah,(%esi)
c020dc6d:	19 00                	sbb    %eax,(%eax)
c020dc6f:	00 ba 0c 00 00 82    	add    %bh,-0x7dfffff4(%edx)
c020dc75:	00 00                	add    %al,(%eax)
c020dc77:	00 b6 d4 00 00 ce    	add    %dh,-0x31ffff2c(%esi)
c020dc7d:	0c 00                	or     $0x0,%al
c020dc7f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dc85:	00 00                	add    %al,(%eax)
c020dc87:	00 0e                	add    %cl,(%esi)
c020dc89:	0f 00 00             	sldt   (%eax)
c020dc8c:	80 00 3b             	addb   $0x3b,(%eax)
c020dc8f:	00 00                	add    %al,(%eax)
c020dc91:	00 00                	add    %al,(%eax)
c020dc93:	00 27                	add    %ah,(%edi)
c020dc95:	0f 00 00             	sldt   (%eax)
c020dc98:	80 00 4c             	addb   $0x4c,(%eax)
	...
c020dca3:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020dca9:	00 00                	add    %al,(%eax)
c020dcab:	00 cd                	add    %cl,%ch
c020dcad:	0f 00 00             	sldt   (%eax)
c020dcb0:	80 00 2f             	addb   $0x2f,(%eax)
c020dcb3:	00 00                	add    %al,(%eax)
c020dcb5:	00 00                	add    %al,(%eax)
c020dcb7:	00 48 11             	add    %cl,0x11(%eax)
c020dcba:	00 00                	add    %al,(%eax)
c020dcbc:	80 00 3f             	addb   $0x3f,(%eax)
c020dcbf:	00 00                	add    %al,(%eax)
c020dcc1:	00 00                	add    %al,(%eax)
c020dcc3:	00 3d 12 00 00 80    	add    %bh,0x80000012
c020dcc9:	00 4c 00 00          	add    %cl,0x0(%eax,%eax,1)
c020dccd:	00 00                	add    %al,(%eax)
c020dccf:	00 d3                	add    %dl,%bl
c020dcd1:	12 00                	adc    (%eax),%al
c020dcd3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dcd9:	00 00                	add    %al,(%eax)
c020dcdb:	00 4a 13             	add    %cl,0x13(%edx)
c020dcde:	00 00                	add    %al,(%eax)
c020dce0:	80 00 53             	addb   $0x53,(%eax)
	...
c020dceb:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020dcf1:	00 00                	add    %al,(%eax)
c020dcf3:	00 37                	add    %dh,(%edi)
c020dcf5:	03 00                	add    (%eax),%eax
c020dcf7:	00 c2                	add    %al,%dl
c020dcf9:	00 00                	add    %al,(%eax)
c020dcfb:	00 00                	add    %al,(%eax)
c020dcfd:	00 00                	add    %al,(%eax)
c020dcff:	00 cb                	add    %cl,%bl
c020dd01:	03 00                	add    (%eax),%eax
c020dd03:	00 c2                	add    %al,%dl
c020dd05:	00 00                	add    %al,(%eax)
c020dd07:	00 f5                	add    %dh,%ch
c020dd09:	5f                   	pop    %edi
c020dd0a:	00 00                	add    %al,(%eax)
c020dd0c:	00 00                	add    %al,(%eax)
c020dd0e:	00 00                	add    %al,(%eax)
c020dd10:	a2 00 00 00 00       	mov    %al,0x0
c020dd15:	00 00                	add    %al,(%eax)
c020dd17:	00 5e 13             	add    %bl,0x13(%esi)
c020dd1a:	00 00                	add    %al,(%eax)
c020dd1c:	24 00                	and    $0x0,%al
c020dd1e:	1a 00                	sbb    (%eax),%al
c020dd20:	9c                   	pushf  
c020dd21:	2a 10                	sub    (%eax),%dl
c020dd23:	c0 00 00             	rolb   $0x0,(%eax)
c020dd26:	00 00                	add    %al,(%eax)
c020dd28:	2e 00 00             	add    %al,%cs:(%eax)
c020dd2b:	00 9c 2a 10 c0 00 00 	add    %bl,0xc010(%edx,%ebp,1)
c020dd32:	00 00                	add    %al,(%eax)
c020dd34:	44                   	inc    %esp
c020dd35:	00 1b                	add    %bl,(%ebx)
	...
c020dd3f:	00 44 00 1c          	add    %al,0x1c(%eax,%eax,1)
c020dd43:	00 06                	add    %al,(%esi)
c020dd45:	00 00                	add    %al,(%eax)
c020dd47:	00 00                	add    %al,(%eax)
c020dd49:	00 00                	add    %al,(%eax)
c020dd4b:	00 44 00 1d          	add    %al,0x1d(%eax,%eax,1)
c020dd4f:	00 3e                	add    %bh,(%esi)
c020dd51:	00 00                	add    %al,(%eax)
c020dd53:	00 00                	add    %al,(%eax)
c020dd55:	00 00                	add    %al,(%eax)
c020dd57:	00 24 00             	add    %ah,(%eax,%eax,1)
c020dd5a:	00 00                	add    %al,(%eax)
c020dd5c:	40                   	inc    %eax
c020dd5d:	00 00                	add    %al,(%eax)
c020dd5f:	00 00                	add    %al,(%eax)
c020dd61:	00 00                	add    %al,(%eax)
c020dd63:	00 4e 00             	add    %cl,0x0(%esi)
c020dd66:	00 00                	add    %al,(%eax)
c020dd68:	dc 2a                	fsubrl (%edx)
c020dd6a:	10 c0                	adc    %al,%al
c020dd6c:	71 13                	jno    c020dd81 <interrupt_handlers+0x2521>
c020dd6e:	00 00                	add    %al,(%eax)
c020dd70:	24 00                	and    $0x0,%al
c020dd72:	1f                   	pop    %ds
c020dd73:	00 dc                	add    %bl,%ah
c020dd75:	2a 10                	sub    (%eax),%dl
c020dd77:	c0 00 00             	rolb   $0x0,(%eax)
c020dd7a:	00 00                	add    %al,(%eax)
c020dd7c:	2e 00 00             	add    %al,%cs:(%eax)
c020dd7f:	00 dc                	add    %bl,%ah
c020dd81:	2a 10                	sub    (%eax),%dl
c020dd83:	c0 00 00             	rolb   $0x0,(%eax)
c020dd86:	00 00                	add    %al,(%eax)
c020dd88:	44                   	inc    %esp
c020dd89:	00 20                	add    %ah,(%eax)
	...
c020dd93:	00 44 00 24          	add    %al,0x24(%eax,%eax,1)
c020dd97:	00 06                	add    %al,(%esi)
c020dd99:	00 00                	add    %al,(%eax)
c020dd9b:	00 00                	add    %al,(%eax)
c020dd9d:	00 00                	add    %al,(%eax)
c020dd9f:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c020dda3:	00 12                	add    %dl,(%edx)
c020dda5:	00 00                	add    %al,(%eax)
c020dda7:	00 00                	add    %al,(%eax)
c020dda9:	00 00                	add    %al,(%eax)
c020ddab:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c020ddaf:	00 37                	add    %dh,(%edi)
c020ddb1:	00 00                	add    %al,(%eax)
c020ddb3:	00 00                	add    %al,(%eax)
c020ddb5:	00 00                	add    %al,(%eax)
c020ddb7:	00 44 00 2c          	add    %al,0x2c(%eax,%eax,1)
c020ddbb:	00 57 00             	add    %dl,0x0(%edi)
c020ddbe:	00 00                	add    %al,(%eax)
c020ddc0:	00 00                	add    %al,(%eax)
c020ddc2:	00 00                	add    %al,(%eax)
c020ddc4:	44                   	inc    %esp
c020ddc5:	00 2d 00 77 00 00    	add    %ch,0x7700
c020ddcb:	00 00                	add    %al,(%eax)
c020ddcd:	00 00                	add    %al,(%eax)
c020ddcf:	00 44 00 2e          	add    %al,0x2e(%eax,%eax,1)
c020ddd3:	00 97 00 00 00 00    	add    %dl,0x0(%edi)
c020ddd9:	00 00                	add    %al,(%eax)
c020dddb:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c020dddf:	00 b7 00 00 00 8a    	add    %dh,-0x76000000(%edi)
c020dde5:	13 00                	adc    (%eax),%eax
c020dde7:	00 26                	add    %ah,(%esi)
c020dde9:	00 21                	add    %ah,(%ecx)
c020ddeb:	00 14 50             	add    %dl,(%eax,%edx,2)
c020ddee:	10 c0                	adc    %al,%al
c020ddf0:	97                   	xchg   %eax,%edi
c020ddf1:	13 00                	adc    (%eax),%eax
c020ddf3:	00 80 00 22 00 f6    	add    %al,-0x9ffde00(%eax)
c020ddf9:	ff                   	(bad)  
c020ddfa:	ff                   	(bad)  
c020ddfb:	ff a2 13 00 00 80    	jmp    *-0x7fffffed(%edx)
c020de01:	00 22                	add    %ah,(%edx)
c020de03:	00 f4                	add    %dh,%ah
c020de05:	ff                   	(bad)  
c020de06:	ff                   	(bad)  
c020de07:	ff ad 13 00 00 80    	ljmp   *-0x7fffffed(%ebp)
c020de0d:	00 22                	add    %ah,(%edx)
c020de0f:	00 f2                	add    %dh,%dl
c020de11:	ff                   	(bad)  
c020de12:	ff                   	(bad)  
c020de13:	ff                   	(bad)  
c020de14:	b8 13 00 00 80       	mov    $0x80000013,%eax
c020de19:	00 22                	add    %ah,(%edx)
c020de1b:	00 f0                	add    %dh,%al
c020de1d:	ff                   	(bad)  
c020de1e:	ff                   	(bad)  
c020de1f:	ff 00                	incl   (%eax)
c020de21:	00 00                	add    %al,(%eax)
c020de23:	00 c0                	add    %al,%al
	...
c020de2d:	00 00                	add    %al,(%eax)
c020de2f:	00 e0                	add    %ah,%al
c020de31:	00 00                	add    %al,(%eax)
c020de33:	00 b9 00 00 00 00    	add    %bh,0x0(%ecx)
c020de39:	00 00                	add    %al,(%eax)
c020de3b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020de3e:	00 00                	add    %al,(%eax)
c020de40:	b9 00 00 00 00       	mov    $0x0,%ecx
c020de45:	00 00                	add    %al,(%eax)
c020de47:	00 4e 00             	add    %cl,0x0(%esi)
c020de4a:	00 00                	add    %al,(%eax)
c020de4c:	95                   	xchg   %eax,%ebp
c020de4d:	2b 10                	sub    (%eax),%edx
c020de4f:	c0 c3 13             	rol    $0x13,%bl
c020de52:	00 00                	add    %al,(%eax)
c020de54:	24 00                	and    $0x0,%al
c020de56:	31 00                	xor    %eax,(%eax)
c020de58:	95                   	xchg   %eax,%ebp
c020de59:	2b 10                	sub    (%eax),%edx
c020de5b:	c0 d1 13             	rcl    $0x13,%cl
c020de5e:	00 00                	add    %al,(%eax)
c020de60:	a0 00 31 00 08       	mov    0x8003100,%al
c020de65:	00 00                	add    %al,(%eax)
c020de67:	00 00                	add    %al,(%eax)
c020de69:	00 00                	add    %al,(%eax)
c020de6b:	00 2e                	add    %ch,(%esi)
c020de6d:	00 00                	add    %al,(%eax)
c020de6f:	00 95 2b 10 c0 00    	add    %dl,0xc0102b(%ebp)
c020de75:	00 00                	add    %al,(%eax)
c020de77:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
	...
c020de83:	00 44 00 33          	add    %al,0x33(%eax,%eax,1)
c020de87:	00 06                	add    %al,(%esi)
c020de89:	00 00                	add    %al,(%eax)
c020de8b:	00 00                	add    %al,(%eax)
c020de8d:	00 00                	add    %al,(%eax)
c020de8f:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c020de93:	00 19                	add    %bl,(%ecx)
c020de95:	00 00                	add    %al,(%eax)
c020de97:	00 00                	add    %al,(%eax)
c020de99:	00 00                	add    %al,(%eax)
c020de9b:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c020de9f:	00 1e                	add    %bl,(%esi)
c020dea1:	00 00                	add    %al,(%eax)
c020dea3:	00 00                	add    %al,(%eax)
c020dea5:	00 00                	add    %al,(%eax)
c020dea7:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c020deab:	00 2a                	add    %ch,(%edx)
c020dead:	00 00                	add    %al,(%eax)
c020deaf:	00 00                	add    %al,(%eax)
c020deb1:	00 00                	add    %al,(%eax)
c020deb3:	00 44 00 37          	add    %al,0x37(%eax,%eax,1)
c020deb7:	00 2f                	add    %ch,(%edi)
c020deb9:	00 00                	add    %al,(%eax)
c020debb:	00 00                	add    %al,(%eax)
c020debd:	00 00                	add    %al,(%eax)
c020debf:	00 24 00             	add    %ah,(%eax,%eax,1)
c020dec2:	00 00                	add    %al,(%eax)
c020dec4:	31 00                	xor    %eax,(%eax)
c020dec6:	00 00                	add    %al,(%eax)
c020dec8:	00 00                	add    %al,(%eax)
c020deca:	00 00                	add    %al,(%eax)
c020decc:	4e                   	dec    %esi
c020decd:	00 00                	add    %al,(%eax)
c020decf:	00 c6                	add    %al,%dh
c020ded1:	2b 10                	sub    (%eax),%edx
c020ded3:	c0 dd 13             	rcr    $0x13,%ch
c020ded6:	00 00                	add    %al,(%eax)
c020ded8:	24 00                	and    $0x0,%al
c020deda:	3b 00                	cmp    (%eax),%eax
c020dedc:	c6                   	(bad)  
c020dedd:	2b 10                	sub    (%eax),%edx
c020dedf:	c0 00 00             	rolb   $0x0,(%eax)
c020dee2:	00 00                	add    %al,(%eax)
c020dee4:	2e 00 00             	add    %al,%cs:(%eax)
c020dee7:	00 c6                	add    %al,%dh
c020dee9:	2b 10                	sub    (%eax),%edx
c020deeb:	c0 00 00             	rolb   $0x0,(%eax)
c020deee:	00 00                	add    %al,(%eax)
c020def0:	44                   	inc    %esp
c020def1:	00 3c 00             	add    %bh,(%eax,%eax,1)
	...
c020defc:	44                   	inc    %esp
c020defd:	00 3f                	add    %bh,(%edi)
c020deff:	00 07                	add    %al,(%edi)
c020df01:	00 00                	add    %al,(%eax)
c020df03:	00 00                	add    %al,(%eax)
c020df05:	00 00                	add    %al,(%eax)
c020df07:	00 44 00 41          	add    %al,0x41(%eax,%eax,1)
c020df0b:	00 0c 00             	add    %cl,(%eax,%eax,1)
c020df0e:	00 00                	add    %al,(%eax)
c020df10:	00 00                	add    %al,(%eax)
c020df12:	00 00                	add    %al,(%eax)
c020df14:	44                   	inc    %esp
c020df15:	00 42 00             	add    %al,0x0(%edx)
c020df18:	0e                   	push   %cs
c020df19:	00 00                	add    %al,(%eax)
c020df1b:	00 00                	add    %al,(%eax)
c020df1d:	00 00                	add    %al,(%eax)
c020df1f:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020df23:	00 17                	add    %dl,(%edi)
c020df25:	00 00                	add    %al,(%eax)
c020df27:	00 00                	add    %al,(%eax)
c020df29:	00 00                	add    %al,(%eax)
c020df2b:	00 44 00 44          	add    %al,0x44(%eax,%eax,1)
c020df2f:	00 45 00             	add    %al,0x0(%ebp)
c020df32:	00 00                	add    %al,(%eax)
c020df34:	00 00                	add    %al,(%eax)
c020df36:	00 00                	add    %al,(%eax)
c020df38:	44                   	inc    %esp
c020df39:	00 41 00             	add    %al,0x0(%ecx)
c020df3c:	4d                   	dec    %ebp
c020df3d:	00 00                	add    %al,(%eax)
c020df3f:	00 00                	add    %al,(%eax)
c020df41:	00 00                	add    %al,(%eax)
c020df43:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020df47:	00 53 00             	add    %dl,0x0(%ebx)
c020df4a:	00 00                	add    %al,(%eax)
c020df4c:	f7 13                	notl   (%ebx)
c020df4e:	00 00                	add    %al,(%eax)
c020df50:	80 00 3d             	addb   $0x3d,(%eax)
c020df53:	00 f4                	add    %dh,%ah
c020df55:	ff                   	(bad)  
c020df56:	ff                   	(bad)  
c020df57:	ff 09                	decl   (%ecx)
c020df59:	14 00                	adc    $0x0,%al
c020df5b:	00 80 00 3d 00 f0    	add    %al,-0xfffc300(%eax)
c020df61:	ff                   	(bad)  
c020df62:	ff                   	(bad)  
c020df63:	ff 00                	incl   (%eax)
c020df65:	00 00                	add    %al,(%eax)
c020df67:	00 c0                	add    %al,%al
	...
c020df71:	00 00                	add    %al,(%eax)
c020df73:	00 e0                	add    %ah,%al
c020df75:	00 00                	add    %al,(%eax)
c020df77:	00 59 00             	add    %bl,0x0(%ecx)
c020df7a:	00 00                	add    %al,(%eax)
c020df7c:	00 00                	add    %al,(%eax)
c020df7e:	00 00                	add    %al,(%eax)
c020df80:	24 00                	and    $0x0,%al
c020df82:	00 00                	add    %al,(%eax)
c020df84:	59                   	pop    %ecx
c020df85:	00 00                	add    %al,(%eax)
c020df87:	00 00                	add    %al,(%eax)
c020df89:	00 00                	add    %al,(%eax)
c020df8b:	00 4e 00             	add    %cl,0x0(%esi)
c020df8e:	00 00                	add    %al,(%eax)
c020df90:	1f                   	pop    %ds
c020df91:	2c 10                	sub    $0x10,%al
c020df93:	c0 14 14 00          	rclb   $0x0,(%esp,%edx,1)
c020df97:	00 28                	add    %ch,(%eax)
c020df99:	00 17                	add    %dl,(%edi)
c020df9b:	00 04 50             	add    %al,(%eax,%edx,2)
c020df9e:	10 c0                	adc    %al,%al
c020dfa0:	00 00                	add    %al,(%eax)
c020dfa2:	00 00                	add    %al,(%eax)
c020dfa4:	64 00 00             	add    %al,%fs:(%eax)
c020dfa7:	00 1f                	add    %bl,(%edi)
c020dfa9:	2c 10                	sub    $0x10,%al
c020dfab:	c0 19 00             	rcrb   $0x0,(%ecx)
c020dfae:	00 00                	add    %al,(%eax)
c020dfb0:	64 00 02             	add    %al,%fs:(%edx)
c020dfb3:	00 20                	add    %ah,(%eax)
c020dfb5:	2c 10                	sub    $0x10,%al
c020dfb7:	c0 27 14             	shlb   $0x14,(%edi)
c020dfba:	00 00                	add    %al,(%eax)
c020dfbc:	64 00 02             	add    %al,%fs:(%edx)
c020dfbf:	00 20                	add    %ah,(%eax)
c020dfc1:	2c 10                	sub    $0x10,%al
c020dfc3:	c0 4e 00 00          	rorb   $0x0,0x0(%esi)
c020dfc7:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020dfca:	00 00                	add    %al,(%eax)
c020dfcc:	00 00                	add    %al,(%eax)
c020dfce:	00 00                	add    %al,(%eax)
c020dfd0:	5d                   	pop    %ebp
c020dfd1:	00 00                	add    %al,(%eax)
c020dfd3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dfd9:	00 00                	add    %al,(%eax)
c020dfdb:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020dfe1:	00 00                	add    %al,(%eax)
c020dfe3:	00 00                	add    %al,(%eax)
c020dfe5:	00 00                	add    %al,(%eax)
c020dfe7:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020dfed:	00 00                	add    %al,(%eax)
c020dfef:	00 00                	add    %al,(%eax)
c020dff1:	00 00                	add    %al,(%eax)
c020dff3:	00 d0                	add    %dl,%al
c020dff5:	00 00                	add    %al,(%eax)
c020dff7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020dffd:	00 00                	add    %al,(%eax)
c020dfff:	00 fb                	add    %bh,%bl
c020e001:	00 00                	add    %al,(%eax)
c020e003:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e009:	00 00                	add    %al,(%eax)
c020e00b:	00 2b                	add    %ch,(%ebx)
c020e00d:	01 00                	add    %eax,(%eax)
c020e00f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e015:	00 00                	add    %al,(%eax)
c020e017:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020e01b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e021:	00 00                	add    %al,(%eax)
c020e023:	00 c1                	add    %al,%cl
c020e025:	01 00                	add    %eax,(%eax)
c020e027:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e02d:	00 00                	add    %al,(%eax)
c020e02f:	00 ec                	add    %ch,%ah
c020e031:	01 00                	add    %eax,(%eax)
c020e033:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e039:	00 00                	add    %al,(%eax)
c020e03b:	00 1b                	add    %bl,(%ebx)
c020e03d:	02 00                	add    (%eax),%al
c020e03f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e045:	00 00                	add    %al,(%eax)
c020e047:	00 45 02             	add    %al,0x2(%ebp)
c020e04a:	00 00                	add    %al,(%eax)
c020e04c:	80 00 00             	addb   $0x0,(%eax)
c020e04f:	00 00                	add    %al,(%eax)
c020e051:	00 00                	add    %al,(%eax)
c020e053:	00 6e 02             	add    %ch,0x2(%esi)
c020e056:	00 00                	add    %al,(%eax)
c020e058:	80 00 00             	addb   $0x0,(%eax)
c020e05b:	00 00                	add    %al,(%eax)
c020e05d:	00 00                	add    %al,(%eax)
c020e05f:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020e065:	00 00                	add    %al,(%eax)
c020e067:	00 00                	add    %al,(%eax)
c020e069:	00 00                	add    %al,(%eax)
c020e06b:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020e071:	00 00                	add    %al,(%eax)
c020e073:	00 00                	add    %al,(%eax)
c020e075:	00 00                	add    %al,(%eax)
c020e077:	00 c4                	add    %al,%ah
c020e079:	02 00                	add    (%eax),%al
c020e07b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e081:	00 00                	add    %al,(%eax)
c020e083:	00 e3                	add    %ah,%bl
c020e085:	02 00                	add    (%eax),%al
c020e087:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e08d:	00 00                	add    %al,(%eax)
c020e08f:	00 02                	add    %al,(%edx)
c020e091:	03 00                	add    (%eax),%eax
c020e093:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e099:	00 00                	add    %al,(%eax)
c020e09b:	00 23                	add    %ah,(%ebx)
c020e09d:	03 00                	add    (%eax),%eax
c020e09f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e0a5:	00 00                	add    %al,(%eax)
c020e0a7:	00 ac 0c 00 00 c2 00 	add    %ch,0xc20000(%esp,%ecx,1)
c020e0ae:	00 00                	add    %al,(%eax)
c020e0b0:	4b                   	dec    %ebx
c020e0b1:	ea 00 00 47 03 00 00 	ljmp   $0x0,$0x3470000
c020e0b8:	c2 00 00             	ret    $0x0
c020e0bb:	00 26                	add    %ah,(%esi)
c020e0bd:	19 00                	sbb    %eax,(%eax)
c020e0bf:	00 ba 0c 00 00 c2    	add    %bh,-0x3dfffff4(%edx)
c020e0c5:	00 00                	add    %al,(%eax)
c020e0c7:	00 b6 d4 00 00 7a    	add    %dh,0x7a0000d4(%esi)
c020e0cd:	06                   	push   %es
c020e0ce:	00 00                	add    %al,(%eax)
c020e0d0:	c2 00 00             	ret    $0x0
c020e0d3:	00 b9 08 00 00 88    	add    %bh,-0x77fffff8(%ecx)
c020e0d9:	06                   	push   %es
c020e0da:	00 00                	add    %al,(%eax)
c020e0dc:	c2 00 00             	ret    $0x0
c020e0df:	00 89 91 00 00 31    	add    %cl,0x31000091(%ecx)
c020e0e5:	14 00                	adc    $0x0,%al
c020e0e7:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e0ea:	1c 00                	sbb    $0x0,%al
c020e0ec:	20 2c 10             	and    %ch,(%eax,%edx,1)
c020e0ef:	c0 4c 14 00 00       	rorb   $0x0,0x0(%esp,%edx,1)
c020e0f4:	a0 00 1c 00 0c       	mov    0xc001c00,%al
c020e0f9:	00 00                	add    %al,(%eax)
c020e0fb:	00 00                	add    %al,(%eax)
c020e0fd:	00 00                	add    %al,(%eax)
c020e0ff:	00 2e                	add    %ch,(%esi)
c020e101:	00 00                	add    %al,(%eax)
c020e103:	00 20                	add    %ah,(%eax)
c020e105:	2c 10                	sub    $0x10,%al
c020e107:	c0 00 00             	rolb   $0x0,(%eax)
c020e10a:	00 00                	add    %al,(%eax)
c020e10c:	44                   	inc    %esp
c020e10d:	00 1d 00 00 00 00    	add    %bl,0x0
c020e113:	00 00                	add    %al,(%eax)
c020e115:	00 00                	add    %al,(%eax)
c020e117:	00 44 00 21          	add    %al,0x21(%eax,%eax,1)
c020e11b:	00 06                	add    %al,(%esi)
c020e11d:	00 00                	add    %al,(%eax)
c020e11f:	00 00                	add    %al,(%eax)
c020e121:	00 00                	add    %al,(%eax)
c020e123:	00 44 00 25          	add    %al,0x25(%eax,%eax,1)
c020e127:	00 0f                	add    %cl,(%edi)
c020e129:	00 00                	add    %al,(%eax)
c020e12b:	00 00                	add    %al,(%eax)
c020e12d:	00 00                	add    %al,(%eax)
c020e12f:	00 44 00 28          	add    %al,0x28(%eax,%eax,1)
c020e133:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020e136:	00 00                	add    %al,(%eax)
c020e138:	00 00                	add    %al,(%eax)
c020e13a:	00 00                	add    %al,(%eax)
c020e13c:	44                   	inc    %esp
c020e13d:	00 29                	add    %ch,(%ecx)
c020e13f:	00 38                	add    %bh,(%eax)
c020e141:	00 00                	add    %al,(%eax)
c020e143:	00 00                	add    %al,(%eax)
c020e145:	00 00                	add    %al,(%eax)
c020e147:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c020e14b:	00 56 00             	add    %dl,0x0(%esi)
c020e14e:	00 00                	add    %al,(%eax)
c020e150:	00 00                	add    %al,(%eax)
c020e152:	00 00                	add    %al,(%eax)
c020e154:	44                   	inc    %esp
c020e155:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020e158:	6d                   	insl   (%dx),%es:(%edi)
c020e159:	00 00                	add    %al,(%eax)
c020e15b:	00 00                	add    %al,(%eax)
c020e15d:	00 00                	add    %al,(%eax)
c020e15f:	00 44 00 2e          	add    %al,0x2e(%eax,%eax,1)
c020e163:	00 8c 00 00 00 00 00 	add    %cl,0x0(%eax,%eax,1)
c020e16a:	00 00                	add    %al,(%eax)
c020e16c:	44                   	inc    %esp
c020e16d:	00 30                	add    %dh,(%eax)
c020e16f:	00 a6 00 00 00 00    	add    %ah,0x0(%esi)
c020e175:	00 00                	add    %al,(%eax)
c020e177:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020e17b:	00 bd 00 00 00 00    	add    %bh,0x0(%ebp)
c020e181:	00 00                	add    %al,(%eax)
c020e183:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
c020e187:	00 d7                	add    %dl,%bh
c020e189:	00 00                	add    %al,(%eax)
c020e18b:	00 00                	add    %al,(%eax)
c020e18d:	00 00                	add    %al,(%eax)
c020e18f:	00 44 00 28          	add    %al,0x28(%eax,%eax,1)
c020e193:	00 f1                	add    %dh,%cl
c020e195:	00 00                	add    %al,(%eax)
c020e197:	00 00                	add    %al,(%eax)
c020e199:	00 00                	add    %al,(%eax)
c020e19b:	00 44 00 28          	add    %al,0x28(%eax,%eax,1)
c020e19f:	00 f5                	add    %dh,%ch
c020e1a1:	00 00                	add    %al,(%eax)
c020e1a3:	00 00                	add    %al,(%eax)
c020e1a5:	00 00                	add    %al,(%eax)
c020e1a7:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c020e1ab:	00 06                	add    %al,(%esi)
c020e1ad:	01 00                	add    %eax,(%eax)
c020e1af:	00 00                	add    %al,(%eax)
c020e1b1:	00 00                	add    %al,(%eax)
c020e1b3:	00 44 00 37          	add    %al,0x37(%eax,%eax,1)
c020e1b7:	00 20                	add    %ah,(%eax)
c020e1b9:	01 00                	add    %eax,(%eax)
c020e1bb:	00 9b 05 00 00 80    	add    %bl,-0x7ffffffb(%ebx)
c020e1c1:	00 1e                	add    %bl,(%esi)
c020e1c3:	00 f4                	add    %dh,%ah
c020e1c5:	ff                   	(bad)  
c020e1c6:	ff                   	(bad)  
c020e1c7:	ff 5e 14             	lcall  *0x14(%esi)
c020e1ca:	00 00                	add    %al,(%eax)
c020e1cc:	80 00 1f             	addb   $0x1f,(%eax)
c020e1cf:	00 d8                	add    %bl,%al
c020e1d1:	ff                   	(bad)  
c020e1d2:	ff                   	(bad)  
c020e1d3:	ff 69 14             	ljmp   *0x14(%ecx)
c020e1d6:	00 00                	add    %al,(%eax)
c020e1d8:	80 00 21             	addb   $0x21,(%eax)
c020e1db:	00 f0                	add    %dh,%al
c020e1dd:	ff                   	(bad)  
c020e1de:	ff                   	(bad)  
c020e1df:	ff                   	(bad)  
c020e1e0:	7a 14                	jp     c020e1f6 <interrupt_handlers+0x2996>
c020e1e2:	00 00                	add    %al,(%eax)
c020e1e4:	80 00 25             	addb   $0x25,(%eax)
c020e1e7:	00 ec                	add    %ch,%ah
c020e1e9:	ff                   	(bad)  
c020e1ea:	ff                   	(bad)  
c020e1eb:	ff 00                	incl   (%eax)
c020e1ed:	00 00                	add    %al,(%eax)
c020e1ef:	00 c0                	add    %al,%al
c020e1f1:	00 00                	add    %al,(%eax)
c020e1f3:	00 00                	add    %al,(%eax)
c020e1f5:	00 00                	add    %al,(%eax)
c020e1f7:	00 89 14 00 00 80    	add    %cl,-0x7fffffec(%ecx)
c020e1fd:	00 29                	add    %ch,(%ecx)
c020e1ff:	00 e8                	add    %ch,%al
c020e201:	ff                   	(bad)  
c020e202:	ff                   	(bad)  
c020e203:	ff 00                	incl   (%eax)
c020e205:	00 00                	add    %al,(%eax)
c020e207:	00 c0                	add    %al,%al
c020e209:	00 00                	add    %al,(%eax)
c020e20b:	00 38                	add    %bh,(%eax)
c020e20d:	00 00                	add    %al,(%eax)
c020e20f:	00 00                	add    %al,(%eax)
c020e211:	00 00                	add    %al,(%eax)
c020e213:	00 e0                	add    %ah,%al
c020e215:	00 00                	add    %al,(%eax)
c020e217:	00 f1                	add    %dh,%cl
c020e219:	00 00                	add    %al,(%eax)
c020e21b:	00 00                	add    %al,(%eax)
c020e21d:	00 00                	add    %al,(%eax)
c020e21f:	00 e0                	add    %ah,%al
c020e221:	00 00                	add    %al,(%eax)
c020e223:	00 27                	add    %ah,(%edi)
c020e225:	01 00                	add    %eax,(%eax)
c020e227:	00 00                	add    %al,(%eax)
c020e229:	00 00                	add    %al,(%eax)
c020e22b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e22e:	00 00                	add    %al,(%eax)
c020e230:	27                   	daa    
c020e231:	01 00                	add    %eax,(%eax)
c020e233:	00 00                	add    %al,(%eax)
c020e235:	00 00                	add    %al,(%eax)
c020e237:	00 4e 00             	add    %cl,0x0(%esi)
c020e23a:	00 00                	add    %al,(%eax)
c020e23c:	47                   	inc    %edi
c020e23d:	2d 10 c0 a4 14       	sub    $0x14a4c010,%eax
c020e242:	00 00                	add    %al,(%eax)
c020e244:	24 00                	and    $0x0,%al
c020e246:	39 00                	cmp    %eax,(%eax)
c020e248:	47                   	inc    %edi
c020e249:	2d 10 c0 bc 14       	sub    $0x14bcc010,%eax
c020e24e:	00 00                	add    %al,(%eax)
c020e250:	a0 00 39 00 08       	mov    0x8003900,%al
c020e255:	00 00                	add    %al,(%eax)
c020e257:	00 c8                	add    %cl,%al
c020e259:	14 00                	adc    $0x0,%al
c020e25b:	00 a0 00 39 00 0c    	add    %ah,0xc003900(%eax)
c020e261:	00 00                	add    %al,(%eax)
c020e263:	00 00                	add    %al,(%eax)
c020e265:	00 00                	add    %al,(%eax)
c020e267:	00 2e                	add    %ch,(%esi)
c020e269:	00 00                	add    %al,(%eax)
c020e26b:	00 47 2d             	add    %al,0x2d(%edi)
c020e26e:	10 c0                	adc    %al,%al
c020e270:	00 00                	add    %al,(%eax)
c020e272:	00 00                	add    %al,(%eax)
c020e274:	44                   	inc    %esp
c020e275:	00 3a                	add    %bh,(%edx)
	...
c020e27f:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c020e283:	00 06                	add    %al,(%esi)
c020e285:	00 00                	add    %al,(%eax)
c020e287:	00 00                	add    %al,(%eax)
c020e289:	00 00                	add    %al,(%eax)
c020e28b:	00 44 00 3e          	add    %al,0x3e(%eax,%eax,1)
c020e28f:	00 0f                	add    %cl,(%edi)
c020e291:	00 00                	add    %al,(%eax)
c020e293:	00 00                	add    %al,(%eax)
c020e295:	00 00                	add    %al,(%eax)
c020e297:	00 44 00 42          	add    %al,0x42(%eax,%eax,1)
c020e29b:	00 2b                	add    %ch,(%ebx)
c020e29d:	00 00                	add    %al,(%eax)
c020e29f:	00 00                	add    %al,(%eax)
c020e2a1:	00 00                	add    %al,(%eax)
c020e2a3:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020e2a7:	00 40 00             	add    %al,0x0(%eax)
c020e2aa:	00 00                	add    %al,(%eax)
c020e2ac:	00 00                	add    %al,(%eax)
c020e2ae:	00 00                	add    %al,(%eax)
c020e2b0:	44                   	inc    %esp
c020e2b1:	00 42 00             	add    %al,0x0(%edx)
c020e2b4:	62 00                	bound  %eax,(%eax)
c020e2b6:	00 00                	add    %al,(%eax)
c020e2b8:	00 00                	add    %al,(%eax)
c020e2ba:	00 00                	add    %al,(%eax)
c020e2bc:	44                   	inc    %esp
c020e2bd:	00 44 00 67          	add    %al,0x67(%eax,%eax,1)
c020e2c1:	00 00                	add    %al,(%eax)
c020e2c3:	00 00                	add    %al,(%eax)
c020e2c5:	00 00                	add    %al,(%eax)
c020e2c7:	00 44 00 3f          	add    %al,0x3f(%eax,%eax,1)
c020e2cb:	00 82 00 00 00 00    	add    %al,0x0(%edx)
c020e2d1:	00 00                	add    %al,(%eax)
c020e2d3:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c020e2d7:	00 83 00 00 00 00    	add    %al,0x0(%ebx)
c020e2dd:	00 00                	add    %al,(%eax)
c020e2df:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c020e2e3:	00 87 00 00 00 00    	add    %al,0x0(%edi)
c020e2e9:	00 00                	add    %al,(%eax)
c020e2eb:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
c020e2ef:	00 9b 00 00 00 00    	add    %bl,0x0(%ebx)
c020e2f5:	00 00                	add    %al,(%eax)
c020e2f7:	00 44 00 4a          	add    %al,0x4a(%eax,%eax,1)
c020e2fb:	00 a0 00 00 00 9b    	add    %ah,-0x65000000(%eax)
c020e301:	05 00 00 80 00       	add    $0x800000,%eax
c020e306:	3b 00                	cmp    (%eax),%eax
c020e308:	fc                   	cld    
c020e309:	ff                   	(bad)  
c020e30a:	ff                   	(bad)  
c020e30b:	ff 00                	incl   (%eax)
c020e30d:	00 00                	add    %al,(%eax)
c020e30f:	00 c0                	add    %al,%al
	...
c020e319:	00 00                	add    %al,(%eax)
c020e31b:	00 e0                	add    %ah,%al
c020e31d:	00 00                	add    %al,(%eax)
c020e31f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020e325:	00 00                	add    %al,(%eax)
c020e327:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e32a:	00 00                	add    %al,(%eax)
c020e32c:	a2 00 00 00 00       	mov    %al,0x0
c020e331:	00 00                	add    %al,(%eax)
c020e333:	00 4e 00             	add    %cl,0x0(%esi)
c020e336:	00 00                	add    %al,(%eax)
c020e338:	e9 2d 10 c0 00       	jmp    c0e0f36a <kernel_end+0xbfc36a>
c020e33d:	00 00                	add    %al,(%eax)
c020e33f:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c020e343:	00 e9                	add    %ch,%cl
c020e345:	2d 10 c0 19 00       	sub    $0x19c010,%eax
c020e34a:	00 00                	add    %al,(%eax)
c020e34c:	64 00 02             	add    %al,%fs:(%edx)
c020e34f:	00 ec                	add    %ch,%ah
c020e351:	2d 10 c0 dc 14       	sub    $0x14dcc010,%eax
c020e356:	00 00                	add    %al,(%eax)
c020e358:	64 00 02             	add    %al,%fs:(%edx)
c020e35b:	00 ec                	add    %ch,%ah
c020e35d:	2d 10 c0 4e 00       	sub    $0x4ec010,%eax
c020e362:	00 00                	add    %al,(%eax)
c020e364:	3c 00                	cmp    $0x0,%al
c020e366:	00 00                	add    %al,(%eax)
c020e368:	00 00                	add    %al,(%eax)
c020e36a:	00 00                	add    %al,(%eax)
c020e36c:	5d                   	pop    %ebp
c020e36d:	00 00                	add    %al,(%eax)
c020e36f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e375:	00 00                	add    %al,(%eax)
c020e377:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020e37d:	00 00                	add    %al,(%eax)
c020e37f:	00 00                	add    %al,(%eax)
c020e381:	00 00                	add    %al,(%eax)
c020e383:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020e389:	00 00                	add    %al,(%eax)
c020e38b:	00 00                	add    %al,(%eax)
c020e38d:	00 00                	add    %al,(%eax)
c020e38f:	00 d0                	add    %dl,%al
c020e391:	00 00                	add    %al,(%eax)
c020e393:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e399:	00 00                	add    %al,(%eax)
c020e39b:	00 fb                	add    %bh,%bl
c020e39d:	00 00                	add    %al,(%eax)
c020e39f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e3a5:	00 00                	add    %al,(%eax)
c020e3a7:	00 2b                	add    %ch,(%ebx)
c020e3a9:	01 00                	add    %eax,(%eax)
c020e3ab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e3b1:	00 00                	add    %al,(%eax)
c020e3b3:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020e3b7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e3bd:	00 00                	add    %al,(%eax)
c020e3bf:	00 c1                	add    %al,%cl
c020e3c1:	01 00                	add    %eax,(%eax)
c020e3c3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e3c9:	00 00                	add    %al,(%eax)
c020e3cb:	00 ec                	add    %ch,%ah
c020e3cd:	01 00                	add    %eax,(%eax)
c020e3cf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e3d5:	00 00                	add    %al,(%eax)
c020e3d7:	00 1b                	add    %bl,(%ebx)
c020e3d9:	02 00                	add    (%eax),%al
c020e3db:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e3e1:	00 00                	add    %al,(%eax)
c020e3e3:	00 45 02             	add    %al,0x2(%ebp)
c020e3e6:	00 00                	add    %al,(%eax)
c020e3e8:	80 00 00             	addb   $0x0,(%eax)
c020e3eb:	00 00                	add    %al,(%eax)
c020e3ed:	00 00                	add    %al,(%eax)
c020e3ef:	00 6e 02             	add    %ch,0x2(%esi)
c020e3f2:	00 00                	add    %al,(%eax)
c020e3f4:	80 00 00             	addb   $0x0,(%eax)
c020e3f7:	00 00                	add    %al,(%eax)
c020e3f9:	00 00                	add    %al,(%eax)
c020e3fb:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020e401:	00 00                	add    %al,(%eax)
c020e403:	00 00                	add    %al,(%eax)
c020e405:	00 00                	add    %al,(%eax)
c020e407:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020e40d:	00 00                	add    %al,(%eax)
c020e40f:	00 00                	add    %al,(%eax)
c020e411:	00 00                	add    %al,(%eax)
c020e413:	00 c4                	add    %al,%ah
c020e415:	02 00                	add    (%eax),%al
c020e417:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e41d:	00 00                	add    %al,(%eax)
c020e41f:	00 e3                	add    %ah,%bl
c020e421:	02 00                	add    (%eax),%al
c020e423:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e429:	00 00                	add    %al,(%eax)
c020e42b:	00 02                	add    %al,(%edx)
c020e42d:	03 00                	add    (%eax),%eax
c020e42f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e435:	00 00                	add    %al,(%eax)
c020e437:	00 23                	add    %ah,(%ebx)
c020e439:	03 00                	add    (%eax),%eax
c020e43b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e441:	00 00                	add    %al,(%eax)
c020e443:	00 e6                	add    %ah,%dh
c020e445:	14 00                	adc    $0x0,%al
c020e447:	00 82 00 00 00 c8    	add    %al,-0x38000000(%edx)
c020e44d:	42                   	inc    %edx
c020e44e:	00 00                	add    %al,(%eax)
c020e450:	47                   	inc    %edi
c020e451:	03 00                	add    (%eax),%eax
c020e453:	00 c2                	add    %al,%dl
c020e455:	00 00                	add    %al,(%eax)
c020e457:	00 26                	add    %ah,(%esi)
c020e459:	19 00                	sbb    %eax,(%eax)
c020e45b:	00 f4                	add    %dh,%ah
c020e45d:	14 00                	adc    $0x0,%al
c020e45f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e465:	00 00                	add    %al,(%eax)
c020e467:	00 84 15 00 00 80 00 	add    %al,0x800000(%ebp,%edx,1)
c020e46e:	1f                   	pop    %ds
c020e46f:	00 00                	add    %al,(%eax)
c020e471:	00 00                	add    %al,(%eax)
c020e473:	00 9d 15 00 00 80    	add    %bl,-0x7fffffeb(%ebp)
c020e479:	00 00                	add    %al,(%eax)
c020e47b:	00 00                	add    %al,(%eax)
c020e47d:	00 00                	add    %al,(%eax)
c020e47f:	00 d4                	add    %dl,%ah
c020e481:	15 00 00 80 00       	adc    $0x800000,%eax
c020e486:	25 00 00 00 00       	and    $0x0,%eax
c020e48b:	00 00                	add    %al,(%eax)
c020e48d:	00 00                	add    %al,(%eax)
c020e48f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020e495:	00 00                	add    %al,(%eax)
c020e497:	00 eb                	add    %ch,%bl
c020e499:	15 00 00 24 00       	adc    $0x240000,%eax
c020e49e:	2a 00                	sub    (%eax),%al
c020e4a0:	ec                   	in     (%dx),%al
c020e4a1:	2d 10 c0 00 00       	sub    $0xc010,%eax
c020e4a6:	00 00                	add    %al,(%eax)
c020e4a8:	2e 00 00             	add    %al,%cs:(%eax)
c020e4ab:	00 ec                	add    %ch,%ah
c020e4ad:	2d 10 c0 00 00       	sub    $0xc010,%eax
c020e4b2:	00 00                	add    %al,(%eax)
c020e4b4:	44                   	inc    %esp
c020e4b5:	00 2b                	add    %ch,(%ebx)
	...
c020e4bf:	00 44 00 2d          	add    %al,0x2d(%eax,%eax,1)
c020e4c3:	00 06                	add    %al,(%esi)
c020e4c5:	00 00                	add    %al,(%eax)
c020e4c7:	00 00                	add    %al,(%eax)
c020e4c9:	00 00                	add    %al,(%eax)
c020e4cb:	00 44 00 2e          	add    %al,0x2e(%eax,%eax,1)
c020e4cf:	00 0f                	add    %cl,(%edi)
c020e4d1:	00 00                	add    %al,(%eax)
c020e4d3:	00 00                	add    %al,(%eax)
c020e4d5:	00 00                	add    %al,(%eax)
c020e4d7:	00 44 00 30          	add    %al,0x30(%eax,%eax,1)
c020e4db:	00 19                	add    %bl,(%ecx)
c020e4dd:	00 00                	add    %al,(%eax)
c020e4df:	00 00                	add    %al,(%eax)
c020e4e1:	00 00                	add    %al,(%eax)
c020e4e3:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020e4e7:	00 45 00             	add    %al,0x0(%ebp)
c020e4ea:	00 00                	add    %al,(%eax)
c020e4ec:	00 00                	add    %al,(%eax)
c020e4ee:	00 00                	add    %al,(%eax)
c020e4f0:	44                   	inc    %esp
c020e4f1:	00 32                	add    %dh,(%edx)
c020e4f3:	00 71 00             	add    %dh,0x0(%ecx)
c020e4f6:	00 00                	add    %al,(%eax)
c020e4f8:	00 00                	add    %al,(%eax)
c020e4fa:	00 00                	add    %al,(%eax)
c020e4fc:	44                   	inc    %esp
c020e4fd:	00 33                	add    %dh,(%ebx)
c020e4ff:	00 9d 00 00 00 00    	add    %bl,0x0(%ebp)
c020e505:	00 00                	add    %al,(%eax)
c020e507:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c020e50b:	00 c9                	add    %cl,%cl
c020e50d:	00 00                	add    %al,(%eax)
c020e50f:	00 00                	add    %al,(%eax)
c020e511:	00 00                	add    %al,(%eax)
c020e513:	00 44 00 37          	add    %al,0x37(%eax,%eax,1)
c020e517:	00 f5                	add    %dh,%ch
c020e519:	00 00                	add    %al,(%eax)
c020e51b:	00 00                	add    %al,(%eax)
c020e51d:	00 00                	add    %al,(%eax)
c020e51f:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c020e523:	00 02                	add    %al,(%edx)
c020e525:	01 00                	add    %eax,(%eax)
c020e527:	00 00                	add    %al,(%eax)
c020e529:	00 00                	add    %al,(%eax)
c020e52b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e52e:	00 00                	add    %al,(%eax)
c020e530:	04 01                	add    $0x1,%al
c020e532:	00 00                	add    %al,(%eax)
c020e534:	00 00                	add    %al,(%eax)
c020e536:	00 00                	add    %al,(%eax)
c020e538:	4e                   	dec    %esi
c020e539:	00 00                	add    %al,(%eax)
c020e53b:	00 f0                	add    %dh,%al
c020e53d:	2e                   	cs
c020e53e:	10 c0                	adc    %al,%al
c020e540:	fc                   	cld    
c020e541:	15 00 00 24 00       	adc    $0x240000,%eax
c020e546:	42                   	inc    %edx
c020e547:	00 f0                	add    %dh,%al
c020e549:	2e                   	cs
c020e54a:	10 c0                	adc    %al,%al
c020e54c:	11 16                	adc    %edx,(%esi)
c020e54e:	00 00                	add    %al,(%eax)
c020e550:	a0 00 42 00 08       	mov    0x8004200,%al
c020e555:	00 00                	add    %al,(%eax)
c020e557:	00 1c 16             	add    %bl,(%esi,%edx,1)
c020e55a:	00 00                	add    %al,(%eax)
c020e55c:	a0 00 42 00 0c       	mov    0xc004200,%al
c020e561:	00 00                	add    %al,(%eax)
c020e563:	00 28                	add    %ch,(%eax)
c020e565:	16                   	push   %ss
c020e566:	00 00                	add    %al,(%eax)
c020e568:	a0 00 42 00 10       	mov    0x10004200,%al
c020e56d:	00 00                	add    %al,(%eax)
c020e56f:	00 35 16 00 00 a0    	add    %dh,0xa0000016
c020e575:	00 42 00             	add    %al,0x0(%edx)
c020e578:	14 00                	adc    $0x0,%al
c020e57a:	00 00                	add    %al,(%eax)
c020e57c:	43                   	inc    %ebx
c020e57d:	16                   	push   %ss
c020e57e:	00 00                	add    %al,(%eax)
c020e580:	a0 00 42 00 18       	mov    0x18004200,%al
c020e585:	00 00                	add    %al,(%eax)
c020e587:	00 00                	add    %al,(%eax)
c020e589:	00 00                	add    %al,(%eax)
c020e58b:	00 2e                	add    %ch,(%esi)
c020e58d:	00 00                	add    %al,(%eax)
c020e58f:	00 f0                	add    %dh,%al
c020e591:	2e                   	cs
c020e592:	10 c0                	adc    %al,%al
c020e594:	00 00                	add    %al,(%eax)
c020e596:	00 00                	add    %al,(%eax)
c020e598:	44                   	inc    %esp
c020e599:	00 43 00             	add    %al,0x0(%ebx)
	...
c020e5a4:	44                   	inc    %esp
c020e5a5:	00 44 00 12          	add    %al,0x12(%eax,%eax,1)
c020e5a9:	00 00                	add    %al,(%eax)
c020e5ab:	00 00                	add    %al,(%eax)
c020e5ad:	00 00                	add    %al,(%eax)
c020e5af:	00 44 00 45          	add    %al,0x45(%eax,%eax,1)
c020e5b3:	00 22                	add    %ah,(%edx)
c020e5b5:	00 00                	add    %al,(%eax)
c020e5b7:	00 00                	add    %al,(%eax)
c020e5b9:	00 00                	add    %al,(%eax)
c020e5bb:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020e5bf:	00 34 00             	add    %dh,(%eax,%eax,1)
c020e5c2:	00 00                	add    %al,(%eax)
c020e5c4:	00 00                	add    %al,(%eax)
c020e5c6:	00 00                	add    %al,(%eax)
c020e5c8:	44                   	inc    %esp
c020e5c9:	00 48 00             	add    %cl,0x0(%eax)
c020e5cc:	46                   	inc    %esi
c020e5cd:	00 00                	add    %al,(%eax)
c020e5cf:	00 00                	add    %al,(%eax)
c020e5d1:	00 00                	add    %al,(%eax)
c020e5d3:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
c020e5d7:	00 56 00             	add    %dl,0x0(%esi)
c020e5da:	00 00                	add    %al,(%eax)
c020e5dc:	00 00                	add    %al,(%eax)
c020e5de:	00 00                	add    %al,(%eax)
c020e5e0:	44                   	inc    %esp
c020e5e1:	00 4b 00             	add    %cl,0x0(%ebx)
c020e5e4:	6b 00 00             	imul   $0x0,(%eax),%eax
c020e5e7:	00 00                	add    %al,(%eax)
c020e5e9:	00 00                	add    %al,(%eax)
c020e5eb:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c020e5ef:	00 8b 00 00 00 00    	add    %cl,0x0(%ebx)
c020e5f5:	00 00                	add    %al,(%eax)
c020e5f7:	00 44 00 4d          	add    %al,0x4d(%eax,%eax,1)
c020e5fb:	00 99 00 00 00 4f    	add    %bl,0x4f000000(%ecx)
c020e601:	16                   	push   %ss
c020e602:	00 00                	add    %al,(%eax)
c020e604:	80 00 42             	addb   $0x42,(%eax)
c020e607:	00 fc                	add    %bh,%ah
c020e609:	ff                   	(bad)  
c020e60a:	ff                   	(bad)  
c020e60b:	ff 5c 16 00          	lcall  *0x0(%esi,%edx,1)
c020e60f:	00 80 00 42 00 f8    	add    %al,-0x7ffbe00(%eax)
c020e615:	ff                   	(bad)  
c020e616:	ff                   	(bad)  
c020e617:	ff 00                	incl   (%eax)
c020e619:	00 00                	add    %al,(%eax)
c020e61b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e61e:	00 00                	add    %al,(%eax)
c020e620:	9b                   	fwait
c020e621:	00 00                	add    %al,(%eax)
c020e623:	00 00                	add    %al,(%eax)
c020e625:	00 00                	add    %al,(%eax)
c020e627:	00 4e 00             	add    %cl,0x0(%esi)
c020e62a:	00 00                	add    %al,(%eax)
c020e62c:	8b 2f                	mov    (%edi),%ebp
c020e62e:	10 c0                	adc    %al,%al
c020e630:	67 16                	addr16 push %ss
c020e632:	00 00                	add    %al,(%eax)
c020e634:	20 00                	and    %al,(%eax)
c020e636:	1a 00                	sbb    (%eax),%al
c020e638:	00 00                	add    %al,(%eax)
c020e63a:	00 00                	add    %al,(%eax)
c020e63c:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
c020e63d:	16                   	push   %ss
c020e63e:	00 00                	add    %al,(%eax)
c020e640:	20 00                	and    %al,(%eax)
c020e642:	1d 00 00 00 00       	sbb    $0x0,%eax
c020e647:	00 00                	add    %al,(%eax)
c020e649:	00 00                	add    %al,(%eax)
c020e64b:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c020e64f:	00 8b 2f 10 c0 19    	add    %cl,0x19c0102f(%ebx)
c020e655:	00 00                	add    %al,(%eax)
c020e657:	00 64 00 02          	add    %ah,0x2(%eax,%eax,1)
c020e65b:	00 8c 2f 10 c0 b5 16 	add    %cl,0x16b5c010(%edi,%ebp,1)
c020e662:	00 00                	add    %al,(%eax)
c020e664:	64 00 02             	add    %al,%fs:(%edx)
c020e667:	00 8c 2f 10 c0 4e 00 	add    %cl,0x4ec010(%edi,%ebp,1)
c020e66e:	00 00                	add    %al,(%eax)
c020e670:	3c 00                	cmp    $0x0,%al
c020e672:	00 00                	add    %al,(%eax)
c020e674:	00 00                	add    %al,(%eax)
c020e676:	00 00                	add    %al,(%eax)
c020e678:	5d                   	pop    %ebp
c020e679:	00 00                	add    %al,(%eax)
c020e67b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e681:	00 00                	add    %al,(%eax)
c020e683:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020e689:	00 00                	add    %al,(%eax)
c020e68b:	00 00                	add    %al,(%eax)
c020e68d:	00 00                	add    %al,(%eax)
c020e68f:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020e695:	00 00                	add    %al,(%eax)
c020e697:	00 00                	add    %al,(%eax)
c020e699:	00 00                	add    %al,(%eax)
c020e69b:	00 d0                	add    %dl,%al
c020e69d:	00 00                	add    %al,(%eax)
c020e69f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6a5:	00 00                	add    %al,(%eax)
c020e6a7:	00 fb                	add    %bh,%bl
c020e6a9:	00 00                	add    %al,(%eax)
c020e6ab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6b1:	00 00                	add    %al,(%eax)
c020e6b3:	00 2b                	add    %ch,(%ebx)
c020e6b5:	01 00                	add    %eax,(%eax)
c020e6b7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6bd:	00 00                	add    %al,(%eax)
c020e6bf:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020e6c3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6c9:	00 00                	add    %al,(%eax)
c020e6cb:	00 c1                	add    %al,%cl
c020e6cd:	01 00                	add    %eax,(%eax)
c020e6cf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6d5:	00 00                	add    %al,(%eax)
c020e6d7:	00 ec                	add    %ch,%ah
c020e6d9:	01 00                	add    %eax,(%eax)
c020e6db:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6e1:	00 00                	add    %al,(%eax)
c020e6e3:	00 1b                	add    %bl,(%ebx)
c020e6e5:	02 00                	add    (%eax),%al
c020e6e7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e6ed:	00 00                	add    %al,(%eax)
c020e6ef:	00 45 02             	add    %al,0x2(%ebp)
c020e6f2:	00 00                	add    %al,(%eax)
c020e6f4:	80 00 00             	addb   $0x0,(%eax)
c020e6f7:	00 00                	add    %al,(%eax)
c020e6f9:	00 00                	add    %al,(%eax)
c020e6fb:	00 6e 02             	add    %ch,0x2(%esi)
c020e6fe:	00 00                	add    %al,(%eax)
c020e700:	80 00 00             	addb   $0x0,(%eax)
c020e703:	00 00                	add    %al,(%eax)
c020e705:	00 00                	add    %al,(%eax)
c020e707:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020e70d:	00 00                	add    %al,(%eax)
c020e70f:	00 00                	add    %al,(%eax)
c020e711:	00 00                	add    %al,(%eax)
c020e713:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020e719:	00 00                	add    %al,(%eax)
c020e71b:	00 00                	add    %al,(%eax)
c020e71d:	00 00                	add    %al,(%eax)
c020e71f:	00 c4                	add    %al,%ah
c020e721:	02 00                	add    (%eax),%al
c020e723:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e729:	00 00                	add    %al,(%eax)
c020e72b:	00 e3                	add    %ah,%bl
c020e72d:	02 00                	add    (%eax),%al
c020e72f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e735:	00 00                	add    %al,(%eax)
c020e737:	00 02                	add    %al,(%edx)
c020e739:	03 00                	add    (%eax),%eax
c020e73b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e741:	00 00                	add    %al,(%eax)
c020e743:	00 23                	add    %ah,(%ebx)
c020e745:	03 00                	add    (%eax),%eax
c020e747:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020e74d:	00 00                	add    %al,(%eax)
c020e74f:	00 7a 06             	add    %bh,0x6(%edx)
c020e752:	00 00                	add    %al,(%eax)
c020e754:	c2 00 00             	ret    $0x0
c020e757:	00 b9 08 00 00 47    	add    %bh,0x47000008(%ecx)
c020e75d:	03 00                	add    (%eax),%eax
c020e75f:	00 c2                	add    %al,%dl
c020e761:	00 00                	add    %al,(%eax)
c020e763:	00 26                	add    %ah,(%esi)
c020e765:	19 00                	sbb    %eax,(%eax)
c020e767:	00 88 06 00 00 c2    	add    %cl,-0x3dfffffa(%eax)
c020e76d:	00 00                	add    %al,(%eax)
c020e76f:	00 89 91 00 00 be    	add    %cl,-0x41ffff6f(%ecx)
c020e775:	16                   	push   %ss
c020e776:	00 00                	add    %al,(%eax)
c020e778:	82                   	(bad)  
c020e779:	00 00                	add    %al,(%eax)
c020e77b:	00 00                	add    %al,(%eax)
c020e77d:	00 00                	add    %al,(%eax)
c020e77f:	00 ba 0c 00 00 c2    	add    %bh,-0x3dfffff4(%edx)
c020e785:	00 00                	add    %al,(%eax)
c020e787:	00 b6 d4 00 00 37    	add    %dh,0x370000d4(%esi)
c020e78d:	03 00                	add    (%eax),%eax
c020e78f:	00 c2                	add    %al,%dl
c020e791:	00 00                	add    %al,(%eax)
c020e793:	00 00                	add    %al,(%eax)
c020e795:	00 00                	add    %al,(%eax)
c020e797:	00 cb                	add    %cl,%bl
c020e799:	03 00                	add    (%eax),%eax
c020e79b:	00 c2                	add    %al,%dl
c020e79d:	00 00                	add    %al,(%eax)
c020e79f:	00 f5                	add    %dh,%ch
c020e7a1:	5f                   	pop    %edi
c020e7a2:	00 00                	add    %al,(%eax)
c020e7a4:	00 00                	add    %al,(%eax)
c020e7a6:	00 00                	add    %al,(%eax)
c020e7a8:	a2 00 00 00 00       	mov    %al,0x0
c020e7ad:	00 00                	add    %al,(%eax)
c020e7af:	00 cc                	add    %cl,%ah
c020e7b1:	16                   	push   %ss
c020e7b2:	00 00                	add    %al,(%eax)
c020e7b4:	24 00                	and    $0x0,%al
c020e7b6:	26 00 8c 2f 10 c0 00 	add    %cl,%es:0xc010(%edi,%ebp,1)
c020e7bd:	00 
c020e7be:	00 00                	add    %al,(%eax)
c020e7c0:	2e 00 00             	add    %al,%cs:(%eax)
c020e7c3:	00 8c 2f 10 c0 00 00 	add    %cl,0xc010(%edi,%ebp,1)
c020e7ca:	00 00                	add    %al,(%eax)
c020e7cc:	44                   	inc    %esp
c020e7cd:	00 27                	add    %ah,(%edi)
	...
c020e7d7:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c020e7db:	00 06                	add    %al,(%esi)
c020e7dd:	00 00                	add    %al,(%eax)
c020e7df:	00 00                	add    %al,(%eax)
c020e7e1:	00 00                	add    %al,(%eax)
c020e7e3:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020e7e7:	00 0d 00 00 00 00    	add    %cl,0x0
c020e7ed:	00 00                	add    %al,(%eax)
c020e7ef:	00 44 00 34          	add    %al,0x34(%eax,%eax,1)
c020e7f3:	00 1c 00             	add    %bl,(%eax,%eax,1)
c020e7f6:	00 00                	add    %al,(%eax)
c020e7f8:	00 00                	add    %al,(%eax)
c020e7fa:	00 00                	add    %al,(%eax)
c020e7fc:	44                   	inc    %esp
c020e7fd:	00 31                	add    %dh,(%ecx)
c020e7ff:	00 3b                	add    %bh,(%ebx)
c020e801:	00 00                	add    %al,(%eax)
c020e803:	00 00                	add    %al,(%eax)
c020e805:	00 00                	add    %al,(%eax)
c020e807:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020e80b:	00 43 00             	add    %al,0x0(%ebx)
c020e80e:	00 00                	add    %al,(%eax)
c020e810:	00 00                	add    %al,(%eax)
c020e812:	00 00                	add    %al,(%eax)
c020e814:	44                   	inc    %esp
c020e815:	00 38                	add    %bh,(%eax)
c020e817:	00 4e 00             	add    %cl,0x0(%esi)
c020e81a:	00 00                	add    %al,(%eax)
c020e81c:	00 00                	add    %al,(%eax)
c020e81e:	00 00                	add    %al,(%eax)
c020e820:	44                   	inc    %esp
c020e821:	00 3a                	add    %bh,(%edx)
c020e823:	00 55 00             	add    %dl,0x0(%ebp)
c020e826:	00 00                	add    %al,(%eax)
c020e828:	00 00                	add    %al,(%eax)
c020e82a:	00 00                	add    %al,(%eax)
c020e82c:	44                   	inc    %esp
c020e82d:	00 3b                	add    %bh,(%ebx)
c020e82f:	00 5e 00             	add    %bl,0x0(%esi)
c020e832:	00 00                	add    %al,(%eax)
c020e834:	00 00                	add    %al,(%eax)
c020e836:	00 00                	add    %al,(%eax)
c020e838:	44                   	inc    %esp
c020e839:	00 3a                	add    %bh,(%edx)
c020e83b:	00 78 00             	add    %bh,0x0(%eax)
c020e83e:	00 00                	add    %al,(%eax)
c020e840:	00 00                	add    %al,(%eax)
c020e842:	00 00                	add    %al,(%eax)
c020e844:	44                   	inc    %esp
c020e845:	00 3a                	add    %bh,(%edx)
c020e847:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
c020e84b:	00 00                	add    %al,(%eax)
c020e84d:	00 00                	add    %al,(%eax)
c020e84f:	00 44 00 40          	add    %al,0x40(%eax,%eax,1)
c020e853:	00 85 00 00 00 00    	add    %al,0x0(%ebp)
c020e859:	00 00                	add    %al,(%eax)
c020e85b:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020e85f:	00 92 00 00 00 00    	add    %dl,0x0(%edx)
c020e865:	00 00                	add    %al,(%eax)
c020e867:	00 44 00 45          	add    %al,0x45(%eax,%eax,1)
c020e86b:	00 a6 00 00 00 00    	add    %ah,0x0(%esi)
c020e871:	00 00                	add    %al,(%eax)
c020e873:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020e877:	00 b1 00 00 00 dd    	add    %dh,-0x23000000(%ecx)
c020e87d:	16                   	push   %ss
c020e87e:	00 00                	add    %al,(%eax)
c020e880:	80 00 2a             	addb   $0x2a,(%eax)
c020e883:	00 ec                	add    %ch,%ah
c020e885:	ff                   	(bad)  
c020e886:	ff                   	(bad)  
c020e887:	ff                   	(bad)  
c020e888:	f8                   	clc    
c020e889:	16                   	push   %ss
c020e88a:	00 00                	add    %al,(%eax)
c020e88c:	80 00 2c             	addb   $0x2c,(%eax)
c020e88f:	00 f4                	add    %dh,%ah
c020e891:	ff                   	(bad)  
c020e892:	ff                   	(bad)  
c020e893:	ff 00                	incl   (%eax)
c020e895:	17                   	pop    %ss
c020e896:	00 00                	add    %al,(%eax)
c020e898:	80 00 2d             	addb   $0x2d,(%eax)
c020e89b:	00 f0                	add    %dh,%al
c020e89d:	ff                   	(bad)  
c020e89e:	ff                   	(bad)  
c020e89f:	ff 08                	decl   (%eax)
c020e8a1:	17                   	pop    %ss
c020e8a2:	00 00                	add    %al,(%eax)
c020e8a4:	80 00 38             	addb   $0x38,(%eax)
c020e8a7:	00 e8                	add    %ch,%al
c020e8a9:	ff                   	(bad)  
c020e8aa:	ff                   	(bad)  
c020e8ab:	ff 1a                	lcall  *(%edx)
c020e8ad:	17                   	pop    %ss
c020e8ae:	00 00                	add    %al,(%eax)
c020e8b0:	80 00 40             	addb   $0x40,(%eax)
c020e8b3:	00 e4                	add    %ah,%ah
c020e8b5:	ff                   	(bad)  
c020e8b6:	ff                   	(bad)  
c020e8b7:	ff 00                	incl   (%eax)
c020e8b9:	00 00                	add    %al,(%eax)
c020e8bb:	00 c0                	add    %al,%al
	...
c020e8c5:	00 00                	add    %al,(%eax)
c020e8c7:	00 e0                	add    %ah,%al
c020e8c9:	00 00                	add    %al,(%eax)
c020e8cb:	00 b3 00 00 00 00    	add    %dh,0x0(%ebx)
c020e8d1:	00 00                	add    %al,(%eax)
c020e8d3:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e8d6:	00 00                	add    %al,(%eax)
c020e8d8:	b3 00                	mov    $0x0,%bl
c020e8da:	00 00                	add    %al,(%eax)
c020e8dc:	00 00                	add    %al,(%eax)
c020e8de:	00 00                	add    %al,(%eax)
c020e8e0:	4e                   	dec    %esi
c020e8e1:	00 00                	add    %al,(%eax)
c020e8e3:	00 3f                	add    %bh,(%edi)
c020e8e5:	30 10                	xor    %dl,(%eax)
c020e8e7:	c0                   	(bad)  
c020e8e8:	34 17                	xor    $0x17,%al
c020e8ea:	00 00                	add    %al,(%eax)
c020e8ec:	24 00                	and    $0x0,%al
c020e8ee:	49                   	dec    %ecx
c020e8ef:	00 3f                	add    %bh,(%edi)
c020e8f1:	30 10                	xor    %dl,(%eax)
c020e8f3:	c0 47 17 00          	rolb   $0x0,0x17(%edi)
c020e8f7:	00 a0 00 49 00 08    	add    %ah,0x8004900(%eax)
c020e8fd:	00 00                	add    %al,(%eax)
c020e8ff:	00 00                	add    %al,(%eax)
c020e901:	00 00                	add    %al,(%eax)
c020e903:	00 2e                	add    %ch,(%esi)
c020e905:	00 00                	add    %al,(%eax)
c020e907:	00 3f                	add    %bh,(%edi)
c020e909:	30 10                	xor    %dl,(%eax)
c020e90b:	c0 00 00             	rolb   $0x0,(%eax)
c020e90e:	00 00                	add    %al,(%eax)
c020e910:	44                   	inc    %esp
c020e911:	00 4a 00             	add    %cl,0x0(%edx)
	...
c020e91c:	44                   	inc    %esp
c020e91d:	00 4b 00             	add    %cl,0x0(%ebx)
c020e920:	03 00                	add    (%eax),%eax
c020e922:	00 00                	add    %al,(%eax)
c020e924:	00 00                	add    %al,(%eax)
c020e926:	00 00                	add    %al,(%eax)
c020e928:	44                   	inc    %esp
c020e929:	00 4c 00 09          	add    %cl,0x9(%eax,%eax,1)
c020e92d:	00 00                	add    %al,(%eax)
c020e92f:	00 00                	add    %al,(%eax)
c020e931:	00 00                	add    %al,(%eax)
c020e933:	00 24 00             	add    %ah,(%eax,%eax,1)
c020e936:	00 00                	add    %al,(%eax)
c020e938:	0b 00                	or     (%eax),%eax
c020e93a:	00 00                	add    %al,(%eax)
c020e93c:	00 00                	add    %al,(%eax)
c020e93e:	00 00                	add    %al,(%eax)
c020e940:	4e                   	dec    %esi
c020e941:	00 00                	add    %al,(%eax)
c020e943:	00 4a 30             	add    %cl,0x30(%edx)
c020e946:	10 c0                	adc    %al,%al
c020e948:	51                   	push   %ecx
c020e949:	17                   	pop    %ss
c020e94a:	00 00                	add    %al,(%eax)
c020e94c:	24 00                	and    $0x0,%al
c020e94e:	53                   	push   %ebx
c020e94f:	00 4a 30             	add    %cl,0x30(%edx)
c020e952:	10 c0                	adc    %al,%al
c020e954:	5d                   	pop    %ebp
c020e955:	17                   	pop    %ss
c020e956:	00 00                	add    %al,(%eax)
c020e958:	a0 00 53 00 08       	mov    0x8005300,%al
c020e95d:	00 00                	add    %al,(%eax)
c020e95f:	00 74 17 00          	add    %dh,0x0(%edi,%edx,1)
c020e963:	00 a0 00 53 00 0c    	add    %ah,0xc005300(%eax)
c020e969:	00 00                	add    %al,(%eax)
c020e96b:	00 7e 17             	add    %bh,0x17(%esi)
c020e96e:	00 00                	add    %al,(%eax)
c020e970:	a0 00 53 00 10       	mov    0x10005300,%al
c020e975:	00 00                	add    %al,(%eax)
c020e977:	00 88 17 00 00 a0    	add    %cl,-0x5fffffe9(%eax)
c020e97d:	00 53 00             	add    %dl,0x0(%ebx)
c020e980:	14 00                	adc    $0x0,%al
c020e982:	00 00                	add    %al,(%eax)
c020e984:	00 00                	add    %al,(%eax)
c020e986:	00 00                	add    %al,(%eax)
c020e988:	2e 00 00             	add    %al,%cs:(%eax)
c020e98b:	00 4a 30             	add    %cl,0x30(%edx)
c020e98e:	10 c0                	adc    %al,%al
c020e990:	00 00                	add    %al,(%eax)
c020e992:	00 00                	add    %al,(%eax)
c020e994:	44                   	inc    %esp
c020e995:	00 54 00 00          	add    %dl,0x0(%eax,%eax,1)
c020e999:	00 00                	add    %al,(%eax)
c020e99b:	00 00                	add    %al,(%eax)
c020e99d:	00 00                	add    %al,(%eax)
c020e99f:	00 44 00 56          	add    %al,0x56(%eax,%eax,1)
c020e9a3:	00 06                	add    %al,(%esi)
c020e9a5:	00 00                	add    %al,(%eax)
c020e9a7:	00 00                	add    %al,(%eax)
c020e9a9:	00 00                	add    %al,(%eax)
c020e9ab:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c020e9af:	00 0f                	add    %cl,(%edi)
c020e9b1:	00 00                	add    %al,(%eax)
c020e9b3:	00 00                	add    %al,(%eax)
c020e9b5:	00 00                	add    %al,(%eax)
c020e9b7:	00 44 00 5a          	add    %al,0x5a(%eax,%eax,1)
c020e9bb:	00 1d 00 00 00 00    	add    %bl,0x0
c020e9c1:	00 00                	add    %al,(%eax)
c020e9c3:	00 44 00 5d          	add    %al,0x5d(%eax,%eax,1)
c020e9c7:	00 36                	add    %dh,(%esi)
c020e9c9:	00 00                	add    %al,(%eax)
c020e9cb:	00 00                	add    %al,(%eax)
c020e9cd:	00 00                	add    %al,(%eax)
c020e9cf:	00 44 00 5e          	add    %al,0x5e(%eax,%eax,1)
c020e9d3:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020e9d6:	00 00                	add    %al,(%eax)
c020e9d8:	00 00                	add    %al,(%eax)
c020e9da:	00 00                	add    %al,(%eax)
c020e9dc:	44                   	inc    %esp
c020e9dd:	00 5f 00             	add    %bl,0x0(%edi)
c020e9e0:	44                   	inc    %esp
c020e9e1:	00 00                	add    %al,(%eax)
c020e9e3:	00 00                	add    %al,(%eax)
c020e9e5:	00 00                	add    %al,(%eax)
c020e9e7:	00 44 00 61          	add    %al,0x61(%eax,%eax,1)
c020e9eb:	00 5b 00             	add    %bl,0x0(%ebx)
c020e9ee:	00 00                	add    %al,(%eax)
c020e9f0:	00 00                	add    %al,(%eax)
c020e9f2:	00 00                	add    %al,(%eax)
c020e9f4:	44                   	inc    %esp
c020e9f5:	00 62 00             	add    %ah,0x0(%edx)
c020e9f8:	66                   	data16
c020e9f9:	00 00                	add    %al,(%eax)
c020e9fb:	00 00                	add    %al,(%eax)
c020e9fd:	00 00                	add    %al,(%eax)
c020e9ff:	00 44 00 65          	add    %al,0x65(%eax,%eax,1)
c020ea03:	00 7b 00             	add    %bh,0x0(%ebx)
c020ea06:	00 00                	add    %al,(%eax)
c020ea08:	00 00                	add    %al,(%eax)
c020ea0a:	00 00                	add    %al,(%eax)
c020ea0c:	44                   	inc    %esp
c020ea0d:	00 68 00             	add    %ch,0x0(%eax)
c020ea10:	86 00                	xchg   %al,(%eax)
c020ea12:	00 00                	add    %al,(%eax)
c020ea14:	00 00                	add    %al,(%eax)
c020ea16:	00 00                	add    %al,(%eax)
c020ea18:	44                   	inc    %esp
c020ea19:	00 6b 00             	add    %ch,0x0(%ebx)
c020ea1c:	a2 00 00 00 00       	mov    %al,0x0
c020ea21:	00 00                	add    %al,(%eax)
c020ea23:	00 44 00 6c          	add    %al,0x6c(%eax,%eax,1)
c020ea27:	00 a8 00 00 00 95    	add    %ch,-0x6b000000(%eax)
c020ea2d:	17                   	pop    %ss
c020ea2e:	00 00                	add    %al,(%eax)
c020ea30:	80 00 56             	addb   $0x56,(%eax)
c020ea33:	00 f0                	add    %dh,%al
c020ea35:	ff                   	(bad)  
c020ea36:	ff                   	(bad)  
c020ea37:	ff a3 17 00 00 80    	jmp    *-0x7fffffe9(%ebx)
c020ea3d:	00 57 00             	add    %dl,0x0(%edi)
c020ea40:	ec                   	in     (%dx),%al
c020ea41:	ff                   	(bad)  
c020ea42:	ff                   	(bad)  
c020ea43:	ff b1 17 00 00 80    	pushl  -0x7fffffe9(%ecx)
c020ea49:	00 5a 00             	add    %bl,0x0(%edx)
c020ea4c:	f4                   	hlt    
c020ea4d:	ff                   	(bad)  
c020ea4e:	ff                   	(bad)  
c020ea4f:	ff 00                	incl   (%eax)
c020ea51:	00 00                	add    %al,(%eax)
c020ea53:	00 c0                	add    %al,%al
	...
c020ea5d:	00 00                	add    %al,(%eax)
c020ea5f:	00 e0                	add    %ah,%al
c020ea61:	00 00                	add    %al,(%eax)
c020ea63:	00 aa 00 00 00 00    	add    %ch,0x0(%edx)
c020ea69:	00 00                	add    %al,(%eax)
c020ea6b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ea6e:	00 00                	add    %al,(%eax)
c020ea70:	aa                   	stos   %al,%es:(%edi)
c020ea71:	00 00                	add    %al,(%eax)
c020ea73:	00 00                	add    %al,(%eax)
c020ea75:	00 00                	add    %al,(%eax)
c020ea77:	00 4e 00             	add    %cl,0x0(%esi)
c020ea7a:	00 00                	add    %al,(%eax)
c020ea7c:	f4                   	hlt    
c020ea7d:	30 10                	xor    %dl,(%eax)
c020ea7f:	c0 c3 17             	rol    $0x17,%bl
c020ea82:	00 00                	add    %al,(%eax)
c020ea84:	24 00                	and    $0x0,%al
c020ea86:	74 00                	je     c020ea88 <interrupt_handlers+0x3228>
c020ea88:	f4                   	hlt    
c020ea89:	30 10                	xor    %dl,(%eax)
c020ea8b:	c0 d1 17             	rcl    $0x17,%cl
c020ea8e:	00 00                	add    %al,(%eax)
c020ea90:	a0 00 74 00 08       	mov    0x8007400,%al
c020ea95:	00 00                	add    %al,(%eax)
c020ea97:	00 74 17 00          	add    %dh,0x0(%edi,%edx,1)
c020ea9b:	00 a0 00 74 00 0c    	add    %ah,0xc007400(%eax)
c020eaa1:	00 00                	add    %al,(%eax)
c020eaa3:	00 00                	add    %al,(%eax)
c020eaa5:	00 00                	add    %al,(%eax)
c020eaa7:	00 2e                	add    %ch,(%esi)
c020eaa9:	00 00                	add    %al,(%eax)
c020eaab:	00 f4                	add    %dh,%ah
c020eaad:	30 10                	xor    %dl,(%eax)
c020eaaf:	c0 00 00             	rolb   $0x0,(%eax)
c020eab2:	00 00                	add    %al,(%eax)
c020eab4:	44                   	inc    %esp
c020eab5:	00 75 00             	add    %dh,0x0(%ebp)
	...
c020eac0:	44                   	inc    %esp
c020eac1:	00 76 00             	add    %dh,0x0(%esi)
c020eac4:	06                   	push   %es
c020eac5:	00 00                	add    %al,(%eax)
c020eac7:	00 00                	add    %al,(%eax)
c020eac9:	00 00                	add    %al,(%eax)
c020eacb:	00 44 00 77          	add    %al,0x77(%eax,%eax,1)
c020eacf:	00 0f                	add    %cl,(%edi)
c020ead1:	00 00                	add    %al,(%eax)
c020ead3:	00 00                	add    %al,(%eax)
c020ead5:	00 00                	add    %al,(%eax)
c020ead7:	00 44 00 79          	add    %al,0x79(%eax,%eax,1)
c020eadb:	00 1d 00 00 00 00    	add    %bl,0x0
c020eae1:	00 00                	add    %al,(%eax)
c020eae3:	00 44 00 7c          	add    %al,0x7c(%eax,%eax,1)
c020eae7:	00 36                	add    %dh,(%esi)
c020eae9:	00 00                	add    %al,(%eax)
c020eaeb:	00 00                	add    %al,(%eax)
c020eaed:	00 00                	add    %al,(%eax)
c020eaef:	00 44 00 83          	add    %al,-0x7d(%eax,%eax,1)
c020eaf3:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020eaf6:	00 00                	add    %al,(%eax)
c020eaf8:	00 00                	add    %al,(%eax)
c020eafa:	00 00                	add    %al,(%eax)
c020eafc:	44                   	inc    %esp
c020eafd:	00 85 00 51 00 00    	add    %al,0x5100(%ebp)
c020eb03:	00 00                	add    %al,(%eax)
c020eb05:	00 00                	add    %al,(%eax)
c020eb07:	00 44 00 7d          	add    %al,0x7d(%eax,%eax,1)
c020eb0b:	00 59 00             	add    %bl,0x0(%ecx)
c020eb0e:	00 00                	add    %al,(%eax)
c020eb10:	00 00                	add    %al,(%eax)
c020eb12:	00 00                	add    %al,(%eax)
c020eb14:	44                   	inc    %esp
c020eb15:	00 86 00 5a 00 00    	add    %al,0x5a00(%esi)
c020eb1b:	00 95 17 00 00 80    	add    %dl,-0x7fffffe9(%ebp)
c020eb21:	00 76 00             	add    %dh,0x0(%esi)
c020eb24:	fc                   	cld    
c020eb25:	ff                   	(bad)  
c020eb26:	ff                   	(bad)  
c020eb27:	ff a3 17 00 00 80    	jmp    *-0x7fffffe9(%ebx)
c020eb2d:	00 77 00             	add    %dh,0x0(%edi)
c020eb30:	f8                   	clc    
c020eb31:	ff                   	(bad)  
c020eb32:	ff                   	(bad)  
c020eb33:	ff e1                	jmp    *%ecx
c020eb35:	17                   	pop    %ss
c020eb36:	00 00                	add    %al,(%eax)
c020eb38:	80 00 79             	addb   $0x79,(%eax)
c020eb3b:	00 f4                	add    %dh,%ah
c020eb3d:	ff                   	(bad)  
c020eb3e:	ff                   	(bad)  
c020eb3f:	ff 00                	incl   (%eax)
c020eb41:	00 00                	add    %al,(%eax)
c020eb43:	00 c0                	add    %al,%al
	...
c020eb4d:	00 00                	add    %al,(%eax)
c020eb4f:	00 e0                	add    %ah,%al
c020eb51:	00 00                	add    %al,(%eax)
c020eb53:	00 5c 00 00          	add    %bl,0x0(%eax,%eax,1)
c020eb57:	00 00                	add    %al,(%eax)
c020eb59:	00 00                	add    %al,(%eax)
c020eb5b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020eb5e:	00 00                	add    %al,(%eax)
c020eb60:	5c                   	pop    %esp
c020eb61:	00 00                	add    %al,(%eax)
c020eb63:	00 00                	add    %al,(%eax)
c020eb65:	00 00                	add    %al,(%eax)
c020eb67:	00 4e 00             	add    %cl,0x0(%esi)
c020eb6a:	00 00                	add    %al,(%eax)
c020eb6c:	50                   	push   %eax
c020eb6d:	31 10                	xor    %edx,(%eax)
c020eb6f:	c0 ec 17             	shr    $0x17,%ah
c020eb72:	00 00                	add    %al,(%eax)
c020eb74:	24 00                	and    $0x0,%al
c020eb76:	88 00                	mov    %al,(%eax)
c020eb78:	50                   	push   %eax
c020eb79:	31 10                	xor    %edx,(%eax)
c020eb7b:	c0 d1 17             	rcl    $0x17,%cl
c020eb7e:	00 00                	add    %al,(%eax)
c020eb80:	a0 00 88 00 08       	mov    0x8008800,%al
c020eb85:	00 00                	add    %al,(%eax)
c020eb87:	00 74 17 00          	add    %dh,0x0(%edi,%edx,1)
c020eb8b:	00 a0 00 88 00 0c    	add    %ah,0xc008800(%eax)
c020eb91:	00 00                	add    %al,(%eax)
c020eb93:	00 ff                	add    %bh,%bh
c020eb95:	17                   	pop    %ss
c020eb96:	00 00                	add    %al,(%eax)
c020eb98:	a0 00 88 00 10       	mov    0x10008800,%al
c020eb9d:	00 00                	add    %al,(%eax)
c020eb9f:	00 00                	add    %al,(%eax)
c020eba1:	00 00                	add    %al,(%eax)
c020eba3:	00 2e                	add    %ch,(%esi)
c020eba5:	00 00                	add    %al,(%eax)
c020eba7:	00 50 31             	add    %dl,0x31(%eax)
c020ebaa:	10 c0                	adc    %al,%al
c020ebac:	00 00                	add    %al,(%eax)
c020ebae:	00 00                	add    %al,(%eax)
c020ebb0:	44                   	inc    %esp
c020ebb1:	00 89 00 00 00 00    	add    %cl,0x0(%ecx)
c020ebb7:	00 00                	add    %al,(%eax)
c020ebb9:	00 00                	add    %al,(%eax)
c020ebbb:	00 44 00 8a          	add    %al,-0x76(%eax,%eax,1)
c020ebbf:	00 06                	add    %al,(%esi)
c020ebc1:	00 00                	add    %al,(%eax)
c020ebc3:	00 00                	add    %al,(%eax)
c020ebc5:	00 00                	add    %al,(%eax)
c020ebc7:	00 44 00 8b          	add    %al,-0x75(%eax,%eax,1)
c020ebcb:	00 0f                	add    %cl,(%edi)
c020ebcd:	00 00                	add    %al,(%eax)
c020ebcf:	00 00                	add    %al,(%eax)
c020ebd1:	00 00                	add    %al,(%eax)
c020ebd3:	00 44 00 8d          	add    %al,-0x73(%eax,%eax,1)
c020ebd7:	00 1d 00 00 00 00    	add    %bl,0x0
c020ebdd:	00 00                	add    %al,(%eax)
c020ebdf:	00 44 00 8f          	add    %al,-0x71(%eax,%eax,1)
c020ebe3:	00 36                	add    %dh,(%esi)
c020ebe5:	00 00                	add    %al,(%eax)
c020ebe7:	00 00                	add    %al,(%eax)
c020ebe9:	00 00                	add    %al,(%eax)
c020ebeb:	00 44 00 90          	add    %al,-0x70(%eax,%eax,1)
c020ebef:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020ebf2:	00 00                	add    %al,(%eax)
c020ebf4:	00 00                	add    %al,(%eax)
c020ebf6:	00 00                	add    %al,(%eax)
c020ebf8:	44                   	inc    %esp
c020ebf9:	00 93 00 43 00 00    	add    %dl,0x4300(%ebx)
c020ebff:	00 00                	add    %al,(%eax)
c020ec01:	00 00                	add    %al,(%eax)
c020ec03:	00 44 00 95          	add    %al,-0x6b(%eax,%eax,1)
c020ec07:	00 4e 00             	add    %cl,0x0(%esi)
c020ec0a:	00 00                	add    %al,(%eax)
c020ec0c:	00 00                	add    %al,(%eax)
c020ec0e:	00 00                	add    %al,(%eax)
c020ec10:	44                   	inc    %esp
c020ec11:	00 95 00 63 00 00    	add    %dl,0x6300(%ebp)
c020ec17:	00 00                	add    %al,(%eax)
c020ec19:	00 00                	add    %al,(%eax)
c020ec1b:	00 44 00 96          	add    %al,-0x6a(%eax,%eax,1)
c020ec1f:	00 69 00             	add    %ch,0x0(%ecx)
c020ec22:	00 00                	add    %al,(%eax)
c020ec24:	00 00                	add    %al,(%eax)
c020ec26:	00 00                	add    %al,(%eax)
c020ec28:	44                   	inc    %esp
c020ec29:	00 97 00 87 00 00    	add    %dl,0x8700(%edi)
c020ec2f:	00 00                	add    %al,(%eax)
c020ec31:	00 00                	add    %al,(%eax)
c020ec33:	00 44 00 9a          	add    %al,-0x66(%eax,%eax,1)
c020ec37:	00 8e 00 00 00 00    	add    %cl,0x0(%esi)
c020ec3d:	00 00                	add    %al,(%eax)
c020ec3f:	00 44 00 9b          	add    %al,-0x65(%eax,%eax,1)
c020ec43:	00 93 00 00 00 95    	add    %dl,-0x6b000000(%ebx)
c020ec49:	17                   	pop    %ss
c020ec4a:	00 00                	add    %al,(%eax)
c020ec4c:	80 00 8a             	addb   $0x8a,(%eax)
c020ec4f:	00 fc                	add    %bh,%ah
c020ec51:	ff                   	(bad)  
c020ec52:	ff                   	(bad)  
c020ec53:	ff a3 17 00 00 80    	jmp    *-0x7fffffe9(%ebx)
c020ec59:	00 8b 00 f8 ff ff    	add    %cl,-0x800(%ebx)
c020ec5f:	ff e1                	jmp    *%ecx
c020ec61:	17                   	pop    %ss
c020ec62:	00 00                	add    %al,(%eax)
c020ec64:	80 00 8d             	addb   $0x8d,(%eax)
c020ec67:	00 f4                	add    %dh,%ah
c020ec69:	ff                   	(bad)  
c020ec6a:	ff                   	(bad)  
c020ec6b:	ff 00                	incl   (%eax)
c020ec6d:	00 00                	add    %al,(%eax)
c020ec6f:	00 c0                	add    %al,%al
	...
c020ec79:	00 00                	add    %al,(%eax)
c020ec7b:	00 e0                	add    %ah,%al
c020ec7d:	00 00                	add    %al,(%eax)
c020ec7f:	00 95 00 00 00 00    	add    %dl,0x0(%ebp)
c020ec85:	00 00                	add    %al,(%eax)
c020ec87:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ec8a:	00 00                	add    %al,(%eax)
c020ec8c:	95                   	xchg   %eax,%ebp
c020ec8d:	00 00                	add    %al,(%eax)
c020ec8f:	00 00                	add    %al,(%eax)
c020ec91:	00 00                	add    %al,(%eax)
c020ec93:	00 4e 00             	add    %cl,0x0(%esi)
c020ec96:	00 00                	add    %al,(%eax)
c020ec98:	e5 31                	in     $0x31,%eax
c020ec9a:	10 c0                	adc    %al,%al
c020ec9c:	0a 18                	or     (%eax),%bl
c020ec9e:	00 00                	add    %al,(%eax)
c020eca0:	28 00                	sub    %al,(%eax)
c020eca2:	24 00                	and    $0x0,%al
c020eca4:	00 60 10             	add    %ah,0x10(%eax)
c020eca7:	c0 61 18 00          	shlb   $0x0,0x18(%ecx)
c020ecab:	00 20                	add    %ah,(%eax)
c020ecad:	00 21                	add    %ah,(%ecx)
	...
c020ecb7:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c020ecbb:	00 e5                	add    %ah,%ch
c020ecbd:	31 10                	xor    %edx,(%eax)
c020ecbf:	c0 19 00             	rcrb   $0x0,(%ecx)
c020ecc2:	00 00                	add    %al,(%eax)
c020ecc4:	64 00 02             	add    %al,%fs:(%edx)
c020ecc7:	00 e8                	add    %ch,%al
c020ecc9:	31 10                	xor    %edx,(%eax)
c020eccb:	c0 8a 18 00 00 64 00 	rorb   $0x0,0x64000018(%edx)
c020ecd2:	02 00                	add    (%eax),%al
c020ecd4:	e8 31 10 c0 4e       	call   ee0fd0a <pte_high+0xed0e8fe>
c020ecd9:	00 00                	add    %al,(%eax)
c020ecdb:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020ecde:	00 00                	add    %al,(%eax)
c020ece0:	00 00                	add    %al,(%eax)
c020ece2:	00 00                	add    %al,(%eax)
c020ece4:	5d                   	pop    %ebp
c020ece5:	00 00                	add    %al,(%eax)
c020ece7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020eced:	00 00                	add    %al,(%eax)
c020ecef:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020ecf5:	00 00                	add    %al,(%eax)
c020ecf7:	00 00                	add    %al,(%eax)
c020ecf9:	00 00                	add    %al,(%eax)
c020ecfb:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020ed01:	00 00                	add    %al,(%eax)
c020ed03:	00 00                	add    %al,(%eax)
c020ed05:	00 00                	add    %al,(%eax)
c020ed07:	00 d0                	add    %dl,%al
c020ed09:	00 00                	add    %al,(%eax)
c020ed0b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed11:	00 00                	add    %al,(%eax)
c020ed13:	00 fb                	add    %bh,%bl
c020ed15:	00 00                	add    %al,(%eax)
c020ed17:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed1d:	00 00                	add    %al,(%eax)
c020ed1f:	00 2b                	add    %ch,(%ebx)
c020ed21:	01 00                	add    %eax,(%eax)
c020ed23:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed29:	00 00                	add    %al,(%eax)
c020ed2b:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020ed2f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed35:	00 00                	add    %al,(%eax)
c020ed37:	00 c1                	add    %al,%cl
c020ed39:	01 00                	add    %eax,(%eax)
c020ed3b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed41:	00 00                	add    %al,(%eax)
c020ed43:	00 ec                	add    %ch,%ah
c020ed45:	01 00                	add    %eax,(%eax)
c020ed47:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed4d:	00 00                	add    %al,(%eax)
c020ed4f:	00 1b                	add    %bl,(%ebx)
c020ed51:	02 00                	add    (%eax),%al
c020ed53:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed59:	00 00                	add    %al,(%eax)
c020ed5b:	00 45 02             	add    %al,0x2(%ebp)
c020ed5e:	00 00                	add    %al,(%eax)
c020ed60:	80 00 00             	addb   $0x0,(%eax)
c020ed63:	00 00                	add    %al,(%eax)
c020ed65:	00 00                	add    %al,(%eax)
c020ed67:	00 6e 02             	add    %ch,0x2(%esi)
c020ed6a:	00 00                	add    %al,(%eax)
c020ed6c:	80 00 00             	addb   $0x0,(%eax)
c020ed6f:	00 00                	add    %al,(%eax)
c020ed71:	00 00                	add    %al,(%eax)
c020ed73:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020ed79:	00 00                	add    %al,(%eax)
c020ed7b:	00 00                	add    %al,(%eax)
c020ed7d:	00 00                	add    %al,(%eax)
c020ed7f:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020ed85:	00 00                	add    %al,(%eax)
c020ed87:	00 00                	add    %al,(%eax)
c020ed89:	00 00                	add    %al,(%eax)
c020ed8b:	00 c4                	add    %al,%ah
c020ed8d:	02 00                	add    (%eax),%al
c020ed8f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ed95:	00 00                	add    %al,(%eax)
c020ed97:	00 e3                	add    %ah,%bl
c020ed99:	02 00                	add    (%eax),%al
c020ed9b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020eda1:	00 00                	add    %al,(%eax)
c020eda3:	00 02                	add    %al,(%edx)
c020eda5:	03 00                	add    (%eax),%eax
c020eda7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020edad:	00 00                	add    %al,(%eax)
c020edaf:	00 23                	add    %ah,(%ebx)
c020edb1:	03 00                	add    (%eax),%eax
c020edb3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020edb9:	00 00                	add    %al,(%eax)
c020edbb:	00 7a 06             	add    %bh,0x6(%edx)
c020edbe:	00 00                	add    %al,(%eax)
c020edc0:	c2 00 00             	ret    $0x0
c020edc3:	00 b9 08 00 00 47    	add    %bh,0x47000008(%ecx)
c020edc9:	03 00                	add    (%eax),%eax
c020edcb:	00 c2                	add    %al,%dl
c020edcd:	00 00                	add    %al,(%eax)
c020edcf:	00 26                	add    %ah,(%esi)
c020edd1:	19 00                	sbb    %eax,(%eax)
c020edd3:	00 88 06 00 00 c2    	add    %cl,-0x3dfffffa(%eax)
c020edd9:	00 00                	add    %al,(%eax)
c020eddb:	00 89 91 00 00 37    	add    %cl,0x37000091(%ecx)
c020ede1:	03 00                	add    (%eax),%eax
c020ede3:	00 c2                	add    %al,%dl
c020ede5:	00 00                	add    %al,(%eax)
c020ede7:	00 00                	add    %al,(%eax)
c020ede9:	00 00                	add    %al,(%eax)
c020edeb:	00 cb                	add    %cl,%bl
c020eded:	03 00                	add    (%eax),%eax
c020edef:	00 c2                	add    %al,%dl
c020edf1:	00 00                	add    %al,(%eax)
c020edf3:	00 f5                	add    %dh,%ch
c020edf5:	5f                   	pop    %edi
c020edf6:	00 00                	add    %al,(%eax)
c020edf8:	9a 18 00 00 24 00 16 	lcall  $0x1600,$0x24000018
c020edff:	00 e8                	add    %ch,%al
c020ee01:	31 10                	xor    %edx,(%eax)
c020ee03:	c0 ad 18 00 00 a0 00 	shrb   $0x0,-0x5fffffe8(%ebp)
c020ee0a:	16                   	push   %ss
c020ee0b:	00 08                	add    %cl,(%eax)
c020ee0d:	00 00                	add    %al,(%eax)
c020ee0f:	00 00                	add    %al,(%eax)
c020ee11:	00 00                	add    %al,(%eax)
c020ee13:	00 2e                	add    %ch,(%esi)
c020ee15:	00 00                	add    %al,(%eax)
c020ee17:	00 e8                	add    %ch,%al
c020ee19:	31 10                	xor    %edx,(%eax)
c020ee1b:	c0 00 00             	rolb   $0x0,(%eax)
c020ee1e:	00 00                	add    %al,(%eax)
c020ee20:	44                   	inc    %esp
c020ee21:	00 17                	add    %dl,(%edi)
	...
c020ee2b:	00 44 00 1a          	add    %al,0x1a(%eax,%eax,1)
c020ee2f:	00 07                	add    %al,(%edi)
c020ee31:	00 00                	add    %al,(%eax)
c020ee33:	00 00                	add    %al,(%eax)
c020ee35:	00 00                	add    %al,(%eax)
c020ee37:	00 44 00 1c          	add    %al,0x1c(%eax,%eax,1)
c020ee3b:	00 0d 00 00 00 00    	add    %cl,0x0
c020ee41:	00 00                	add    %al,(%eax)
c020ee43:	00 44 00 1d          	add    %al,0x1d(%eax,%eax,1)
c020ee47:	00 2a                	add    %ch,(%edx)
c020ee49:	00 00                	add    %al,(%eax)
c020ee4b:	00 00                	add    %al,(%eax)
c020ee4d:	00 00                	add    %al,(%eax)
c020ee4f:	00 44 00 20          	add    %al,0x20(%eax,%eax,1)
c020ee53:	00 40 00             	add    %al,0x0(%eax)
c020ee56:	00 00                	add    %al,(%eax)
c020ee58:	00 00                	add    %al,(%eax)
c020ee5a:	00 00                	add    %al,(%eax)
c020ee5c:	44                   	inc    %esp
c020ee5d:	00 21                	add    %ah,(%ecx)
c020ee5f:	00 4d 00             	add    %cl,0x0(%ebp)
c020ee62:	00 00                	add    %al,(%eax)
c020ee64:	00 00                	add    %al,(%eax)
c020ee66:	00 00                	add    %al,(%eax)
c020ee68:	44                   	inc    %esp
c020ee69:	00 25 00 59 00 00    	add    %ah,0x5900
c020ee6f:	00 00                	add    %al,(%eax)
c020ee71:	00 00                	add    %al,(%eax)
c020ee73:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020ee77:	00 66 00             	add    %ah,0x0(%esi)
c020ee7a:	00 00                	add    %al,(%eax)
c020ee7c:	00 00                	add    %al,(%eax)
c020ee7e:	00 00                	add    %al,(%eax)
c020ee80:	44                   	inc    %esp
c020ee81:	00 28                	add    %ch,(%eax)
c020ee83:	00 74 00 00          	add    %dh,0x0(%eax,%eax,1)
c020ee87:	00 00                	add    %al,(%eax)
c020ee89:	00 00                	add    %al,(%eax)
c020ee8b:	00 44 00 2b          	add    %al,0x2b(%eax,%eax,1)
c020ee8f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ee95:	00 00                	add    %al,(%eax)
c020ee97:	00 44 00 2c          	add    %al,0x2c(%eax,%eax,1)
c020ee9b:	00 8d 00 00 00 00    	add    %cl,0x0(%ebp)
c020eea1:	00 00                	add    %al,(%eax)
c020eea3:	00 44 00 2e          	add    %al,0x2e(%eax,%eax,1)
c020eea7:	00 9b 00 00 00 00    	add    %bl,0x0(%ebx)
c020eead:	00 00                	add    %al,(%eax)
c020eeaf:	00 44 00 32          	add    %al,0x32(%eax,%eax,1)
c020eeb3:	00 a7 00 00 00 00    	add    %ah,0x0(%edi)
c020eeb9:	00 00                	add    %al,(%eax)
c020eebb:	00 44 00 33          	add    %al,0x33(%eax,%eax,1)
c020eebf:	00 b4 00 00 00 00 00 	add    %dh,0x0(%eax,%eax,1)
c020eec6:	00 00                	add    %al,(%eax)
c020eec8:	44                   	inc    %esp
c020eec9:	00 37                	add    %dh,(%edi)
c020eecb:	00 c0                	add    %al,%al
c020eecd:	00 00                	add    %al,(%eax)
c020eecf:	00 00                	add    %al,(%eax)
c020eed1:	00 00                	add    %al,(%eax)
c020eed3:	00 44 00 38          	add    %al,0x38(%eax,%eax,1)
c020eed7:	00 cd                	add    %cl,%ch
c020eed9:	00 00                	add    %al,(%eax)
c020eedb:	00 00                	add    %al,(%eax)
c020eedd:	00 00                	add    %al,(%eax)
c020eedf:	00 44 00 3b          	add    %al,0x3b(%eax,%eax,1)
c020eee3:	00 d9                	add    %bl,%cl
c020eee5:	00 00                	add    %al,(%eax)
c020eee7:	00 c1                	add    %al,%cl
c020eee9:	18 00                	sbb    %al,(%eax)
c020eeeb:	00 80 00 19 00 f4    	add    %al,-0xbffe700(%eax)
c020eef1:	ff                   	(bad)  
c020eef2:	ff                   	(bad)  
c020eef3:	ff 00                	incl   (%eax)
c020eef5:	00 00                	add    %al,(%eax)
c020eef7:	00 c0                	add    %al,%al
	...
c020ef01:	00 00                	add    %al,(%eax)
c020ef03:	00 e0                	add    %ah,%al
c020ef05:	00 00                	add    %al,(%eax)
c020ef07:	00 db                	add    %bl,%bl
c020ef09:	00 00                	add    %al,(%eax)
c020ef0b:	00 00                	add    %al,(%eax)
c020ef0d:	00 00                	add    %al,(%eax)
c020ef0f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ef12:	00 00                	add    %al,(%eax)
c020ef14:	db 00                	fildl  (%eax)
c020ef16:	00 00                	add    %al,(%eax)
c020ef18:	00 00                	add    %al,(%eax)
c020ef1a:	00 00                	add    %al,(%eax)
c020ef1c:	4e                   	dec    %esi
c020ef1d:	00 00                	add    %al,(%eax)
c020ef1f:	00 c3                	add    %al,%bl
c020ef21:	32 10                	xor    (%eax),%dl
c020ef23:	c0 00 00             	rolb   $0x0,(%eax)
c020ef26:	00 00                	add    %al,(%eax)
c020ef28:	64 00 00             	add    %al,%fs:(%eax)
c020ef2b:	00 c3                	add    %al,%bl
c020ef2d:	32 10                	xor    (%eax),%dl
c020ef2f:	c0 19 00             	rcrb   $0x0,(%ecx)
c020ef32:	00 00                	add    %al,(%eax)
c020ef34:	64 00 02             	add    %al,%fs:(%edx)
c020ef37:	00 c4                	add    %al,%ah
c020ef39:	32 10                	xor    (%eax),%dl
c020ef3b:	c0 cb 18             	ror    $0x18,%bl
c020ef3e:	00 00                	add    %al,(%eax)
c020ef40:	64 00 02             	add    %al,%fs:(%edx)
c020ef43:	00 c4                	add    %al,%ah
c020ef45:	32 10                	xor    (%eax),%dl
c020ef47:	c0 4e 00 00          	rorb   $0x0,0x0(%esi)
c020ef4b:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020ef4e:	00 00                	add    %al,(%eax)
c020ef50:	00 00                	add    %al,(%eax)
c020ef52:	00 00                	add    %al,(%eax)
c020ef54:	5d                   	pop    %ebp
c020ef55:	00 00                	add    %al,(%eax)
c020ef57:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ef5d:	00 00                	add    %al,(%eax)
c020ef5f:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020ef65:	00 00                	add    %al,(%eax)
c020ef67:	00 00                	add    %al,(%eax)
c020ef69:	00 00                	add    %al,(%eax)
c020ef6b:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020ef71:	00 00                	add    %al,(%eax)
c020ef73:	00 00                	add    %al,(%eax)
c020ef75:	00 00                	add    %al,(%eax)
c020ef77:	00 d0                	add    %dl,%al
c020ef79:	00 00                	add    %al,(%eax)
c020ef7b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ef81:	00 00                	add    %al,(%eax)
c020ef83:	00 fb                	add    %bh,%bl
c020ef85:	00 00                	add    %al,(%eax)
c020ef87:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ef8d:	00 00                	add    %al,(%eax)
c020ef8f:	00 2b                	add    %ch,(%ebx)
c020ef91:	01 00                	add    %eax,(%eax)
c020ef93:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020ef99:	00 00                	add    %al,(%eax)
c020ef9b:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020ef9f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020efa5:	00 00                	add    %al,(%eax)
c020efa7:	00 c1                	add    %al,%cl
c020efa9:	01 00                	add    %eax,(%eax)
c020efab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020efb1:	00 00                	add    %al,(%eax)
c020efb3:	00 ec                	add    %ch,%ah
c020efb5:	01 00                	add    %eax,(%eax)
c020efb7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020efbd:	00 00                	add    %al,(%eax)
c020efbf:	00 1b                	add    %bl,(%ebx)
c020efc1:	02 00                	add    (%eax),%al
c020efc3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020efc9:	00 00                	add    %al,(%eax)
c020efcb:	00 45 02             	add    %al,0x2(%ebp)
c020efce:	00 00                	add    %al,(%eax)
c020efd0:	80 00 00             	addb   $0x0,(%eax)
c020efd3:	00 00                	add    %al,(%eax)
c020efd5:	00 00                	add    %al,(%eax)
c020efd7:	00 6e 02             	add    %ch,0x2(%esi)
c020efda:	00 00                	add    %al,(%eax)
c020efdc:	80 00 00             	addb   $0x0,(%eax)
c020efdf:	00 00                	add    %al,(%eax)
c020efe1:	00 00                	add    %al,(%eax)
c020efe3:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020efe9:	00 00                	add    %al,(%eax)
c020efeb:	00 00                	add    %al,(%eax)
c020efed:	00 00                	add    %al,(%eax)
c020efef:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020eff5:	00 00                	add    %al,(%eax)
c020eff7:	00 00                	add    %al,(%eax)
c020eff9:	00 00                	add    %al,(%eax)
c020effb:	00 c4                	add    %al,%ah
c020effd:	02 00                	add    (%eax),%al
c020efff:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f005:	00 00                	add    %al,(%eax)
c020f007:	00 e3                	add    %ah,%bl
c020f009:	02 00                	add    (%eax),%al
c020f00b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f011:	00 00                	add    %al,(%eax)
c020f013:	00 02                	add    %al,(%edx)
c020f015:	03 00                	add    (%eax),%eax
c020f017:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f01d:	00 00                	add    %al,(%eax)
c020f01f:	00 23                	add    %ah,(%ebx)
c020f021:	03 00                	add    (%eax),%eax
c020f023:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f029:	00 00                	add    %al,(%eax)
c020f02b:	00 be 16 00 00 c2    	add    %bh,-0x3dffffea(%esi)
c020f031:	00 00                	add    %al,(%eax)
c020f033:	00 00                	add    %al,(%eax)
c020f035:	00 00                	add    %al,(%eax)
c020f037:	00 ba 0c 00 00 c2    	add    %bh,-0x3dfffff4(%edx)
c020f03d:	00 00                	add    %al,(%eax)
c020f03f:	00 b6 d4 00 00 47    	add    %dh,0x470000d4(%esi)
c020f045:	03 00                	add    (%eax),%eax
c020f047:	00 c2                	add    %al,%dl
c020f049:	00 00                	add    %al,(%eax)
c020f04b:	00 26                	add    %ah,(%esi)
c020f04d:	19 00                	sbb    %eax,(%eax)
c020f04f:	00 37                	add    %dh,(%edi)
c020f051:	03 00                	add    (%eax),%eax
c020f053:	00 c2                	add    %al,%dl
c020f055:	00 00                	add    %al,(%eax)
c020f057:	00 00                	add    %al,(%eax)
c020f059:	00 00                	add    %al,(%eax)
c020f05b:	00 cb                	add    %cl,%bl
c020f05d:	03 00                	add    (%eax),%eax
c020f05f:	00 c2                	add    %al,%dl
c020f061:	00 00                	add    %al,(%eax)
c020f063:	00 f5                	add    %dh,%ch
c020f065:	5f                   	pop    %edi
c020f066:	00 00                	add    %al,(%eax)
c020f068:	d4 18                	aam    $0x18
c020f06a:	00 00                	add    %al,(%eax)
c020f06c:	24 00                	and    $0x0,%al
c020f06e:	15 00 c4 32 10       	adc    $0x1032c400,%eax
c020f073:	c0 00 00             	rolb   $0x0,(%eax)
c020f076:	00 00                	add    %al,(%eax)
c020f078:	2e 00 00             	add    %al,%cs:(%eax)
c020f07b:	00 c4                	add    %al,%ah
c020f07d:	32 10                	xor    (%eax),%dl
c020f07f:	c0 00 00             	rolb   $0x0,(%eax)
c020f082:	00 00                	add    %al,(%eax)
c020f084:	44                   	inc    %esp
c020f085:	00 16                	add    %dl,(%esi)
	...
c020f08f:	00 44 00 1b          	add    %al,0x1b(%eax,%eax,1)
c020f093:	00 08                	add    %cl,(%eax)
c020f095:	00 00                	add    %al,(%eax)
c020f097:	00 00                	add    %al,(%eax)
c020f099:	00 00                	add    %al,(%eax)
c020f09b:	00 44 00 1c          	add    %al,0x1c(%eax,%eax,1)
c020f09f:	00 13                	add    %dl,(%ebx)
c020f0a1:	00 00                	add    %al,(%eax)
c020f0a3:	00 00                	add    %al,(%eax)
c020f0a5:	00 00                	add    %al,(%eax)
c020f0a7:	00 44 00 1e          	add    %al,0x1e(%eax,%eax,1)
c020f0ab:	00 1e                	add    %bl,(%esi)
c020f0ad:	00 00                	add    %al,(%eax)
c020f0af:	00 00                	add    %al,(%eax)
c020f0b1:	00 00                	add    %al,(%eax)
c020f0b3:	00 44 00 24          	add    %al,0x24(%eax,%eax,1)
c020f0b7:	00 2a                	add    %ch,(%edx)
c020f0b9:	00 00                	add    %al,(%eax)
c020f0bb:	00 00                	add    %al,(%eax)
c020f0bd:	00 00                	add    %al,(%eax)
c020f0bf:	00 44 00 25          	add    %al,0x25(%eax,%eax,1)
c020f0c3:	00 30                	add    %dh,(%eax)
c020f0c5:	00 00                	add    %al,(%eax)
c020f0c7:	00 00                	add    %al,(%eax)
c020f0c9:	00 00                	add    %al,(%eax)
c020f0cb:	00 44 00 29          	add    %al,0x29(%eax,%eax,1)
c020f0cf:	00 38                	add    %bh,(%eax)
c020f0d1:	00 00                	add    %al,(%eax)
c020f0d3:	00 00                	add    %al,(%eax)
c020f0d5:	00 00                	add    %al,(%eax)
c020f0d7:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020f0db:	00 3b                	add    %bh,(%ebx)
c020f0dd:	00 00                	add    %al,(%eax)
c020f0df:	00 00                	add    %al,(%eax)
c020f0e1:	00 00                	add    %al,(%eax)
c020f0e3:	00 44 00 28          	add    %al,0x28(%eax,%eax,1)
c020f0e7:	00 3e                	add    %bh,(%esi)
c020f0e9:	00 00                	add    %al,(%eax)
c020f0eb:	00 00                	add    %al,(%eax)
c020f0ed:	00 00                	add    %al,(%eax)
c020f0ef:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020f0f3:	00 41 00             	add    %al,0x0(%ecx)
c020f0f6:	00 00                	add    %al,(%eax)
c020f0f8:	00 00                	add    %al,(%eax)
c020f0fa:	00 00                	add    %al,(%eax)
c020f0fc:	44                   	inc    %esp
c020f0fd:	00 28                	add    %ch,(%eax)
c020f0ff:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c020f103:	00 00                	add    %al,(%eax)
c020f105:	00 00                	add    %al,(%eax)
c020f107:	00 44 00 26          	add    %al,0x26(%eax,%eax,1)
c020f10b:	00 47 00             	add    %al,0x0(%edi)
c020f10e:	00 00                	add    %al,(%eax)
c020f110:	00 00                	add    %al,(%eax)
c020f112:	00 00                	add    %al,(%eax)
c020f114:	44                   	inc    %esp
c020f115:	00 27                	add    %ah,(%edi)
c020f117:	00 4a 00             	add    %cl,0x0(%edx)
c020f11a:	00 00                	add    %al,(%eax)
c020f11c:	00 00                	add    %al,(%eax)
c020f11e:	00 00                	add    %al,(%eax)
c020f120:	44                   	inc    %esp
c020f121:	00 26                	add    %ah,(%esi)
c020f123:	00 4d 00             	add    %cl,0x0(%ebp)
c020f126:	00 00                	add    %al,(%eax)
c020f128:	00 00                	add    %al,(%eax)
c020f12a:	00 00                	add    %al,(%eax)
c020f12c:	44                   	inc    %esp
c020f12d:	00 27                	add    %ah,(%edi)
c020f12f:	00 50 00             	add    %dl,0x0(%eax)
c020f132:	00 00                	add    %al,(%eax)
c020f134:	00 00                	add    %al,(%eax)
c020f136:	00 00                	add    %al,(%eax)
c020f138:	44                   	inc    %esp
c020f139:	00 26                	add    %ah,(%esi)
c020f13b:	00 53 00             	add    %dl,0x0(%ebx)
c020f13e:	00 00                	add    %al,(%eax)
c020f140:	00 00                	add    %al,(%eax)
c020f142:	00 00                	add    %al,(%eax)
c020f144:	44                   	inc    %esp
c020f145:	00 25 00 76 00 00    	add    %ah,0x7600
c020f14b:	00 00                	add    %al,(%eax)
c020f14d:	00 00                	add    %al,(%eax)
c020f14f:	00 44 00 25          	add    %al,0x25(%eax,%eax,1)
c020f153:	00 7a 00             	add    %bh,0x0(%edx)
c020f156:	00 00                	add    %al,(%eax)
c020f158:	00 00                	add    %al,(%eax)
c020f15a:	00 00                	add    %al,(%eax)
c020f15c:	44                   	inc    %esp
c020f15d:	00 2b                	add    %ch,(%ebx)
c020f15f:	00 89 00 00 00 ec    	add    %cl,-0x14000000(%ecx)
c020f165:	18 00                	sbb    %al,(%eax)
c020f167:	00 80 00 1b 00 f0    	add    %al,-0xfffe500(%eax)
c020f16d:	ff                   	(bad)  
c020f16e:	ff                   	(bad)  
c020f16f:	ff                   	(bad)  
c020f170:	fc                   	cld    
c020f171:	18 00                	sbb    %al,(%eax)
c020f173:	00 80 00 1c 00 ec    	add    %al,-0x13ffe400(%eax)
c020f179:	ff                   	(bad)  
c020f17a:	ff                   	(bad)  
c020f17b:	ff 0e                	decl   (%esi)
c020f17d:	19 00                	sbb    %eax,(%eax)
c020f17f:	00 80 00 24 00 f4    	add    %al,-0xbffdc00(%eax)
c020f185:	ff                   	(bad)  
c020f186:	ff                   	(bad)  
c020f187:	ff 00                	incl   (%eax)
c020f189:	00 00                	add    %al,(%eax)
c020f18b:	00 c0                	add    %al,%al
	...
c020f195:	00 00                	add    %al,(%eax)
c020f197:	00 e0                	add    %ah,%al
c020f199:	00 00                	add    %al,(%eax)
c020f19b:	00 90 00 00 00 00    	add    %dl,0x0(%eax)
c020f1a1:	00 00                	add    %al,(%eax)
c020f1a3:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f1a6:	00 00                	add    %al,(%eax)
c020f1a8:	90                   	nop
c020f1a9:	00 00                	add    %al,(%eax)
c020f1ab:	00 00                	add    %al,(%eax)
c020f1ad:	00 00                	add    %al,(%eax)
c020f1af:	00 4e 00             	add    %cl,0x0(%esi)
c020f1b2:	00 00                	add    %al,(%eax)
c020f1b4:	54                   	push   %esp
c020f1b5:	33 10                	xor    (%eax),%edx
c020f1b7:	c0 21 19             	shlb   $0x19,(%ecx)
c020f1ba:	00 00                	add    %al,(%eax)
c020f1bc:	24 00                	and    $0x0,%al
c020f1be:	3b 00                	cmp    (%eax),%eax
c020f1c0:	54                   	push   %esp
c020f1c1:	33 10                	xor    (%eax),%edx
c020f1c3:	c0 00 00             	rolb   $0x0,(%eax)
c020f1c6:	00 00                	add    %al,(%eax)
c020f1c8:	2e 00 00             	add    %al,%cs:(%eax)
c020f1cb:	00 54 33 10          	add    %dl,0x10(%ebx,%esi,1)
c020f1cf:	c0 00 00             	rolb   $0x0,(%eax)
c020f1d2:	00 00                	add    %al,(%eax)
c020f1d4:	44                   	inc    %esp
c020f1d5:	00 3c 00             	add    %bh,(%eax,%eax,1)
	...
c020f1e0:	44                   	inc    %esp
c020f1e1:	00 3d 00 06 00 00    	add    %bh,0x600
c020f1e7:	00 00                	add    %al,(%eax)
c020f1e9:	00 00                	add    %al,(%eax)
c020f1eb:	00 44 00 3f          	add    %al,0x3f(%eax,%eax,1)
c020f1ef:	00 1d 00 00 00 00    	add    %bl,0x0
c020f1f5:	00 00                	add    %al,(%eax)
c020f1f7:	00 44 00 40          	add    %al,0x40(%eax,%eax,1)
c020f1fb:	00 20                	add    %ah,(%eax)
c020f1fd:	00 00                	add    %al,(%eax)
c020f1ff:	00 37                	add    %dh,(%edi)
c020f201:	19 00                	sbb    %eax,(%eax)
c020f203:	00 80 00 3d 00 fc    	add    %al,-0x3ffc300(%eax)
c020f209:	ff                   	(bad)  
c020f20a:	ff                   	(bad)  
c020f20b:	ff 00                	incl   (%eax)
c020f20d:	00 00                	add    %al,(%eax)
c020f20f:	00 c0                	add    %al,%al
	...
c020f219:	00 00                	add    %al,(%eax)
c020f21b:	00 e0                	add    %ah,%al
c020f21d:	00 00                	add    %al,(%eax)
c020f21f:	00 22                	add    %ah,(%edx)
c020f221:	00 00                	add    %al,(%eax)
c020f223:	00 00                	add    %al,(%eax)
c020f225:	00 00                	add    %al,(%eax)
c020f227:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f22a:	00 00                	add    %al,(%eax)
c020f22c:	22 00                	and    (%eax),%al
c020f22e:	00 00                	add    %al,(%eax)
c020f230:	00 00                	add    %al,(%eax)
c020f232:	00 00                	add    %al,(%eax)
c020f234:	4e                   	dec    %esi
c020f235:	00 00                	add    %al,(%eax)
c020f237:	00 76 33             	add    %dh,0x33(%esi)
c020f23a:	10 c0                	adc    %al,%al
c020f23c:	42                   	inc    %edx
c020f23d:	19 00                	sbb    %eax,(%eax)
c020f23f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f242:	42                   	inc    %edx
c020f243:	00 76 33             	add    %dh,0x33(%esi)
c020f246:	10 c0                	adc    %al,%al
c020f248:	58                   	pop    %eax
c020f249:	19 00                	sbb    %eax,(%eax)
c020f24b:	00 a0 00 42 00 08    	add    %ah,0x8004200(%eax)
c020f251:	00 00                	add    %al,(%eax)
c020f253:	00 00                	add    %al,(%eax)
c020f255:	00 00                	add    %al,(%eax)
c020f257:	00 2e                	add    %ch,(%esi)
c020f259:	00 00                	add    %al,(%eax)
c020f25b:	00 76 33             	add    %dh,0x33(%esi)
c020f25e:	10 c0                	adc    %al,%al
c020f260:	00 00                	add    %al,(%eax)
c020f262:	00 00                	add    %al,(%eax)
c020f264:	44                   	inc    %esp
c020f265:	00 43 00             	add    %al,0x0(%ebx)
	...
c020f270:	44                   	inc    %esp
c020f271:	00 44 00 03          	add    %al,0x3(%eax,%eax,1)
c020f275:	00 00                	add    %al,(%eax)
c020f277:	00 00                	add    %al,(%eax)
c020f279:	00 00                	add    %al,(%eax)
c020f27b:	00 44 00 45          	add    %al,0x45(%eax,%eax,1)
c020f27f:	00 1f                	add    %bl,(%edi)
c020f281:	00 00                	add    %al,(%eax)
c020f283:	00 00                	add    %al,(%eax)
c020f285:	00 00                	add    %al,(%eax)
c020f287:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f28a:	00 00                	add    %al,(%eax)
c020f28c:	21 00                	and    %eax,(%eax)
c020f28e:	00 00                	add    %al,(%eax)
c020f290:	00 00                	add    %al,(%eax)
c020f292:	00 00                	add    %al,(%eax)
c020f294:	4e                   	dec    %esi
c020f295:	00 00                	add    %al,(%eax)
c020f297:	00 97 33 10 c0 61    	add    %dl,0x61c01033(%edi)
c020f29d:	19 00                	sbb    %eax,(%eax)
c020f29f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f2a2:	46                   	inc    %esi
c020f2a3:	00 97 33 10 c0 00    	add    %dl,0xc01033(%edi)
c020f2a9:	00 00                	add    %al,(%eax)
c020f2ab:	00 2e                	add    %ch,(%esi)
c020f2ad:	00 00                	add    %al,(%eax)
c020f2af:	00 97 33 10 c0 00    	add    %dl,0xc01033(%edi)
c020f2b5:	00 00                	add    %al,(%eax)
c020f2b7:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
	...
c020f2c3:	00 44 00 4b          	add    %al,0x4b(%eax,%eax,1)
c020f2c7:	00 06                	add    %al,(%esi)
c020f2c9:	00 00                	add    %al,(%eax)
c020f2cb:	00 00                	add    %al,(%eax)
c020f2cd:	00 00                	add    %al,(%eax)
c020f2cf:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c020f2d3:	00 11                	add    %dl,(%ecx)
c020f2d5:	00 00                	add    %al,(%eax)
c020f2d7:	00 00                	add    %al,(%eax)
c020f2d9:	00 00                	add    %al,(%eax)
c020f2db:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c020f2df:	00 31                	add    %dh,(%ecx)
c020f2e1:	00 00                	add    %al,(%eax)
c020f2e3:	00 00                	add    %al,(%eax)
c020f2e5:	00 00                	add    %al,(%eax)
c020f2e7:	00 44 00 54          	add    %al,0x54(%eax,%eax,1)
c020f2eb:	00 39                	add    %bh,(%ecx)
c020f2ed:	00 00                	add    %al,(%eax)
c020f2ef:	00 00                	add    %al,(%eax)
c020f2f1:	00 00                	add    %al,(%eax)
c020f2f3:	00 44 00 54          	add    %al,0x54(%eax,%eax,1)
c020f2f7:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c020f2fb:	00 00                	add    %al,(%eax)
c020f2fd:	00 00                	add    %al,(%eax)
c020f2ff:	00 44 00 59          	add    %al,0x59(%eax,%eax,1)
c020f303:	00 51 00             	add    %dl,0x0(%ecx)
c020f306:	00 00                	add    %al,(%eax)
c020f308:	00 00                	add    %al,(%eax)
c020f30a:	00 00                	add    %al,(%eax)
c020f30c:	44                   	inc    %esp
c020f30d:	00 5a 00             	add    %bl,0x0(%edx)
c020f310:	68 00 00 00 00       	push   $0x0
c020f315:	00 00                	add    %al,(%eax)
c020f317:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c020f31b:	00 79 00             	add    %bh,0x0(%ecx)
c020f31e:	00 00                	add    %al,(%eax)
c020f320:	00 00                	add    %al,(%eax)
c020f322:	00 00                	add    %al,(%eax)
c020f324:	44                   	inc    %esp
c020f325:	00 61 00             	add    %ah,0x0(%ecx)
c020f328:	7b 00                	jnp    c020f32a <interrupt_handlers+0x3aca>
c020f32a:	00 00                	add    %al,(%eax)
c020f32c:	00 00                	add    %al,(%eax)
c020f32e:	00 00                	add    %al,(%eax)
c020f330:	44                   	inc    %esp
c020f331:	00 62 00             	add    %ah,0x0(%edx)
c020f334:	86 00                	xchg   %al,(%eax)
c020f336:	00 00                	add    %al,(%eax)
c020f338:	00 00                	add    %al,(%eax)
c020f33a:	00 00                	add    %al,(%eax)
c020f33c:	44                   	inc    %esp
c020f33d:	00 63 00             	add    %ah,0x0(%ebx)
c020f340:	8d 00                	lea    (%eax),%eax
c020f342:	00 00                	add    %al,(%eax)
c020f344:	00 00                	add    %al,(%eax)
c020f346:	00 00                	add    %al,(%eax)
c020f348:	44                   	inc    %esp
c020f349:	00 60 00             	add    %ah,0x0(%eax)
c020f34c:	9a 00 00 00 00 00 00 	lcall  $0x0,$0x0
c020f353:	00 44 00 60          	add    %al,0x60(%eax,%eax,1)
c020f357:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020f35d:	00 00                	add    %al,(%eax)
c020f35f:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c020f363:	00 ab 00 00 00 00    	add    %ch,0x0(%ebx)
c020f369:	00 00                	add    %al,(%eax)
c020f36b:	00 44 00 50          	add    %al,0x50(%eax,%eax,1)
c020f36f:	00 af 00 00 00 00    	add    %ch,0x0(%edi)
c020f375:	00 00                	add    %al,(%eax)
c020f377:	00 44 00 67          	add    %al,0x67(%eax,%eax,1)
c020f37b:	00 b7 00 00 00 72    	add    %dh,0x72000000(%edi)
c020f381:	19 00                	sbb    %eax,(%eax)
c020f383:	00 80 00 4b 00 f4    	add    %al,-0xbffb500(%eax)
c020f389:	ff                   	(bad)  
c020f38a:	ff                   	(bad)  
c020f38b:	ff 89 19 00 00 80    	decl   -0x7fffffe7(%ecx)
c020f391:	00 4c 00 f0          	add    %cl,-0x10(%eax,%eax,1)
c020f395:	ff                   	(bad)  
c020f396:	ff                   	(bad)  
c020f397:	ff 9e 19 00 00 80    	lcall  *-0x7fffffe7(%esi)
c020f39d:	00 4e 00             	add    %cl,0x0(%esi)
c020f3a0:	fc                   	cld    
c020f3a1:	ff                   	(bad)  
c020f3a2:	ff                   	(bad)  
c020f3a3:	ff 00                	incl   (%eax)
c020f3a5:	00 00                	add    %al,(%eax)
c020f3a7:	00 c0                	add    %al,%al
c020f3a9:	00 00                	add    %al,(%eax)
c020f3ab:	00 00                	add    %al,(%eax)
c020f3ad:	00 00                	add    %al,(%eax)
c020f3af:	00 af 19 00 00 80    	add    %ch,-0x7fffffe7(%edi)
c020f3b5:	00 59 00             	add    %bl,0x0(%ecx)
c020f3b8:	f8                   	clc    
c020f3b9:	ff                   	(bad)  
c020f3ba:	ff                   	(bad)  
c020f3bb:	ff                   	(bad)  
c020f3bc:	bf 19 00 00 80       	mov    $0x80000019,%edi
c020f3c1:	00 5a 00             	add    %bl,0x0(%edx)
c020f3c4:	ec                   	in     (%dx),%al
c020f3c5:	ff                   	(bad)  
c020f3c6:	ff                   	(bad)  
c020f3c7:	ff 00                	incl   (%eax)
c020f3c9:	00 00                	add    %al,(%eax)
c020f3cb:	00 c0                	add    %al,%al
c020f3cd:	00 00                	add    %al,(%eax)
c020f3cf:	00 51 00             	add    %dl,0x0(%ecx)
c020f3d2:	00 00                	add    %al,(%eax)
c020f3d4:	00 00                	add    %al,(%eax)
c020f3d6:	00 00                	add    %al,(%eax)
c020f3d8:	e0 00                	loopne c020f3da <interrupt_handlers+0x3b7a>
c020f3da:	00 00                	add    %al,(%eax)
c020f3dc:	ab                   	stos   %eax,%es:(%edi)
c020f3dd:	00 00                	add    %al,(%eax)
c020f3df:	00 00                	add    %al,(%eax)
c020f3e1:	00 00                	add    %al,(%eax)
c020f3e3:	00 e0                	add    %ah,%al
c020f3e5:	00 00                	add    %al,(%eax)
c020f3e7:	00 b9 00 00 00 00    	add    %bh,0x0(%ecx)
c020f3ed:	00 00                	add    %al,(%eax)
c020f3ef:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f3f2:	00 00                	add    %al,(%eax)
c020f3f4:	b9 00 00 00 00       	mov    $0x0,%ecx
c020f3f9:	00 00                	add    %al,(%eax)
c020f3fb:	00 4e 00             	add    %cl,0x0(%esi)
c020f3fe:	00 00                	add    %al,(%eax)
c020f400:	50                   	push   %eax
c020f401:	34 10                	xor    $0x10,%al
c020f403:	c0 cc 19             	ror    $0x19,%ah
c020f406:	00 00                	add    %al,(%eax)
c020f408:	28 00                	sub    %al,(%eax)
c020f40a:	33 00                	xor    (%eax),%eax
c020f40c:	00 60 18             	add    %ah,0x18(%eax)
c020f40f:	c0 0e 1a             	rorb   $0x1a,(%esi)
c020f412:	00 00                	add    %al,(%eax)
c020f414:	28 00                	sub    %al,(%eax)
c020f416:	36 00 00             	add    %al,%ss:(%eax)
c020f419:	60                   	pusha  
c020f41a:	20 c0                	and    %al,%al
c020f41c:	23 1a                	and    (%edx),%ebx
c020f41e:	00 00                	add    %al,(%eax)
c020f420:	20 00                	and    %al,(%eax)
c020f422:	39 00                	cmp    %eax,(%eax)
	...
c020f42c:	64 00 00             	add    %al,%fs:(%eax)
c020f42f:	00 50 34             	add    %dl,0x34(%eax)
c020f432:	10 c0                	adc    %al,%al
c020f434:	19 00                	sbb    %eax,(%eax)
c020f436:	00 00                	add    %al,(%eax)
c020f438:	64 00 02             	add    %al,%fs:(%edx)
c020f43b:	00 50 34             	add    %dl,0x34(%eax)
c020f43e:	10 c0                	adc    %al,%al
c020f440:	39 1a                	cmp    %ebx,(%edx)
c020f442:	00 00                	add    %al,(%eax)
c020f444:	64 00 02             	add    %al,%fs:(%edx)
c020f447:	00 50 34             	add    %dl,0x34(%eax)
c020f44a:	10 c0                	adc    %al,%al
c020f44c:	4e                   	dec    %esi
c020f44d:	00 00                	add    %al,(%eax)
c020f44f:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020f452:	00 00                	add    %al,(%eax)
c020f454:	00 00                	add    %al,(%eax)
c020f456:	00 00                	add    %al,(%eax)
c020f458:	5d                   	pop    %ebp
c020f459:	00 00                	add    %al,(%eax)
c020f45b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f461:	00 00                	add    %al,(%eax)
c020f463:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020f469:	00 00                	add    %al,(%eax)
c020f46b:	00 00                	add    %al,(%eax)
c020f46d:	00 00                	add    %al,(%eax)
c020f46f:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020f475:	00 00                	add    %al,(%eax)
c020f477:	00 00                	add    %al,(%eax)
c020f479:	00 00                	add    %al,(%eax)
c020f47b:	00 d0                	add    %dl,%al
c020f47d:	00 00                	add    %al,(%eax)
c020f47f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f485:	00 00                	add    %al,(%eax)
c020f487:	00 fb                	add    %bh,%bl
c020f489:	00 00                	add    %al,(%eax)
c020f48b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f491:	00 00                	add    %al,(%eax)
c020f493:	00 2b                	add    %ch,(%ebx)
c020f495:	01 00                	add    %eax,(%eax)
c020f497:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f49d:	00 00                	add    %al,(%eax)
c020f49f:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020f4a3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f4a9:	00 00                	add    %al,(%eax)
c020f4ab:	00 c1                	add    %al,%cl
c020f4ad:	01 00                	add    %eax,(%eax)
c020f4af:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f4b5:	00 00                	add    %al,(%eax)
c020f4b7:	00 ec                	add    %ch,%ah
c020f4b9:	01 00                	add    %eax,(%eax)
c020f4bb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f4c1:	00 00                	add    %al,(%eax)
c020f4c3:	00 1b                	add    %bl,(%ebx)
c020f4c5:	02 00                	add    (%eax),%al
c020f4c7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f4cd:	00 00                	add    %al,(%eax)
c020f4cf:	00 45 02             	add    %al,0x2(%ebp)
c020f4d2:	00 00                	add    %al,(%eax)
c020f4d4:	80 00 00             	addb   $0x0,(%eax)
c020f4d7:	00 00                	add    %al,(%eax)
c020f4d9:	00 00                	add    %al,(%eax)
c020f4db:	00 6e 02             	add    %ch,0x2(%esi)
c020f4de:	00 00                	add    %al,(%eax)
c020f4e0:	80 00 00             	addb   $0x0,(%eax)
c020f4e3:	00 00                	add    %al,(%eax)
c020f4e5:	00 00                	add    %al,(%eax)
c020f4e7:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020f4ed:	00 00                	add    %al,(%eax)
c020f4ef:	00 00                	add    %al,(%eax)
c020f4f1:	00 00                	add    %al,(%eax)
c020f4f3:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020f4f9:	00 00                	add    %al,(%eax)
c020f4fb:	00 00                	add    %al,(%eax)
c020f4fd:	00 00                	add    %al,(%eax)
c020f4ff:	00 c4                	add    %al,%ah
c020f501:	02 00                	add    (%eax),%al
c020f503:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f509:	00 00                	add    %al,(%eax)
c020f50b:	00 e3                	add    %ah,%bl
c020f50d:	02 00                	add    (%eax),%al
c020f50f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f515:	00 00                	add    %al,(%eax)
c020f517:	00 02                	add    %al,(%edx)
c020f519:	03 00                	add    (%eax),%eax
c020f51b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f521:	00 00                	add    %al,(%eax)
c020f523:	00 23                	add    %ah,(%ebx)
c020f525:	03 00                	add    (%eax),%eax
c020f527:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f52d:	00 00                	add    %al,(%eax)
c020f52f:	00 47 03             	add    %al,0x3(%edi)
c020f532:	00 00                	add    %al,(%eax)
c020f534:	c2 00 00             	ret    $0x0
c020f537:	00 26                	add    %ah,(%esi)
c020f539:	19 00                	sbb    %eax,(%eax)
c020f53b:	00 37                	add    %dh,(%edi)
c020f53d:	03 00                	add    (%eax),%eax
c020f53f:	00 c2                	add    %al,%dl
c020f541:	00 00                	add    %al,(%eax)
c020f543:	00 00                	add    %al,(%eax)
c020f545:	00 00                	add    %al,(%eax)
c020f547:	00 cb                	add    %cl,%bl
c020f549:	03 00                	add    (%eax),%eax
c020f54b:	00 c2                	add    %al,%dl
c020f54d:	00 00                	add    %al,(%eax)
c020f54f:	00 f5                	add    %dh,%ch
c020f551:	5f                   	pop    %edi
c020f552:	00 00                	add    %al,(%eax)
c020f554:	49                   	dec    %ecx
c020f555:	1a 00                	sbb    (%eax),%al
c020f557:	00 82 00 00 00 00    	add    %al,0x0(%edx)
c020f55d:	00 00                	add    %al,(%eax)
c020f55f:	00 88 06 00 00 c2    	add    %cl,-0x3dfffffa(%eax)
c020f565:	00 00                	add    %al,(%eax)
c020f567:	00 89 91 00 00 00    	add    %cl,0x91(%ecx)
c020f56d:	00 00                	add    %al,(%eax)
c020f56f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020f575:	00 00                	add    %al,(%eax)
c020f577:	00 59 1a             	add    %bl,0x1a(%ecx)
c020f57a:	00 00                	add    %al,(%eax)
c020f57c:	24 00                	and    $0x0,%al
c020f57e:	1d 00 50 34 10       	sbb    $0x10345000,%eax
c020f583:	c0                   	(bad)  
c020f584:	70 1a                	jo     c020f5a0 <interrupt_handlers+0x3d40>
c020f586:	00 00                	add    %al,(%eax)
c020f588:	a0 00 1d 00 08       	mov    0x8001d00,%al
c020f58d:	00 00                	add    %al,(%eax)
c020f58f:	00 00                	add    %al,(%eax)
c020f591:	00 00                	add    %al,(%eax)
c020f593:	00 2e                	add    %ch,(%esi)
c020f595:	00 00                	add    %al,(%eax)
c020f597:	00 50 34             	add    %dl,0x34(%eax)
c020f59a:	10 c0                	adc    %al,%al
c020f59c:	00 00                	add    %al,(%eax)
c020f59e:	00 00                	add    %al,(%eax)
c020f5a0:	44                   	inc    %esp
c020f5a1:	00 1e                	add    %bl,(%esi)
	...
c020f5ab:	00 44 00 20          	add    %al,0x20(%eax,%eax,1)
c020f5af:	00 06                	add    %al,(%esi)
c020f5b1:	00 00                	add    %al,(%eax)
c020f5b3:	00 00                	add    %al,(%eax)
c020f5b5:	00 00                	add    %al,(%eax)
c020f5b7:	00 44 00 21          	add    %al,0x21(%eax,%eax,1)
c020f5bb:	00 25 00 00 00 84    	add    %ah,0x84000000
c020f5c1:	1a 00                	sbb    (%eax),%al
c020f5c3:	00 26                	add    %ah,(%esi)
c020f5c5:	00 1f                	add    %bl,(%edi)
c020f5c7:	00 04 60             	add    %al,(%eax,%eiz,2)
c020f5ca:	20 c0                	and    %al,%al
c020f5cc:	00 00                	add    %al,(%eax)
c020f5ce:	00 00                	add    %al,(%eax)
c020f5d0:	c0 00 00             	rolb   $0x0,(%eax)
	...
c020f5db:	00 e0                	add    %ah,%al
c020f5dd:	00 00                	add    %al,(%eax)
c020f5df:	00 27                	add    %ah,(%edi)
c020f5e1:	00 00                	add    %al,(%eax)
c020f5e3:	00 00                	add    %al,(%eax)
c020f5e5:	00 00                	add    %al,(%eax)
c020f5e7:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f5ea:	00 00                	add    %al,(%eax)
c020f5ec:	27                   	daa    
c020f5ed:	00 00                	add    %al,(%eax)
c020f5ef:	00 00                	add    %al,(%eax)
c020f5f1:	00 00                	add    %al,(%eax)
c020f5f3:	00 4e 00             	add    %cl,0x0(%esi)
c020f5f6:	00 00                	add    %al,(%eax)
c020f5f8:	77 34                	ja     c020f62e <interrupt_handlers+0x3dce>
c020f5fa:	10 c0                	adc    %al,%al
c020f5fc:	90                   	nop
c020f5fd:	1a 00                	sbb    (%eax),%al
c020f5ff:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f602:	23 00                	and    (%eax),%eax
c020f604:	77 34                	ja     c020f63a <interrupt_handlers+0x3dda>
c020f606:	10 c0                	adc    %al,%al
c020f608:	a3 1a 00 00 a0       	mov    %eax,0xa000001a
c020f60d:	00 23                	add    %ah,(%ebx)
c020f60f:	00 08                	add    %cl,(%eax)
c020f611:	00 00                	add    %al,(%eax)
c020f613:	00 00                	add    %al,(%eax)
c020f615:	00 00                	add    %al,(%eax)
c020f617:	00 2e                	add    %ch,(%esi)
c020f619:	00 00                	add    %al,(%eax)
c020f61b:	00 77 34             	add    %dh,0x34(%edi)
c020f61e:	10 c0                	adc    %al,%al
c020f620:	00 00                	add    %al,(%eax)
c020f622:	00 00                	add    %al,(%eax)
c020f624:	44                   	inc    %esp
c020f625:	00 24 00             	add    %ah,(%eax,%eax,1)
	...
c020f630:	44                   	inc    %esp
c020f631:	00 26                	add    %ah,(%esi)
c020f633:	00 06                	add    %al,(%esi)
c020f635:	00 00                	add    %al,(%eax)
c020f637:	00 00                	add    %al,(%eax)
c020f639:	00 00                	add    %al,(%eax)
c020f63b:	00 44 00 28          	add    %al,0x28(%eax,%eax,1)
c020f63f:	00 1a                	add    %bl,(%edx)
c020f641:	00 00                	add    %al,(%eax)
c020f643:	00 00                	add    %al,(%eax)
c020f645:	00 00                	add    %al,(%eax)
c020f647:	00 44 00 2a          	add    %al,0x2a(%eax,%eax,1)
c020f64b:	00 2a                	add    %ch,(%edx)
c020f64d:	00 00                	add    %al,(%eax)
c020f64f:	00 00                	add    %al,(%eax)
c020f651:	00 00                	add    %al,(%eax)
c020f653:	00 44 00 2c          	add    %al,0x2c(%eax,%eax,1)
c020f657:	00 3e                	add    %bh,(%esi)
c020f659:	00 00                	add    %al,(%eax)
c020f65b:	00 00                	add    %al,(%eax)
c020f65d:	00 00                	add    %al,(%eax)
c020f65f:	00 44 00 2d          	add    %al,0x2d(%eax,%eax,1)
c020f663:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c020f667:	00 00                	add    %al,(%eax)
c020f669:	00 00                	add    %al,(%eax)
c020f66b:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
c020f66f:	00 4d 00             	add    %cl,0x0(%ebp)
c020f672:	00 00                	add    %al,(%eax)
c020f674:	00 00                	add    %al,(%eax)
c020f676:	00 00                	add    %al,(%eax)
c020f678:	44                   	inc    %esp
c020f679:	00 30                	add    %dh,(%eax)
c020f67b:	00 61 00             	add    %ah,0x0(%ecx)
c020f67e:	00 00                	add    %al,(%eax)
c020f680:	00 00                	add    %al,(%eax)
c020f682:	00 00                	add    %al,(%eax)
c020f684:	44                   	inc    %esp
c020f685:	00 31                	add    %dh,(%ecx)
c020f687:	00 75 00             	add    %dh,0x0(%ebp)
c020f68a:	00 00                	add    %al,(%eax)
c020f68c:	b4 1a                	mov    $0x1a,%ah
c020f68e:	00 00                	add    %al,(%eax)
c020f690:	80 00 28             	addb   $0x28,(%eax)
c020f693:	00 f4                	add    %dh,%ah
c020f695:	ff                   	(bad)  
c020f696:	ff                   	(bad)  
c020f697:	ff c2                	inc    %edx
c020f699:	1a 00                	sbb    (%eax),%al
c020f69b:	00 80 00 2c 00 f3    	add    %al,-0xcffd400(%eax)
c020f6a1:	ff                   	(bad)  
c020f6a2:	ff                   	(bad)  
c020f6a3:	ff cc                	dec    %esp
c020f6a5:	1a 00                	sbb    (%eax),%al
c020f6a7:	00 80 00 2d 00 f2    	add    %al,-0xdffd300(%eax)
c020f6ad:	ff                   	(bad)  
c020f6ae:	ff                   	(bad)  
c020f6af:	ff 00                	incl   (%eax)
c020f6b1:	00 00                	add    %al,(%eax)
c020f6b3:	00 c0                	add    %al,%al
	...
c020f6bd:	00 00                	add    %al,(%eax)
c020f6bf:	00 e0                	add    %ah,%al
c020f6c1:	00 00                	add    %al,(%eax)
c020f6c3:	00 77 00             	add    %dh,0x0(%edi)
c020f6c6:	00 00                	add    %al,(%eax)
c020f6c8:	00 00                	add    %al,(%eax)
c020f6ca:	00 00                	add    %al,(%eax)
c020f6cc:	24 00                	and    $0x0,%al
c020f6ce:	00 00                	add    %al,(%eax)
c020f6d0:	77 00                	ja     c020f6d2 <interrupt_handlers+0x3e72>
c020f6d2:	00 00                	add    %al,(%eax)
c020f6d4:	00 00                	add    %al,(%eax)
c020f6d6:	00 00                	add    %al,(%eax)
c020f6d8:	4e                   	dec    %esi
c020f6d9:	00 00                	add    %al,(%eax)
c020f6db:	00 ee                	add    %ch,%dh
c020f6dd:	34 10                	xor    $0x10,%al
c020f6df:	c0 00 00             	rolb   $0x0,(%eax)
c020f6e2:	00 00                	add    %al,(%eax)
c020f6e4:	64 00 00             	add    %al,%fs:(%eax)
c020f6e7:	00 ee                	add    %ch,%dh
c020f6e9:	34 10                	xor    $0x10,%al
c020f6eb:	c0 19 00             	rcrb   $0x0,(%ecx)
c020f6ee:	00 00                	add    %al,(%eax)
c020f6f0:	64 00 02             	add    %al,%fs:(%edx)
c020f6f3:	00 f0                	add    %dh,%al
c020f6f5:	34 10                	xor    $0x10,%al
c020f6f7:	c0 d7 1a             	rcl    $0x1a,%bh
c020f6fa:	00 00                	add    %al,(%eax)
c020f6fc:	64 00 02             	add    %al,%fs:(%edx)
c020f6ff:	00 f0                	add    %dh,%al
c020f701:	34 10                	xor    $0x10,%al
c020f703:	c0 4e 00 00          	rorb   $0x0,0x0(%esi)
c020f707:	00 3c 00             	add    %bh,(%eax,%eax,1)
c020f70a:	00 00                	add    %al,(%eax)
c020f70c:	00 00                	add    %al,(%eax)
c020f70e:	00 00                	add    %al,(%eax)
c020f710:	5d                   	pop    %ebp
c020f711:	00 00                	add    %al,(%eax)
c020f713:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f719:	00 00                	add    %al,(%eax)
c020f71b:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020f721:	00 00                	add    %al,(%eax)
c020f723:	00 00                	add    %al,(%eax)
c020f725:	00 00                	add    %al,(%eax)
c020f727:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020f72d:	00 00                	add    %al,(%eax)
c020f72f:	00 00                	add    %al,(%eax)
c020f731:	00 00                	add    %al,(%eax)
c020f733:	00 d0                	add    %dl,%al
c020f735:	00 00                	add    %al,(%eax)
c020f737:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f73d:	00 00                	add    %al,(%eax)
c020f73f:	00 fb                	add    %bh,%bl
c020f741:	00 00                	add    %al,(%eax)
c020f743:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f749:	00 00                	add    %al,(%eax)
c020f74b:	00 2b                	add    %ch,(%ebx)
c020f74d:	01 00                	add    %eax,(%eax)
c020f74f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f755:	00 00                	add    %al,(%eax)
c020f757:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020f75b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f761:	00 00                	add    %al,(%eax)
c020f763:	00 c1                	add    %al,%cl
c020f765:	01 00                	add    %eax,(%eax)
c020f767:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f76d:	00 00                	add    %al,(%eax)
c020f76f:	00 ec                	add    %ch,%ah
c020f771:	01 00                	add    %eax,(%eax)
c020f773:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f779:	00 00                	add    %al,(%eax)
c020f77b:	00 1b                	add    %bl,(%ebx)
c020f77d:	02 00                	add    (%eax),%al
c020f77f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f785:	00 00                	add    %al,(%eax)
c020f787:	00 45 02             	add    %al,0x2(%ebp)
c020f78a:	00 00                	add    %al,(%eax)
c020f78c:	80 00 00             	addb   $0x0,(%eax)
c020f78f:	00 00                	add    %al,(%eax)
c020f791:	00 00                	add    %al,(%eax)
c020f793:	00 6e 02             	add    %ch,0x2(%esi)
c020f796:	00 00                	add    %al,(%eax)
c020f798:	80 00 00             	addb   $0x0,(%eax)
c020f79b:	00 00                	add    %al,(%eax)
c020f79d:	00 00                	add    %al,(%eax)
c020f79f:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020f7a5:	00 00                	add    %al,(%eax)
c020f7a7:	00 00                	add    %al,(%eax)
c020f7a9:	00 00                	add    %al,(%eax)
c020f7ab:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020f7b1:	00 00                	add    %al,(%eax)
c020f7b3:	00 00                	add    %al,(%eax)
c020f7b5:	00 00                	add    %al,(%eax)
c020f7b7:	00 c4                	add    %al,%ah
c020f7b9:	02 00                	add    (%eax),%al
c020f7bb:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f7c1:	00 00                	add    %al,(%eax)
c020f7c3:	00 e3                	add    %ah,%bl
c020f7c5:	02 00                	add    (%eax),%al
c020f7c7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f7cd:	00 00                	add    %al,(%eax)
c020f7cf:	00 02                	add    %al,(%edx)
c020f7d1:	03 00                	add    (%eax),%eax
c020f7d3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f7d9:	00 00                	add    %al,(%eax)
c020f7db:	00 23                	add    %ah,(%ebx)
c020f7dd:	03 00                	add    (%eax),%eax
c020f7df:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020f7e5:	00 00                	add    %al,(%eax)
c020f7e7:	00 cb                	add    %cl,%bl
c020f7e9:	03 00                	add    (%eax),%eax
c020f7eb:	00 c2                	add    %al,%dl
c020f7ed:	00 00                	add    %al,(%eax)
c020f7ef:	00 f5                	add    %dh,%ch
c020f7f1:	5f                   	pop    %edi
c020f7f2:	00 00                	add    %al,(%eax)
c020f7f4:	47                   	inc    %edi
c020f7f5:	03 00                	add    (%eax),%eax
c020f7f7:	00 c2                	add    %al,%dl
c020f7f9:	00 00                	add    %al,(%eax)
c020f7fb:	00 26                	add    %ah,(%esi)
c020f7fd:	19 00                	sbb    %eax,(%eax)
c020f7ff:	00 9c 0c 00 00 c2 00 	add    %bl,0xc20000(%esp,%ecx,1)
c020f806:	00 00                	add    %al,(%eax)
c020f808:	00 00                	add    %al,(%eax)
c020f80a:	00 00                	add    %al,(%eax)
c020f80c:	ac                   	lods   %ds:(%esi),%al
c020f80d:	0c 00                	or     $0x0,%al
c020f80f:	00 c2                	add    %al,%dl
c020f811:	00 00                	add    %al,(%eax)
c020f813:	00 4b ea             	add    %cl,-0x16(%ebx)
c020f816:	00 00                	add    %al,(%eax)
c020f818:	ba 0c 00 00 c2       	mov    $0xc200000c,%edx
c020f81d:	00 00                	add    %al,(%eax)
c020f81f:	00 b6 d4 00 00 88    	add    %dh,-0x77ffff2c(%esi)
c020f825:	06                   	push   %es
c020f826:	00 00                	add    %al,(%eax)
c020f828:	c2 00 00             	ret    $0x0
c020f82b:	00 89 91 00 00 e6    	add    %cl,-0x19ffff6f(%ecx)
c020f831:	14 00                	adc    $0x0,%al
c020f833:	00 c2                	add    %al,%dl
c020f835:	00 00                	add    %al,(%eax)
c020f837:	00 c8                	add    %cl,%al
c020f839:	42                   	inc    %edx
c020f83a:	00 00                	add    %al,(%eax)
c020f83c:	7a 06                	jp     c020f844 <interrupt_handlers+0x3fe4>
c020f83e:	00 00                	add    %al,(%eax)
c020f840:	c2 00 00             	ret    $0x0
c020f843:	00 b9 08 00 00 e4    	add    %bh,-0x1bfffff8(%ecx)
c020f849:	1a 00                	sbb    (%eax),%al
c020f84b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f84e:	2e 00 25 00 10 00 00 	add    %ah,%cs:0x1000
c020f855:	00 00                	add    %al,(%eax)
c020f857:	00 2e                	add    %ch,(%esi)
c020f859:	00 00                	add    %al,(%eax)
c020f85b:	00 25 00 10 00 00    	add    %ah,0x1000
c020f861:	00 00                	add    %al,(%eax)
c020f863:	00 44 00 2f          	add    %al,0x2f(%eax,%eax,1)
	...
c020f86f:	00 44 00 30          	add    %al,0x30(%eax,%eax,1)
c020f873:	00 07                	add    %al,(%edi)
c020f875:	00 00                	add    %al,(%eax)
c020f877:	00 00                	add    %al,(%eax)
c020f879:	00 00                	add    %al,(%eax)
c020f87b:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020f87f:	00 17                	add    %dl,(%edi)
c020f881:	00 00                	add    %al,(%eax)
c020f883:	00 00                	add    %al,(%eax)
c020f885:	00 00                	add    %al,(%eax)
c020f887:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c020f88b:	00 2c 00             	add    %ch,(%eax,%eax,1)
c020f88e:	00 00                	add    %al,(%eax)
c020f890:	00 00                	add    %al,(%eax)
c020f892:	00 00                	add    %al,(%eax)
c020f894:	44                   	inc    %esp
c020f895:	00 36                	add    %dh,(%esi)
c020f897:	00 35 00 00 00 00    	add    %dh,0x0
c020f89d:	00 00                	add    %al,(%eax)
c020f89f:	00 44 00 35          	add    %al,0x35(%eax,%eax,1)
c020f8a3:	00 4d 00             	add    %cl,0x0(%ebp)
c020f8a6:	00 00                	add    %al,(%eax)
c020f8a8:	00 00                	add    %al,(%eax)
c020f8aa:	00 00                	add    %al,(%eax)
c020f8ac:	44                   	inc    %esp
c020f8ad:	00 35 00 51 00 00    	add    %dh,0x5100
c020f8b3:	00 00                	add    %al,(%eax)
c020f8b5:	00 00                	add    %al,(%eax)
c020f8b7:	00 44 00 3a          	add    %al,0x3a(%eax,%eax,1)
c020f8bb:	00 5a 00             	add    %bl,0x0(%edx)
c020f8be:	00 00                	add    %al,(%eax)
c020f8c0:	00 00                	add    %al,(%eax)
c020f8c2:	00 00                	add    %al,(%eax)
c020f8c4:	44                   	inc    %esp
c020f8c5:	00 3b                	add    %bh,(%ebx)
c020f8c7:	00 63 00             	add    %ah,0x0(%ebx)
c020f8ca:	00 00                	add    %al,(%eax)
c020f8cc:	00 00                	add    %al,(%eax)
c020f8ce:	00 00                	add    %al,(%eax)
c020f8d0:	44                   	inc    %esp
c020f8d1:	00 3a                	add    %bh,(%edx)
c020f8d3:	00 7b 00             	add    %bh,0x0(%ebx)
c020f8d6:	00 00                	add    %al,(%eax)
c020f8d8:	00 00                	add    %al,(%eax)
c020f8da:	00 00                	add    %al,(%eax)
c020f8dc:	44                   	inc    %esp
c020f8dd:	00 3a                	add    %bh,(%edx)
c020f8df:	00 7f 00             	add    %bh,0x0(%edi)
c020f8e2:	00 00                	add    %al,(%eax)
c020f8e4:	00 00                	add    %al,(%eax)
c020f8e6:	00 00                	add    %al,(%eax)
c020f8e8:	44                   	inc    %esp
c020f8e9:	00 3f                	add    %bh,(%edi)
c020f8eb:	00 88 00 00 00 00    	add    %cl,0x0(%eax)
c020f8f1:	00 00                	add    %al,(%eax)
c020f8f3:	00 44 00 44          	add    %al,0x44(%eax,%eax,1)
c020f8f7:	00 90 00 00 00 00    	add    %dl,0x0(%eax)
c020f8fd:	00 00                	add    %al,(%eax)
c020f8ff:	00 44 00 45          	add    %al,0x45(%eax,%eax,1)
c020f903:	00 96 00 00 00 00    	add    %dl,0x0(%esi)
c020f909:	00 00                	add    %al,(%eax)
c020f90b:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020f90f:	00 9d 00 00 00 00    	add    %bl,0x0(%ebp)
c020f915:	00 00                	add    %al,(%eax)
c020f917:	00 44 00 49          	add    %al,0x49(%eax,%eax,1)
c020f91b:	00 a3 00 00 00 00    	add    %ah,0x0(%ebx)
c020f921:	00 00                	add    %al,(%eax)
c020f923:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c020f927:	00 b3 00 00 00 00    	add    %dh,0x0(%ebx)
c020f92d:	00 00                	add    %al,(%eax)
c020f92f:	00 44 00 4f          	add    %al,0x4f(%eax,%eax,1)
c020f933:	00 ba 00 00 00 00    	add    %bh,0x0(%edx)
c020f939:	00 00                	add    %al,(%eax)
c020f93b:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c020f93f:	00 c4                	add    %al,%ah
c020f941:	00 00                	add    %al,(%eax)
c020f943:	00 00                	add    %al,(%eax)
c020f945:	00 00                	add    %al,(%eax)
c020f947:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c020f94b:	00 c9                	add    %cl,%cl
c020f94d:	00 00                	add    %al,(%eax)
c020f94f:	00 9b 05 00 00 80    	add    %bl,-0x7ffffffb(%ebx)
c020f955:	00 34 00             	add    %dh,(%eax,%eax,1)
c020f958:	f4                   	hlt    
c020f959:	ff                   	(bad)  
c020f95a:	ff                   	(bad)  
c020f95b:	ff f2                	push   %edx
c020f95d:	1a 00                	sbb    (%eax),%al
c020f95f:	00 80 00 41 00 f0    	add    %al,-0xfffbf00(%eax)
c020f965:	ff                   	(bad)  
c020f966:	ff                   	(bad)  
c020f967:	ff                   	(bad)  
c020f968:	fc                   	cld    
c020f969:	1a 00                	sbb    (%eax),%al
c020f96b:	00 80 00 49 00 ec    	add    %al,-0x13ffb700(%eax)
c020f971:	ff                   	(bad)  
c020f972:	ff                   	(bad)  
c020f973:	ff 00                	incl   (%eax)
c020f975:	00 00                	add    %al,(%eax)
c020f977:	00 c0                	add    %al,%al
	...
c020f981:	00 00                	add    %al,(%eax)
c020f983:	00 e0                	add    %ah,%al
c020f985:	00 00                	add    %al,(%eax)
c020f987:	00 cf                	add    %cl,%bh
c020f989:	00 00                	add    %al,(%eax)
c020f98b:	00 00                	add    %al,(%eax)
c020f98d:	00 00                	add    %al,(%eax)
c020f98f:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f992:	00 00                	add    %al,(%eax)
c020f994:	cf                   	iret   
c020f995:	00 00                	add    %al,(%eax)
c020f997:	00 00                	add    %al,(%eax)
c020f999:	00 00                	add    %al,(%eax)
c020f99b:	00 4e 00             	add    %cl,0x0(%esi)
c020f99e:	00 00                	add    %al,(%eax)
c020f9a0:	f4                   	hlt    
c020f9a1:	00 10                	add    %dl,(%eax)
c020f9a3:	00 13                	add    %dl,(%ebx)
c020f9a5:	1b 00                	sbb    (%eax),%eax
c020f9a7:	00 24 00             	add    %ah,(%eax,%eax,1)
c020f9aa:	54                   	push   %esp
c020f9ab:	00 f0                	add    %dh,%al
c020f9ad:	34 10                	xor    $0x10,%al
c020f9af:	c0 00 00             	rolb   $0x0,(%eax)
c020f9b2:	00 00                	add    %al,(%eax)
c020f9b4:	2e 00 00             	add    %al,%cs:(%eax)
c020f9b7:	00 f0                	add    %dh,%al
c020f9b9:	34 10                	xor    $0x10,%al
c020f9bb:	c0 00 00             	rolb   $0x0,(%eax)
c020f9be:	00 00                	add    %al,(%eax)
c020f9c0:	44                   	inc    %esp
c020f9c1:	00 55 00             	add    %dl,0x0(%ebp)
	...
c020f9cc:	44                   	inc    %esp
c020f9cd:	00 56 00             	add    %dl,0x0(%esi)
c020f9d0:	06                   	push   %es
c020f9d1:	00 00                	add    %al,(%eax)
c020f9d3:	00 00                	add    %al,(%eax)
c020f9d5:	00 00                	add    %al,(%eax)
c020f9d7:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c020f9db:	00 0b                	add    %cl,(%ebx)
c020f9dd:	00 00                	add    %al,(%eax)
c020f9df:	00 00                	add    %al,(%eax)
c020f9e1:	00 00                	add    %al,(%eax)
c020f9e3:	00 44 00 58          	add    %al,0x58(%eax,%eax,1)
c020f9e7:	00 10                	add    %dl,(%eax)
c020f9e9:	00 00                	add    %al,(%eax)
c020f9eb:	00 00                	add    %al,(%eax)
c020f9ed:	00 00                	add    %al,(%eax)
c020f9ef:	00 44 00 5a          	add    %al,0x5a(%eax,%eax,1)
c020f9f3:	00 15 00 00 00 00    	add    %dl,0x0
c020f9f9:	00 00                	add    %al,(%eax)
c020f9fb:	00 44 00 5c          	add    %al,0x5c(%eax,%eax,1)
c020f9ff:	00 1c 00             	add    %bl,(%eax,%eax,1)
c020fa02:	00 00                	add    %al,(%eax)
c020fa04:	00 00                	add    %al,(%eax)
c020fa06:	00 00                	add    %al,(%eax)
c020fa08:	44                   	inc    %esp
c020fa09:	00 5d 00             	add    %bl,0x0(%ebp)
c020fa0c:	21 00                	and    %eax,(%eax)
c020fa0e:	00 00                	add    %al,(%eax)
c020fa10:	00 00                	add    %al,(%eax)
c020fa12:	00 00                	add    %al,(%eax)
c020fa14:	44                   	inc    %esp
c020fa15:	00 5f 00             	add    %bl,0x0(%edi)
c020fa18:	34 00                	xor    $0x0,%al
c020fa1a:	00 00                	add    %al,(%eax)
c020fa1c:	00 00                	add    %al,(%eax)
c020fa1e:	00 00                	add    %al,(%eax)
c020fa20:	44                   	inc    %esp
c020fa21:	00 60 00             	add    %ah,0x0(%eax)
c020fa24:	48                   	dec    %eax
c020fa25:	00 00                	add    %al,(%eax)
c020fa27:	00 00                	add    %al,(%eax)
c020fa29:	00 00                	add    %al,(%eax)
c020fa2b:	00 44 00 61          	add    %al,0x61(%eax,%eax,1)
c020fa2f:	00 5c 00 00          	add    %bl,0x0(%eax,%eax,1)
c020fa33:	00 00                	add    %al,(%eax)
c020fa35:	00 00                	add    %al,(%eax)
c020fa37:	00 44 00 63          	add    %al,0x63(%eax,%eax,1)
c020fa3b:	00 90 00 00 00 00    	add    %dl,0x0(%eax)
c020fa41:	00 00                	add    %al,(%eax)
c020fa43:	00 44 00 64          	add    %al,0x64(%eax,%eax,1)
c020fa47:	00 95 00 00 00 00    	add    %dl,0x0(%ebp)
c020fa4d:	00 00                	add    %al,(%eax)
c020fa4f:	00 44 00 67          	add    %al,0x67(%eax,%eax,1)
c020fa53:	00 9a 00 00 00 00    	add    %bl,0x0(%edx)
c020fa59:	00 00                	add    %al,(%eax)
c020fa5b:	00 44 00 68          	add    %al,0x68(%eax,%eax,1)
c020fa5f:	00 a2 00 00 00 00    	add    %ah,0x0(%edx)
c020fa65:	00 00                	add    %al,(%eax)
c020fa67:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c020fa6b:	00 b5 00 00 00 00    	add    %dh,0x0(%ebp)
c020fa71:	00 00                	add    %al,(%eax)
c020fa73:	00 44 00 6b          	add    %al,0x6b(%eax,%eax,1)
c020fa77:	00 bd 00 00 00 00    	add    %bh,0x0(%ebp)
c020fa7d:	00 00                	add    %al,(%eax)
c020fa7f:	00 44 00 6e          	add    %al,0x6e(%eax,%eax,1)
c020fa83:	00 d0                	add    %dl,%al
c020fa85:	00 00                	add    %al,(%eax)
c020fa87:	00 00                	add    %al,(%eax)
c020fa89:	00 00                	add    %al,(%eax)
c020fa8b:	00 44 00 6f          	add    %al,0x6f(%eax,%eax,1)
c020fa8f:	00 d8                	add    %bl,%al
c020fa91:	00 00                	add    %al,(%eax)
c020fa93:	00 00                	add    %al,(%eax)
c020fa95:	00 00                	add    %al,(%eax)
c020fa97:	00 44 00 73          	add    %al,0x73(%eax,%eax,1)
c020fa9b:	00 eb                	add    %ch,%bl
c020fa9d:	00 00                	add    %al,(%eax)
c020fa9f:	00 00                	add    %al,(%eax)
c020faa1:	00 00                	add    %al,(%eax)
c020faa3:	00 44 00 74          	add    %al,0x74(%eax,%eax,1)
c020faa7:	00 ec                	add    %ch,%ah
c020faa9:	00 00                	add    %al,(%eax)
c020faab:	00 27                	add    %ah,(%edi)
c020faad:	1b 00                	sbb    (%eax),%eax
c020faaf:	00 80 00 5a 00 f4    	add    %al,-0xbffa600(%eax)
c020fab5:	ff                   	(bad)  
c020fab6:	ff                   	(bad)  
c020fab7:	ff                   	(bad)  
c020fab8:	3c 1b                	cmp    $0x1b,%al
c020faba:	00 00                	add    %al,(%eax)
c020fabc:	80 00 67             	addb   $0x67,(%eax)
c020fabf:	00 f0                	add    %dh,%al
c020fac1:	ff                   	(bad)  
c020fac2:	ff                   	(bad)  
c020fac3:	ff 00                	incl   (%eax)
c020fac5:	00 00                	add    %al,(%eax)
c020fac7:	00 c0                	add    %al,%al
	...
c020fad1:	00 00                	add    %al,(%eax)
c020fad3:	00 e0                	add    %ah,%al
c020fad5:	00 00                	add    %al,(%eax)
c020fad7:	00 ee                	add    %ch,%dh
c020fad9:	00 00                	add    %al,(%eax)
c020fadb:	00 00                	add    %al,(%eax)
c020fadd:	00 00                	add    %al,(%eax)
c020fadf:	00 24 00             	add    %ah,(%eax,%eax,1)
c020fae2:	00 00                	add    %al,(%eax)
c020fae4:	ee                   	out    %al,(%dx)
c020fae5:	00 00                	add    %al,(%eax)
c020fae7:	00 00                	add    %al,(%eax)
c020fae9:	00 00                	add    %al,(%eax)
c020faeb:	00 4e 00             	add    %cl,0x0(%esi)
c020faee:	00 00                	add    %al,(%eax)
c020faf0:	de 35 10 c0 48 1b    	fidiv  0x1b48c010
c020faf6:	00 00                	add    %al,(%eax)
c020faf8:	20 00                	and    %al,(%eax)
c020fafa:	22 00                	and    (%eax),%al
c020fafc:	00 00                	add    %al,(%eax)
c020fafe:	00 00                	add    %al,(%eax)
c020fb00:	65 1b 00             	sbb    %gs:(%eax),%eax
c020fb03:	00 20                	add    %ah,(%eax)
c020fb05:	00 25 00 00 00 00    	add    %ah,0x0
c020fb0b:	00 8f 1b 00 00 20    	add    %cl,0x2000001b(%edi)
c020fb11:	00 29                	add    %ch,(%ecx)
c020fb13:	00 00                	add    %al,(%eax)
c020fb15:	00 00                	add    %al,(%eax)
c020fb17:	00 a6 1b 00 00 20    	add    %ah,0x2000001b(%esi)
c020fb1d:	00 2a                	add    %ch,(%edx)
c020fb1f:	00 00                	add    %al,(%eax)
c020fb21:	00 00                	add    %al,(%eax)
c020fb23:	00 b6 1b 00 00 20    	add    %dh,0x2000001b(%esi)
c020fb29:	00 2b                	add    %ch,(%ebx)
	...
c020fb33:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
c020fb37:	00 de                	add    %bl,%dh
c020fb39:	35 10 c0 19 00       	xor    $0x19c010,%eax
c020fb3e:	00 00                	add    %al,(%eax)
c020fb40:	64 00 02             	add    %al,%fs:(%edx)
c020fb43:	00 e0                	add    %ah,%al
c020fb45:	35 10 c0 c7 1b       	xor    $0x1bc7c010,%eax
c020fb4a:	00 00                	add    %al,(%eax)
c020fb4c:	64 00 02             	add    %al,%fs:(%edx)
c020fb4f:	00 e0                	add    %ah,%al
c020fb51:	35 10 c0 4e 00       	xor    $0x4ec010,%eax
c020fb56:	00 00                	add    %al,(%eax)
c020fb58:	3c 00                	cmp    $0x0,%al
c020fb5a:	00 00                	add    %al,(%eax)
c020fb5c:	00 00                	add    %al,(%eax)
c020fb5e:	00 00                	add    %al,(%eax)
c020fb60:	5d                   	pop    %ebp
c020fb61:	00 00                	add    %al,(%eax)
c020fb63:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fb69:	00 00                	add    %al,(%eax)
c020fb6b:	00 87 00 00 00 80    	add    %al,-0x80000000(%edi)
c020fb71:	00 00                	add    %al,(%eax)
c020fb73:	00 00                	add    %al,(%eax)
c020fb75:	00 00                	add    %al,(%eax)
c020fb77:	00 a1 00 00 00 80    	add    %ah,-0x80000000(%ecx)
c020fb7d:	00 00                	add    %al,(%eax)
c020fb7f:	00 00                	add    %al,(%eax)
c020fb81:	00 00                	add    %al,(%eax)
c020fb83:	00 d0                	add    %dl,%al
c020fb85:	00 00                	add    %al,(%eax)
c020fb87:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fb8d:	00 00                	add    %al,(%eax)
c020fb8f:	00 fb                	add    %bh,%bl
c020fb91:	00 00                	add    %al,(%eax)
c020fb93:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fb99:	00 00                	add    %al,(%eax)
c020fb9b:	00 2b                	add    %ch,(%ebx)
c020fb9d:	01 00                	add    %eax,(%eax)
c020fb9f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fba5:	00 00                	add    %al,(%eax)
c020fba7:	00 7c 01 00          	add    %bh,0x0(%ecx,%eax,1)
c020fbab:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fbb1:	00 00                	add    %al,(%eax)
c020fbb3:	00 c1                	add    %al,%cl
c020fbb5:	01 00                	add    %eax,(%eax)
c020fbb7:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fbbd:	00 00                	add    %al,(%eax)
c020fbbf:	00 ec                	add    %ch,%ah
c020fbc1:	01 00                	add    %eax,(%eax)
c020fbc3:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fbc9:	00 00                	add    %al,(%eax)
c020fbcb:	00 1b                	add    %bl,(%ebx)
c020fbcd:	02 00                	add    (%eax),%al
c020fbcf:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fbd5:	00 00                	add    %al,(%eax)
c020fbd7:	00 45 02             	add    %al,0x2(%ebp)
c020fbda:	00 00                	add    %al,(%eax)
c020fbdc:	80 00 00             	addb   $0x0,(%eax)
c020fbdf:	00 00                	add    %al,(%eax)
c020fbe1:	00 00                	add    %al,(%eax)
c020fbe3:	00 6e 02             	add    %ch,0x2(%esi)
c020fbe6:	00 00                	add    %al,(%eax)
c020fbe8:	80 00 00             	addb   $0x0,(%eax)
c020fbeb:	00 00                	add    %al,(%eax)
c020fbed:	00 00                	add    %al,(%eax)
c020fbef:	00 88 02 00 00 80    	add    %cl,-0x7ffffffe(%eax)
c020fbf5:	00 00                	add    %al,(%eax)
c020fbf7:	00 00                	add    %al,(%eax)
c020fbf9:	00 00                	add    %al,(%eax)
c020fbfb:	00 a3 02 00 00 80    	add    %ah,-0x7ffffffe(%ebx)
c020fc01:	00 00                	add    %al,(%eax)
c020fc03:	00 00                	add    %al,(%eax)
c020fc05:	00 00                	add    %al,(%eax)
c020fc07:	00 c4                	add    %al,%ah
c020fc09:	02 00                	add    (%eax),%al
c020fc0b:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fc11:	00 00                	add    %al,(%eax)
c020fc13:	00 e3                	add    %ah,%bl
c020fc15:	02 00                	add    (%eax),%al
c020fc17:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fc1d:	00 00                	add    %al,(%eax)
c020fc1f:	00 02                	add    %al,(%edx)
c020fc21:	03 00                	add    (%eax),%eax
c020fc23:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fc29:	00 00                	add    %al,(%eax)
c020fc2b:	00 23                	add    %ah,(%ebx)
c020fc2d:	03 00                	add    (%eax),%eax
c020fc2f:	00 80 00 00 00 00    	add    %al,0x0(%eax)
c020fc35:	00 00                	add    %al,(%eax)
c020fc37:	00 47 03             	add    %al,0x3(%edi)
c020fc3a:	00 00                	add    %al,(%eax)
c020fc3c:	c2 00 00             	ret    $0x0
c020fc3f:	00 26                	add    %ah,(%esi)
c020fc41:	19 00                	sbb    %eax,(%eax)
c020fc43:	00 88 06 00 00 c2    	add    %cl,-0x3dfffffa(%eax)
c020fc49:	00 00                	add    %al,(%eax)
c020fc4b:	00 89 91 00 00 37    	add    %cl,0x37000091(%ecx)
c020fc51:	03 00                	add    (%eax),%eax
c020fc53:	00 c2                	add    %al,%dl
c020fc55:	00 00                	add    %al,(%eax)
c020fc57:	00 00                	add    %al,(%eax)
c020fc59:	00 00                	add    %al,(%eax)
c020fc5b:	00 cb                	add    %cl,%bl
c020fc5d:	03 00                	add    (%eax),%eax
c020fc5f:	00 c2                	add    %al,%dl
c020fc61:	00 00                	add    %al,(%eax)
c020fc63:	00 f5                	add    %dh,%ch
c020fc65:	5f                   	pop    %edi
c020fc66:	00 00                	add    %al,(%eax)
c020fc68:	d1 1b                	rcrl   (%ebx)
c020fc6a:	00 00                	add    %al,(%eax)
c020fc6c:	24 00                	and    $0x0,%al
c020fc6e:	2a 00                	sub    (%eax),%al
c020fc70:	e0 35                	loopne c020fca7 <interrupt_handlers+0x4447>
c020fc72:	10 c0                	adc    %al,%al
c020fc74:	00 00                	add    %al,(%eax)
c020fc76:	00 00                	add    %al,(%eax)
c020fc78:	2e 00 00             	add    %al,%cs:(%eax)
c020fc7b:	00 e0                	add    %ah,%al
c020fc7d:	35 10 c0 00 00       	xor    $0xc010,%eax
c020fc82:	00 00                	add    %al,(%eax)
c020fc84:	44                   	inc    %esp
c020fc85:	00 2b                	add    %ch,(%ebx)
	...
c020fc8f:	00 44 00 2d          	add    %al,0x2d(%eax,%eax,1)
c020fc93:	00 06                	add    %al,(%esi)
c020fc95:	00 00                	add    %al,(%eax)
c020fc97:	00 00                	add    %al,(%eax)
c020fc99:	00 00                	add    %al,(%eax)
c020fc9b:	00 44 00 2e          	add    %al,0x2e(%eax,%eax,1)
c020fc9f:	00 1a                	add    %bl,(%edx)
c020fca1:	00 00                	add    %al,(%eax)
c020fca3:	00 00                	add    %al,(%eax)
c020fca5:	00 00                	add    %al,(%eax)
c020fca7:	00 44 00 30          	add    %al,0x30(%eax,%eax,1)
c020fcab:	00 2e                	add    %ch,(%esi)
c020fcad:	00 00                	add    %al,(%eax)
c020fcaf:	00 00                	add    %al,(%eax)
c020fcb1:	00 00                	add    %al,(%eax)
c020fcb3:	00 44 00 31          	add    %al,0x31(%eax,%eax,1)
c020fcb7:	00 42 00             	add    %al,0x0(%edx)
c020fcba:	00 00                	add    %al,(%eax)
c020fcbc:	00 00                	add    %al,(%eax)
c020fcbe:	00 00                	add    %al,(%eax)
c020fcc0:	44                   	inc    %esp
c020fcc1:	00 32                	add    %dh,(%edx)
c020fcc3:	00 56 00             	add    %dl,0x0(%esi)
c020fcc6:	00 00                	add    %al,(%eax)
c020fcc8:	00 00                	add    %al,(%eax)
c020fcca:	00 00                	add    %al,(%eax)
c020fccc:	44                   	inc    %esp
c020fccd:	00 33                	add    %dh,(%ebx)
c020fccf:	00 6a 00             	add    %ch,0x0(%edx)
c020fcd2:	00 00                	add    %al,(%eax)
c020fcd4:	00 00                	add    %al,(%eax)
c020fcd6:	00 00                	add    %al,(%eax)
c020fcd8:	44                   	inc    %esp
c020fcd9:	00 34 00             	add    %dh,(%eax,%eax,1)
c020fcdc:	7e 00                	jle    c020fcde <interrupt_handlers+0x447e>
c020fcde:	00 00                	add    %al,(%eax)
c020fce0:	00 00                	add    %al,(%eax)
c020fce2:	00 00                	add    %al,(%eax)
c020fce4:	44                   	inc    %esp
c020fce5:	00 35 00 92 00 00    	add    %dh,0x9200
c020fceb:	00 00                	add    %al,(%eax)
c020fced:	00 00                	add    %al,(%eax)
c020fcef:	00 44 00 36          	add    %al,0x36(%eax,%eax,1)
c020fcf3:	00 a6 00 00 00 00    	add    %ah,0x0(%esi)
c020fcf9:	00 00                	add    %al,(%eax)
c020fcfb:	00 44 00 37          	add    %al,0x37(%eax,%eax,1)
c020fcff:	00 ba 00 00 00 00    	add    %bh,0x0(%edx)
c020fd05:	00 00                	add    %al,(%eax)
c020fd07:	00 44 00 39          	add    %al,0x39(%eax,%eax,1)
c020fd0b:	00 ce                	add    %cl,%dh
c020fd0d:	00 00                	add    %al,(%eax)
c020fd0f:	00 00                	add    %al,(%eax)
c020fd11:	00 00                	add    %al,(%eax)
c020fd13:	00 44 00 3a          	add    %al,0x3a(%eax,%eax,1)
c020fd17:	00 f3                	add    %dh,%bl
c020fd19:	00 00                	add    %al,(%eax)
c020fd1b:	00 00                	add    %al,(%eax)
c020fd1d:	00 00                	add    %al,(%eax)
c020fd1f:	00 44 00 3b          	add    %al,0x3b(%eax,%eax,1)
c020fd23:	00 18                	add    %bl,(%eax)
c020fd25:	01 00                	add    %eax,(%eax)
c020fd27:	00 00                	add    %al,(%eax)
c020fd29:	00 00                	add    %al,(%eax)
c020fd2b:	00 44 00 3c          	add    %al,0x3c(%eax,%eax,1)
c020fd2f:	00 3d 01 00 00 00    	add    %bh,0x1
c020fd35:	00 00                	add    %al,(%eax)
c020fd37:	00 44 00 3d          	add    %al,0x3d(%eax,%eax,1)
c020fd3b:	00 62 01             	add    %ah,0x1(%edx)
c020fd3e:	00 00                	add    %al,(%eax)
c020fd40:	00 00                	add    %al,(%eax)
c020fd42:	00 00                	add    %al,(%eax)
c020fd44:	44                   	inc    %esp
c020fd45:	00 3e                	add    %bh,(%esi)
c020fd47:	00 87 01 00 00 00    	add    %al,0x1(%edi)
c020fd4d:	00 00                	add    %al,(%eax)
c020fd4f:	00 44 00 3f          	add    %al,0x3f(%eax,%eax,1)
c020fd53:	00 ac 01 00 00 00 00 	add    %ch,0x0(%ecx,%eax,1)
c020fd5a:	00 00                	add    %al,(%eax)
c020fd5c:	44                   	inc    %esp
c020fd5d:	00 40 00             	add    %al,0x0(%eax)
c020fd60:	d1 01                	roll   (%ecx)
c020fd62:	00 00                	add    %al,(%eax)
c020fd64:	00 00                	add    %al,(%eax)
c020fd66:	00 00                	add    %al,(%eax)
c020fd68:	44                   	inc    %esp
c020fd69:	00 41 00             	add    %al,0x0(%ecx)
c020fd6c:	f6 01 00             	testb  $0x0,(%ecx)
c020fd6f:	00 00                	add    %al,(%eax)
c020fd71:	00 00                	add    %al,(%eax)
c020fd73:	00 44 00 42          	add    %al,0x42(%eax,%eax,1)
c020fd77:	00 1b                	add    %bl,(%ebx)
c020fd79:	02 00                	add    (%eax),%al
c020fd7b:	00 00                	add    %al,(%eax)
c020fd7d:	00 00                	add    %al,(%eax)
c020fd7f:	00 44 00 43          	add    %al,0x43(%eax,%eax,1)
c020fd83:	00 40 02             	add    %al,0x2(%eax)
c020fd86:	00 00                	add    %al,(%eax)
c020fd88:	00 00                	add    %al,(%eax)
c020fd8a:	00 00                	add    %al,(%eax)
c020fd8c:	44                   	inc    %esp
c020fd8d:	00 44 00 65          	add    %al,0x65(%eax,%eax,1)
c020fd91:	02 00                	add    (%eax),%al
c020fd93:	00 00                	add    %al,(%eax)
c020fd95:	00 00                	add    %al,(%eax)
c020fd97:	00 44 00 45          	add    %al,0x45(%eax,%eax,1)
c020fd9b:	00 8a 02 00 00 00    	add    %cl,0x2(%edx)
c020fda1:	00 00                	add    %al,(%eax)
c020fda3:	00 44 00 46          	add    %al,0x46(%eax,%eax,1)
c020fda7:	00 af 02 00 00 00    	add    %ch,0x2(%edi)
c020fdad:	00 00                	add    %al,(%eax)
c020fdaf:	00 44 00 47          	add    %al,0x47(%eax,%eax,1)
c020fdb3:	00 d4                	add    %dl,%ah
c020fdb5:	02 00                	add    (%eax),%al
c020fdb7:	00 00                	add    %al,(%eax)
c020fdb9:	00 00                	add    %al,(%eax)
c020fdbb:	00 44 00 48          	add    %al,0x48(%eax,%eax,1)
c020fdbf:	00 f9                	add    %bh,%cl
c020fdc1:	02 00                	add    (%eax),%al
c020fdc3:	00 00                	add    %al,(%eax)
c020fdc5:	00 00                	add    %al,(%eax)
c020fdc7:	00 44 00 4a          	add    %al,0x4a(%eax,%eax,1)
c020fdcb:	00 1e                	add    %bl,(%esi)
c020fdcd:	03 00                	add    (%eax),%eax
c020fdcf:	00 00                	add    %al,(%eax)
c020fdd1:	00 00                	add    %al,(%eax)
c020fdd3:	00 44 00 4b          	add    %al,0x4b(%eax,%eax,1)
c020fdd7:	00 32                	add    %dh,(%edx)
c020fdd9:	03 00                	add    (%eax),%eax
c020fddb:	00 00                	add    %al,(%eax)
c020fddd:	00 00                	add    %al,(%eax)
c020fddf:	00 44 00 4c          	add    %al,0x4c(%eax,%eax,1)
c020fde3:	00 3b                	add    %bh,(%ebx)
c020fde5:	03 00                	add    (%eax),%eax
c020fde7:	00 00                	add    %al,(%eax)
c020fde9:	00 00                	add    %al,(%eax)
c020fdeb:	00 44 00 4e          	add    %al,0x4e(%eax,%eax,1)
c020fdef:	00 45 03             	add    %al,0x3(%ebp)
c020fdf2:	00 00                	add    %al,(%eax)
c020fdf4:	00 00                	add    %al,(%eax)
c020fdf6:	00 00                	add    %al,(%eax)
c020fdf8:	44                   	inc    %esp
c020fdf9:	00 50 00             	add    %dl,0x0(%eax)
c020fdfc:	59                   	pop    %ecx
c020fdfd:	03 00                	add    (%eax),%eax
c020fdff:	00 00                	add    %al,(%eax)
c020fe01:	00 00                	add    %al,(%eax)
c020fe03:	00 44 00 51          	add    %al,0x51(%eax,%eax,1)
c020fe07:	00 7e 03             	add    %bh,0x3(%esi)
c020fe0a:	00 00                	add    %al,(%eax)
c020fe0c:	00 00                	add    %al,(%eax)
c020fe0e:	00 00                	add    %al,(%eax)
c020fe10:	44                   	inc    %esp
c020fe11:	00 52 00             	add    %dl,0x0(%edx)
c020fe14:	a3 03 00 00 00       	mov    %eax,0x3
c020fe19:	00 00                	add    %al,(%eax)
c020fe1b:	00 44 00 53          	add    %al,0x53(%eax,%eax,1)
c020fe1f:	00 c8                	add    %cl,%al
c020fe21:	03 00                	add    (%eax),%eax
c020fe23:	00 00                	add    %al,(%eax)
c020fe25:	00 00                	add    %al,(%eax)
c020fe27:	00 44 00 54          	add    %al,0x54(%eax,%eax,1)
c020fe2b:	00 ed                	add    %ch,%ch
c020fe2d:	03 00                	add    (%eax),%eax
c020fe2f:	00 00                	add    %al,(%eax)
c020fe31:	00 00                	add    %al,(%eax)
c020fe33:	00 44 00 55          	add    %al,0x55(%eax,%eax,1)
c020fe37:	00 12                	add    %dl,(%edx)
c020fe39:	04 00                	add    $0x0,%al
c020fe3b:	00 00                	add    %al,(%eax)
c020fe3d:	00 00                	add    %al,(%eax)
c020fe3f:	00 44 00 56          	add    %al,0x56(%eax,%eax,1)
c020fe43:	00 37                	add    %dh,(%edi)
c020fe45:	04 00                	add    $0x0,%al
c020fe47:	00 00                	add    %al,(%eax)
c020fe49:	00 00                	add    %al,(%eax)
c020fe4b:	00 44 00 57          	add    %al,0x57(%eax,%eax,1)
c020fe4f:	00 5c 04 00          	add    %bl,0x0(%esp,%eax,1)
c020fe53:	00 00                	add    %al,(%eax)
c020fe55:	00 00                	add    %al,(%eax)
c020fe57:	00 44 00 58          	add    %al,0x58(%eax,%eax,1)
c020fe5b:	00 81 04 00 00 00    	add    %al,0x4(%ecx)
c020fe61:	00 00                	add    %al,(%eax)
c020fe63:	00 44 00 59          	add    %al,0x59(%eax,%eax,1)
c020fe67:	00 a6 04 00 00 00    	add    %ah,0x4(%esi)
c020fe6d:	00 00                	add    %al,(%eax)
c020fe6f:	00 44 00 5a          	add    %al,0x5a(%eax,%eax,1)
c020fe73:	00 cb                	add    %cl,%bl
c020fe75:	04 00                	add    $0x0,%al
c020fe77:	00 00                	add    %al,(%eax)
c020fe79:	00 00                	add    %al,(%eax)
c020fe7b:	00 44 00 5b          	add    %al,0x5b(%eax,%eax,1)
c020fe7f:	00 f0                	add    %dh,%al
c020fe81:	04 00                	add    $0x0,%al
c020fe83:	00 00                	add    %al,(%eax)
c020fe85:	00 00                	add    %al,(%eax)
c020fe87:	00 44 00 5c          	add    %al,0x5c(%eax,%eax,1)
c020fe8b:	00 15 05 00 00 00    	add    %dl,0x5
c020fe91:	00 00                	add    %al,(%eax)
c020fe93:	00 44 00 5d          	add    %al,0x5d(%eax,%eax,1)
c020fe97:	00 3a                	add    %bh,(%edx)
c020fe99:	05 00 00 00 00       	add    $0x0,%eax
c020fe9e:	00 00                	add    %al,(%eax)
c020fea0:	44                   	inc    %esp
c020fea1:	00 5e 00             	add    %bl,0x0(%esi)
c020fea4:	5f                   	pop    %edi
c020fea5:	05 00 00 00 00       	add    $0x0,%eax
c020feaa:	00 00                	add    %al,(%eax)
c020feac:	44                   	inc    %esp
c020fead:	00 5f 00             	add    %bl,0x0(%edi)
c020feb0:	84 05 00 00 00 00    	test   %al,0x0
c020feb6:	00 00                	add    %al,(%eax)
c020feb8:	44                   	inc    %esp
c020feb9:	00 60 00             	add    %ah,0x0(%eax)
c020febc:	a9 05 00 00 00       	test   $0x5,%eax
c020fec1:	00 00                	add    %al,(%eax)
c020fec3:	00 44 00 61          	add    %al,0x61(%eax,%eax,1)
c020fec7:	00 ce                	add    %cl,%dh
c020fec9:	05 00 00 00 00       	add    $0x0,%eax
c020fece:	00 00                	add    %al,(%eax)
c020fed0:	44                   	inc    %esp
c020fed1:	00 62 00             	add    %ah,0x0(%edx)
c020fed4:	f3 05 00 00 00 00    	repz add $0x0,%eax
c020feda:	00 00                	add    %al,(%eax)
c020fedc:	44                   	inc    %esp
c020fedd:	00 63 00             	add    %ah,0x0(%ebx)
c020fee0:	18 06                	sbb    %al,(%esi)
c020fee2:	00 00                	add    %al,(%eax)
c020fee4:	00 00                	add    %al,(%eax)
c020fee6:	00 00                	add    %al,(%eax)
c020fee8:	44                   	inc    %esp
c020fee9:	00 64 00 3d          	add    %ah,0x3d(%eax,%eax,1)
c020feed:	06                   	push   %es
c020feee:	00 00                	add    %al,(%eax)
c020fef0:	00 00                	add    %al,(%eax)
c020fef2:	00 00                	add    %al,(%eax)
c020fef4:	44                   	inc    %esp
c020fef5:	00 65 00             	add    %ah,0x0(%ebp)
c020fef8:	62 06                	bound  %eax,(%esi)
c020fefa:	00 00                	add    %al,(%eax)
c020fefc:	00 00                	add    %al,(%eax)
c020fefe:	00 00                	add    %al,(%eax)
c020ff00:	44                   	inc    %esp
c020ff01:	00 66 00             	add    %ah,0x0(%esi)
c020ff04:	87 06                	xchg   %eax,(%esi)
c020ff06:	00 00                	add    %al,(%eax)
c020ff08:	00 00                	add    %al,(%eax)
c020ff0a:	00 00                	add    %al,(%eax)
c020ff0c:	44                   	inc    %esp
c020ff0d:	00 67 00             	add    %ah,0x0(%edi)
c020ff10:	ac                   	lods   %ds:(%esi),%al
c020ff11:	06                   	push   %es
c020ff12:	00 00                	add    %al,(%eax)
c020ff14:	00 00                	add    %al,(%eax)
c020ff16:	00 00                	add    %al,(%eax)
c020ff18:	44                   	inc    %esp
c020ff19:	00 68 00             	add    %ch,0x0(%eax)
c020ff1c:	d1 06                	roll   (%esi)
c020ff1e:	00 00                	add    %al,(%eax)
c020ff20:	00 00                	add    %al,(%eax)
c020ff22:	00 00                	add    %al,(%eax)
c020ff24:	44                   	inc    %esp
c020ff25:	00 69 00             	add    %ch,0x0(%ecx)
c020ff28:	f6 06 00             	testb  $0x0,(%esi)
c020ff2b:	00 00                	add    %al,(%eax)
c020ff2d:	00 00                	add    %al,(%eax)
c020ff2f:	00 44 00 6a          	add    %al,0x6a(%eax,%eax,1)
c020ff33:	00 1b                	add    %bl,(%ebx)
c020ff35:	07                   	pop    %es
c020ff36:	00 00                	add    %al,(%eax)
c020ff38:	00 00                	add    %al,(%eax)
c020ff3a:	00 00                	add    %al,(%eax)
c020ff3c:	44                   	inc    %esp
c020ff3d:	00 6b 00             	add    %ch,0x0(%ebx)
c020ff40:	40                   	inc    %eax
c020ff41:	07                   	pop    %es
c020ff42:	00 00                	add    %al,(%eax)
c020ff44:	00 00                	add    %al,(%eax)
c020ff46:	00 00                	add    %al,(%eax)
c020ff48:	44                   	inc    %esp
c020ff49:	00 6c 00 65          	add    %ch,0x65(%eax,%eax,1)
c020ff4d:	07                   	pop    %es
c020ff4e:	00 00                	add    %al,(%eax)
c020ff50:	00 00                	add    %al,(%eax)
c020ff52:	00 00                	add    %al,(%eax)
c020ff54:	44                   	inc    %esp
c020ff55:	00 6d 00             	add    %ch,0x0(%ebp)
c020ff58:	8a 07                	mov    (%edi),%al
c020ff5a:	00 00                	add    %al,(%eax)
c020ff5c:	00 00                	add    %al,(%eax)
c020ff5e:	00 00                	add    %al,(%eax)
c020ff60:	44                   	inc    %esp
c020ff61:	00 6e 00             	add    %ch,0x0(%esi)
c020ff64:	af                   	scas   %es:(%edi),%eax
c020ff65:	07                   	pop    %es
c020ff66:	00 00                	add    %al,(%eax)
c020ff68:	00 00                	add    %al,(%eax)
c020ff6a:	00 00                	add    %al,(%eax)
c020ff6c:	44                   	inc    %esp
c020ff6d:	00 6f 00             	add    %ch,0x0(%edi)
c020ff70:	d4 07                	aam    $0x7
c020ff72:	00 00                	add    %al,(%eax)
c020ff74:	00 00                	add    %al,(%eax)
c020ff76:	00 00                	add    %al,(%eax)
c020ff78:	44                   	inc    %esp
c020ff79:	00 72 00             	add    %dh,0x0(%edx)
c020ff7c:	f9                   	stc    
c020ff7d:	07                   	pop    %es
c020ff7e:	00 00                	add    %al,(%eax)
c020ff80:	00 00                	add    %al,(%eax)
c020ff82:	00 00                	add    %al,(%eax)
c020ff84:	44                   	inc    %esp
c020ff85:	00 75 00             	add    %dh,0x0(%ebp)
c020ff88:	1e                   	push   %ds
c020ff89:	08 00                	or     %al,(%eax)
c020ff8b:	00 00                	add    %al,(%eax)
c020ff8d:	00 00                	add    %al,(%eax)
c020ff8f:	00 44 00 76          	add    %al,0x76(%eax,%eax,1)
c020ff93:	00 2b                	add    %ch,(%ebx)
c020ff95:	08 00                	or     %al,(%eax)
c020ff97:	00 00                	add    %al,(%eax)
c020ff99:	00 00                	add    %al,(%eax)
c020ff9b:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ff9e:	00 00                	add    %al,(%eax)
c020ffa0:	2d 08 00 00 00       	sub    $0x8,%eax
c020ffa5:	00 00                	add    %al,(%eax)
c020ffa7:	00 4e 00             	add    %cl,0x0(%esi)
c020ffaa:	00 00                	add    %al,(%eax)
c020ffac:	0d 3e 10 c0 e2       	or     $0xe2c0103e,%eax
c020ffb1:	1b 00                	sbb    (%eax),%eax
c020ffb3:	00 24 00             	add    %ah,(%eax,%eax,1)
c020ffb6:	79 00                	jns    c020ffb8 <interrupt_handlers+0x4758>
c020ffb8:	0d 3e 10 c0 f7       	or     $0xf7c0103e,%eax
c020ffbd:	1b 00                	sbb    (%eax),%eax
c020ffbf:	00 a0 00 79 00 08    	add    %ah,0x8007900(%eax)
c020ffc5:	00 00                	add    %al,(%eax)
c020ffc7:	00 02                	add    %al,(%edx)
c020ffc9:	1c 00                	sbb    $0x0,%al
c020ffcb:	00 a0 00 79 00 0c    	add    %ah,0xc007900(%eax)
c020ffd1:	00 00                	add    %al,(%eax)
c020ffd3:	00 0e                	add    %cl,(%esi)
c020ffd5:	1c 00                	sbb    $0x0,%al
c020ffd7:	00 a0 00 79 00 10    	add    %ah,0x10007900(%eax)
c020ffdd:	00 00                	add    %al,(%eax)
c020ffdf:	00 19                	add    %bl,(%ecx)
c020ffe1:	1c 00                	sbb    $0x0,%al
c020ffe3:	00 a0 00 79 00 14    	add    %ah,0x14007900(%eax)
c020ffe9:	00 00                	add    %al,(%eax)
c020ffeb:	00 00                	add    %al,(%eax)
c020ffed:	00 00                	add    %al,(%eax)
c020ffef:	00 2e                	add    %ch,(%esi)
c020fff1:	00 00                	add    %al,(%eax)
c020fff3:	00 0d 3e 10 c0 00    	add    %cl,0xc0103e
c020fff9:	00 00                	add    %al,(%eax)
c020fffb:	00 44 00 7a          	add    %al,0x7a(%eax,%eax,1)
	...
c0210007:	00 44 00 7b          	add    %al,0x7b(%eax,%eax,1)
c021000b:	00 19                	add    %bl,(%ecx)
c021000d:	00 00                	add    %al,(%eax)
c021000f:	00 00                	add    %al,(%eax)
c0210011:	00 00                	add    %al,(%eax)
c0210013:	00 44 00 7c          	add    %al,0x7c(%eax,%eax,1)
c0210017:	00 28                	add    %ch,(%eax)
c0210019:	00 00                	add    %al,(%eax)
c021001b:	00 00                	add    %al,(%eax)
c021001d:	00 00                	add    %al,(%eax)
c021001f:	00 44 00 7e          	add    %al,0x7e(%eax,%eax,1)
c0210023:	00 3a                	add    %bh,(%edx)
c0210025:	00 00                	add    %al,(%eax)
c0210027:	00 00                	add    %al,(%eax)
c0210029:	00 00                	add    %al,(%eax)
c021002b:	00 44 00 7f          	add    %al,0x7f(%eax,%eax,1)
c021002f:	00 4a 00             	add    %cl,0x0(%edx)
c0210032:	00 00                	add    %al,(%eax)
c0210034:	00 00                	add    %al,(%eax)
c0210036:	00 00                	add    %al,(%eax)
c0210038:	44                   	inc    %esp
c0210039:	00 81 00 56 00 00    	add    %al,0x5600(%ecx)
c021003f:	00 00                	add    %al,(%eax)
c0210041:	00 00                	add    %al,(%eax)
c0210043:	00 44 00 83          	add    %al,-0x7d(%eax,%eax,1)
c0210047:	00 65 00             	add    %ah,0x0(%ebp)
c021004a:	00 00                	add    %al,(%eax)
c021004c:	26                   	es
c021004d:	1c 00                	sbb    $0x0,%al
c021004f:	00 80 00 79 00 fc    	add    %al,-0x3ff8700(%eax)
c0210055:	ff                   	(bad)  
c0210056:	ff                   	(bad)  
c0210057:	ff 30                	pushl  (%eax)
c0210059:	1c 00                	sbb    $0x0,%al
c021005b:	00 80 00 79 00 f8    	add    %al,-0x7ff8700(%eax)
c0210061:	ff                   	(bad)  
c0210062:	ff                   	(bad)  
c0210063:	ff                   	(bad)  
c0210064:	3a 1c 00             	cmp    (%eax,%eax,1),%bl
c0210067:	00 80 00 79 00 f4    	add    %al,-0xbff8700(%eax)
c021006d:	ff                   	(bad)  
c021006e:	ff                   	(bad)  
c021006f:	ff 00                	incl   (%eax)
c0210071:	00 00                	add    %al,(%eax)
c0210073:	00 24 00             	add    %ah,(%eax,%eax,1)
c0210076:	00 00                	add    %al,(%eax)
c0210078:	67 00 00             	add    %al,(%bx,%si)
c021007b:	00 00                	add    %al,(%eax)
c021007d:	00 00                	add    %al,(%eax)
c021007f:	00 4e 00             	add    %cl,0x0(%esi)
c0210082:	00 00                	add    %al,(%eax)
c0210084:	74 3e                	je     c02100c4 <interrupt_handlers+0x4864>
c0210086:	10 c0                	adc    %al,%al
c0210088:	46                   	inc    %esi
c0210089:	1c 00                	sbb    $0x0,%al
c021008b:	00 24 00             	add    %ah,(%eax,%eax,1)
c021008e:	86 00                	xchg   %al,(%eax)
c0210090:	74 3e                	je     c02100d0 <interrupt_handlers+0x4870>
c0210092:	10 c0                	adc    %al,%al
c0210094:	5a                   	pop    %edx
c0210095:	1c 00                	sbb    $0x0,%al
c0210097:	00 a0 00 86 00 08    	add    %ah,0x8008600(%eax)
c021009d:	00 00                	add    %al,(%eax)
c021009f:	00 00                	add    %al,(%eax)
c02100a1:	00 00                	add    %al,(%eax)
c02100a3:	00 2e                	add    %ch,(%esi)
c02100a5:	00 00                	add    %al,(%eax)
c02100a7:	00 74 3e 10          	add    %dh,0x10(%esi,%edi,1)
c02100ab:	c0 00 00             	rolb   $0x0,(%eax)
c02100ae:	00 00                	add    %al,(%eax)
c02100b0:	44                   	inc    %esp
c02100b1:	00 87 00 00 00 00    	add    %al,0x0(%edi)
c02100b7:	00 00                	add    %al,(%eax)
c02100b9:	00 00                	add    %al,(%eax)
c02100bb:	00 44 00 88          	add    %al,-0x78(%eax,%eax,1)
c02100bf:	00 06                	add    %al,(%esi)
c02100c1:	00 00                	add    %al,(%eax)
c02100c3:	00 00                	add    %al,(%eax)
c02100c5:	00 00                	add    %al,(%eax)
c02100c7:	00 44 00 89          	add    %al,-0x77(%eax,%eax,1)
c02100cb:	00 17                	add    %dl,(%edi)
c02100cd:	00 00                	add    %al,(%eax)
c02100cf:	00 00                	add    %al,(%eax)
c02100d1:	00 00                	add    %al,(%eax)
c02100d3:	00 44 00 8b          	add    %al,-0x75(%eax,%eax,1)
c02100d7:	00 2e                	add    %ch,(%esi)
c02100d9:	00 00                	add    %al,(%eax)
c02100db:	00 00                	add    %al,(%eax)
c02100dd:	00 00                	add    %al,(%eax)
c02100df:	00 44 00 8d          	add    %al,-0x73(%eax,%eax,1)
c02100e3:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
c02100e7:	00 00                	add    %al,(%eax)
c02100e9:	00 00                	add    %al,(%eax)
c02100eb:	00 24 00             	add    %ah,(%eax,%eax,1)
c02100ee:	00 00                	add    %al,(%eax)
c02100f0:	46                   	inc    %esi
c02100f1:	00 00                	add    %al,(%eax)
c02100f3:	00 00                	add    %al,(%eax)
c02100f5:	00 00                	add    %al,(%eax)
c02100f7:	00 4e 00             	add    %cl,0x0(%esi)
c02100fa:	00 00                	add    %al,(%eax)
c02100fc:	ba 3e 10 c0 6e       	mov    $0x6ec0103e,%edx
c0210101:	1c 00                	sbb    $0x0,%al
c0210103:	00 24 00             	add    %ah,(%eax,%eax,1)
c0210106:	90                   	nop
c0210107:	00 ba 3e 10 c0 91    	add    %bh,-0x6e3fefc2(%edx)
c021010d:	1c 00                	sbb    $0x0,%al
c021010f:	00 a0 00 90 00 08    	add    %ah,0x8009000(%eax)
c0210115:	00 00                	add    %al,(%eax)
c0210117:	00 9a 1c 00 00 a0    	add    %bl,-0x5fffffe4(%edx)
c021011d:	00 90 00 0c 00 00    	add    %dl,0xc00(%eax)
c0210123:	00 00                	add    %al,(%eax)
c0210125:	00 00                	add    %al,(%eax)
c0210127:	00 2e                	add    %ch,(%esi)
c0210129:	00 00                	add    %al,(%eax)
c021012b:	00 ba 3e 10 c0 00    	add    %bh,0xc0103e(%edx)
c0210131:	00 00                	add    %al,(%eax)
c0210133:	00 44 00 91          	add    %al,-0x6f(%eax,%eax,1)
	...
c021013f:	00 44 00 92          	add    %al,-0x6e(%eax,%eax,1)
c0210143:	00 0c 00             	add    %cl,(%eax,%eax,1)
c0210146:	00 00                	add    %al,(%eax)
c0210148:	00 00                	add    %al,(%eax)
c021014a:	00 00                	add    %al,(%eax)
c021014c:	44                   	inc    %esp
c021014d:	00 93 00 1a 00 00    	add    %dl,0x1a00(%ebx)
c0210153:	00 a3 1c 00 00 80    	add    %ah,-0x7fffffe4(%ebx)
c0210159:	00 90 00 fc ff ff    	add    %dl,-0x400(%eax)
c021015f:	ff 00                	incl   (%eax)
c0210161:	00 00                	add    %al,(%eax)
c0210163:	00 24 00             	add    %ah,(%eax,%eax,1)
c0210166:	00 00                	add    %al,(%eax)
c0210168:	1c 00                	sbb    $0x0,%al
c021016a:	00 00                	add    %al,(%eax)
c021016c:	00 00                	add    %al,(%eax)
c021016e:	00 00                	add    %al,(%eax)
c0210170:	4e                   	dec    %esi
c0210171:	00 00                	add    %al,(%eax)
c0210173:	00 d6                	add    %dl,%dh
c0210175:	3e                   	ds
c0210176:	10 c0                	adc    %al,%al
c0210178:	ab                   	stos   %eax,%es:(%edi)
c0210179:	1c 00                	sbb    $0x0,%al
c021017b:	00 24 00             	add    %ah,(%eax,%eax,1)
c021017e:	95                   	xchg   %eax,%ebp
c021017f:	00 d6                	add    %dl,%dh
c0210181:	3e                   	ds
c0210182:	10 c0                	adc    %al,%al
c0210184:	bf 1c 00 00 a0       	mov    $0xa000001c,%edi
c0210189:	00 95 00 08 00 00    	add    %dl,0x800(%ebp)
c021018f:	00 00                	add    %al,(%eax)
c0210191:	00 00                	add    %al,(%eax)
c0210193:	00 2e                	add    %ch,(%esi)
c0210195:	00 00                	add    %al,(%eax)
c0210197:	00 d6                	add    %dl,%dh
c0210199:	3e                   	ds
c021019a:	10 c0                	adc    %al,%al
c021019c:	00 00                	add    %al,(%eax)
c021019e:	00 00                	add    %al,(%eax)
c02101a0:	44                   	inc    %esp
c02101a1:	00 96 00 00 00 00    	add    %dl,0x0(%esi)
c02101a7:	00 00                	add    %al,(%eax)
c02101a9:	00 00                	add    %al,(%eax)
c02101ab:	00 44 00 97          	add    %al,-0x69(%eax,%eax,1)
c02101af:	00 06                	add    %al,(%esi)
c02101b1:	00 00                	add    %al,(%eax)
c02101b3:	00 00                	add    %al,(%eax)
c02101b5:	00 00                	add    %al,(%eax)
c02101b7:	00 44 00 98          	add    %al,-0x68(%eax,%eax,1)
c02101bb:	00 11                	add    %dl,(%ecx)
c02101bd:	00 00                	add    %al,(%eax)
c02101bf:	00 00                	add    %al,(%eax)
c02101c1:	00 00                	add    %al,(%eax)
c02101c3:	00 44 00 9b          	add    %al,-0x65(%eax,%eax,1)
c02101c7:	00 25 00 00 00 00    	add    %ah,0x0
c02101cd:	00 00                	add    %al,(%eax)
c02101cf:	00 44 00 9d          	add    %al,-0x63(%eax,%eax,1)
c02101d3:	00 39                	add    %bh,(%ecx)
c02101d5:	00 00                	add    %al,(%eax)
c02101d7:	00 00                	add    %al,(%eax)
c02101d9:	00 00                	add    %al,(%eax)
c02101db:	00 44 00 9e          	add    %al,-0x62(%eax,%eax,1)
c02101df:	00 4a 00             	add    %cl,0x0(%edx)
c02101e2:	00 00                	add    %al,(%eax)
c02101e4:	00 00                	add    %al,(%eax)
c02101e6:	00 00                	add    %al,(%eax)
c02101e8:	44                   	inc    %esp
c02101e9:	00 a1 00 5f 00 00    	add    %ah,0x5f00(%ecx)
c02101ef:	00 00                	add    %al,(%eax)
c02101f1:	00 00                	add    %al,(%eax)
c02101f3:	00 24 00             	add    %ah,(%eax,%eax,1)
c02101f6:	00 00                	add    %al,(%eax)
c02101f8:	61                   	popa   
c02101f9:	00 00                	add    %al,(%eax)
c02101fb:	00 00                	add    %al,(%eax)
c02101fd:	00 00                	add    %al,(%eax)
c02101ff:	00 4e 00             	add    %cl,0x0(%esi)
c0210202:	00 00                	add    %al,(%eax)
c0210204:	37                   	aaa    
c0210205:	3f                   	aas    
c0210206:	10 c0                	adc    %al,%al
c0210208:	cc                   	int3   
c0210209:	1c 00                	sbb    $0x0,%al
c021020b:	00 20                	add    %ah,(%eax)
c021020d:	00 19                	add    %bl,(%ecx)
c021020f:	00 00                	add    %al,(%eax)
c0210211:	00 00                	add    %al,(%eax)
c0210213:	00 0d 1d 00 00 20    	add    %cl,0x2000001d
c0210219:	00 1e                	add    %bl,(%esi)
c021021b:	00 00                	add    %al,(%eax)
c021021d:	00 00                	add    %al,(%eax)
c021021f:	00 1c 1d 00 00 20 00 	add    %bl,0x200000(,%ebx,1)
c0210226:	21 00                	and    %eax,(%eax)
	...
c0210230:	64 00 00             	add    %al,%fs:(%eax)
c0210233:	00 37                	add    %dh,(%edi)
c0210235:	3f                   	aas    
c0210236:	10 c0                	adc    %al,%al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 47 4e             	sub    %al,0x4e(%edi)
   8:	55                   	push   %ebp
   9:	29 20                	sub    %esp,(%eax)
   b:	34 2e                	xor    $0x2e,%al
   d:	37                   	aaa    
   e:	2e 32 20             	xor    %cs:(%eax),%ah
  11:	32 30                	xor    (%eax),%dh
  13:	31 32                	xor    %esi,(%edx)
  15:	31 31                	xor    %esi,(%ecx)
  17:	30 39                	xor    %bh,(%ecx)
  19:	20 28                	and    %ch,(%eax)
  1b:	52                   	push   %edx
  1c:	65 64 20 48 61       	gs and %cl,%fs:%gs:0x61(%eax)
  21:	74 20                	je     43 <MBOOT_HEADER_FLAGS+0x40>
  23:	34 2e                	xor    $0x2e,%al
  25:	37                   	aaa    
  26:	2e                   	cs
  27:	32                   	.byte 0x32
  28:	2d                   	.byte 0x2d
  29:	38 29                	cmp    %ch,(%ecx)
	...

Disassembly of section .stabstr:

c0211000 <kernel_end-0x2000>:
c0211000:	00 67 64             	add    %ah,0x64(%edi)
c0211003:	74 2f                	je     c0211034 <interrupt_handlers+0x57d4>
c0211005:	67                   	addr16
c0211006:	64                   	fs
c0211007:	74 5f                	je     c0211068 <interrupt_handlers+0x5808>
c0211009:	73 2e                	jae    c0211039 <interrupt_handlers+0x57d9>
c021100b:	73 00                	jae    c021100d <interrupt_handlers+0x57ad>
c021100d:	69 64 74 2f 69 64 74 	imul   $0x5f746469,0x2f(%esp,%esi,2),%esp
c0211014:	5f 
c0211015:	73 2e                	jae    c0211045 <interrupt_handlers+0x57e5>
c0211017:	73 00                	jae    c0211019 <interrupt_handlers+0x57b9>
c0211019:	2f                   	das    
c021101a:	68 6f 6d 65 2f       	push   $0x2f656d6f
c021101f:	73 68                	jae    c0211089 <interrupt_handlers+0x5829>
c0211021:	75 69                	jne    c021108c <interrupt_handlers+0x582c>
c0211023:	2f                   	das    
c0211024:	44                   	inc    %esp
c0211025:	6f                   	outsl  %ds:(%esi),(%dx)
c0211026:	63 75 6d             	arpl   %si,0x6d(%ebp)
c0211029:	65 6e                	outsb  %gs:(%esi),(%dx)
c021102b:	74 73                	je     c02110a0 <interrupt_handlers+0x5840>
c021102d:	2f                   	das    
c021102e:	73 68                	jae    c0211098 <interrupt_handlers+0x5838>
c0211030:	75 69                	jne    c021109b <interrupt_handlers+0x583b>
c0211032:	5f                   	pop    %edi
c0211033:	6f                   	outsl  %ds:(%esi),(%dx)
c0211034:	73 2f                	jae    c0211065 <interrupt_handlers+0x5805>
c0211036:	73 72                	jae    c02110aa <interrupt_handlers+0x584a>
c0211038:	63 2f                	arpl   %bp,(%edi)
c021103a:	74 65                	je     c02110a1 <interrupt_handlers+0x5841>
c021103c:	73 74                	jae    c02110b2 <interrupt_handlers+0x5852>
c021103e:	36                   	ss
c021103f:	2f                   	das    
c0211040:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
c0211044:	73 2f                	jae    c0211075 <interrupt_handlers+0x5815>
c0211046:	64 65 62 75 67       	fs bound %esi,%fs:%gs:0x67(%ebp)
c021104b:	2e 63 00             	arpl   %ax,%cs:(%eax)
c021104e:	67 63 63 32          	arpl   %sp,0x32(%bp,%di)
c0211052:	5f                   	pop    %edi
c0211053:	63 6f 6d             	arpl   %bp,0x6d(%edi)
c0211056:	70 69                	jo     c02110c1 <interrupt_handlers+0x5861>
c0211058:	6c                   	insb   (%dx),%es:(%edi)
c0211059:	65 64 2e 00 69 6e    	gs fs add %ch,%cs:%fs:%gs:0x6e(%ecx)
c021105f:	74 3a                	je     c021109b <interrupt_handlers+0x583b>
c0211061:	74 28                	je     c021108b <interrupt_handlers+0x582b>
c0211063:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211066:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c021106c:	31 29                	xor    %ebp,(%ecx)
c021106e:	3b 2d 32 31 34 37    	cmp    0x37343132,%ebp
c0211074:	34 38                	xor    $0x38,%al
c0211076:	33 36                	xor    (%esi),%esi
c0211078:	34 38                	xor    $0x38,%al
c021107a:	3b 32                	cmp    (%edx),%esi
c021107c:	31 34 37             	xor    %esi,(%edi,%esi,1)
c021107f:	34 38                	xor    $0x38,%al
c0211081:	33 36                	xor    (%esi),%esi
c0211083:	34 37                	xor    $0x37,%al
c0211085:	3b 00                	cmp    (%eax),%eax
c0211087:	63 68 61             	arpl   %bp,0x61(%eax)
c021108a:	72 3a                	jb     c02110c6 <interrupt_handlers+0x5866>
c021108c:	74 28                	je     c02110b6 <interrupt_handlers+0x5856>
c021108e:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211091:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c0211097:	32 29                	xor    (%ecx),%ch
c0211099:	3b 30                	cmp    (%eax),%esi
c021109b:	3b 31                	cmp    (%ecx),%esi
c021109d:	32 37                	xor    (%edi),%dh
c021109f:	3b 00                	cmp    (%eax),%eax
c02110a1:	6c                   	insb   (%dx),%es:(%edi)
c02110a2:	6f                   	outsl  %ds:(%esi),(%dx)
c02110a3:	6e                   	outsb  %ds:(%esi),(%dx)
c02110a4:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
c02110a8:	74 3a                	je     c02110e4 <interrupt_handlers+0x5884>
c02110aa:	74 28                	je     c02110d4 <interrupt_handlers+0x5874>
c02110ac:	30 2c 33             	xor    %ch,(%ebx,%esi,1)
c02110af:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c02110b5:	33 29                	xor    (%ecx),%ebp
c02110b7:	3b 2d 32 31 34 37    	cmp    0x37343132,%ebp
c02110bd:	34 38                	xor    $0x38,%al
c02110bf:	33 36                	xor    (%esi),%esi
c02110c1:	34 38                	xor    $0x38,%al
c02110c3:	3b 32                	cmp    (%edx),%esi
c02110c5:	31 34 37             	xor    %esi,(%edi,%esi,1)
c02110c8:	34 38                	xor    $0x38,%al
c02110ca:	33 36                	xor    (%esi),%esi
c02110cc:	34 37                	xor    $0x37,%al
c02110ce:	3b 00                	cmp    (%eax),%eax
c02110d0:	75 6e                	jne    c0211140 <interrupt_handlers+0x58e0>
c02110d2:	73 69                	jae    c021113d <interrupt_handlers+0x58dd>
c02110d4:	67 6e                	outsb  %ds:(%si),(%dx)
c02110d6:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
c02110db:	74 3a                	je     c0211117 <interrupt_handlers+0x58b7>
c02110dd:	74 28                	je     c0211107 <interrupt_handlers+0x58a7>
c02110df:	30 2c 34             	xor    %ch,(%esp,%esi,1)
c02110e2:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c02110e8:	34 29                	xor    $0x29,%al
c02110ea:	3b 30                	cmp    (%eax),%esi
c02110ec:	3b 30                	cmp    (%eax),%esi
c02110ee:	33 37                	xor    (%edi),%esi
c02110f0:	37                   	aaa    
c02110f1:	37                   	aaa    
c02110f2:	37                   	aaa    
c02110f3:	37                   	aaa    
c02110f4:	37                   	aaa    
c02110f5:	37                   	aaa    
c02110f6:	37                   	aaa    
c02110f7:	37                   	aaa    
c02110f8:	37                   	aaa    
c02110f9:	3b 00                	cmp    (%eax),%eax
c02110fb:	6c                   	insb   (%dx),%es:(%edi)
c02110fc:	6f                   	outsl  %ds:(%esi),(%dx)
c02110fd:	6e                   	outsb  %ds:(%esi),(%dx)
c02110fe:	67 20 75 6e          	and    %dh,0x6e(%di)
c0211102:	73 69                	jae    c021116d <interrupt_handlers+0x590d>
c0211104:	67 6e                	outsb  %ds:(%si),(%dx)
c0211106:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
c021110b:	74 3a                	je     c0211147 <interrupt_handlers+0x58e7>
c021110d:	74 28                	je     c0211137 <interrupt_handlers+0x58d7>
c021110f:	30 2c 35 29 3d 72 28 	xor    %ch,0x28723d29(,%esi,1)
c0211116:	30 2c 35 29 3b 30 3b 	xor    %ch,0x3b303b29(,%esi,1)
c021111d:	30 33                	xor    %dh,(%ebx)
c021111f:	37                   	aaa    
c0211120:	37                   	aaa    
c0211121:	37                   	aaa    
c0211122:	37                   	aaa    
c0211123:	37                   	aaa    
c0211124:	37                   	aaa    
c0211125:	37                   	aaa    
c0211126:	37                   	aaa    
c0211127:	37                   	aaa    
c0211128:	37                   	aaa    
c0211129:	3b 00                	cmp    (%eax),%eax
c021112b:	6c                   	insb   (%dx),%es:(%edi)
c021112c:	6f                   	outsl  %ds:(%esi),(%dx)
c021112d:	6e                   	outsb  %ds:(%esi),(%dx)
c021112e:	67 20 6c 6f          	and    %ch,0x6f(%si)
c0211132:	6e                   	outsb  %ds:(%esi),(%dx)
c0211133:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
c0211137:	74 3a                	je     c0211173 <interrupt_handlers+0x5913>
c0211139:	74 28                	je     c0211163 <interrupt_handlers+0x5903>
c021113b:	30 2c 36             	xor    %ch,(%esi,%esi,1)
c021113e:	29 3d 40 73 36 34    	sub    %edi,0x34367340
c0211144:	3b 72 28             	cmp    0x28(%edx),%esi
c0211147:	30 2c 36             	xor    %ch,(%esi,%esi,1)
c021114a:	29 3b                	sub    %edi,(%ebx)
c021114c:	30 31                	xor    %dh,(%ecx)
c021114e:	30 30                	xor    %dh,(%eax)
c0211150:	30 30                	xor    %dh,(%eax)
c0211152:	30 30                	xor    %dh,(%eax)
c0211154:	30 30                	xor    %dh,(%eax)
c0211156:	30 30                	xor    %dh,(%eax)
c0211158:	30 30                	xor    %dh,(%eax)
c021115a:	30 30                	xor    %dh,(%eax)
c021115c:	30 30                	xor    %dh,(%eax)
c021115e:	30 30                	xor    %dh,(%eax)
c0211160:	30 30                	xor    %dh,(%eax)
c0211162:	30 3b                	xor    %bh,(%ebx)
c0211164:	30 37                	xor    %dh,(%edi)
c0211166:	37                   	aaa    
c0211167:	37                   	aaa    
c0211168:	37                   	aaa    
c0211169:	37                   	aaa    
c021116a:	37                   	aaa    
c021116b:	37                   	aaa    
c021116c:	37                   	aaa    
c021116d:	37                   	aaa    
c021116e:	37                   	aaa    
c021116f:	37                   	aaa    
c0211170:	37                   	aaa    
c0211171:	37                   	aaa    
c0211172:	37                   	aaa    
c0211173:	37                   	aaa    
c0211174:	37                   	aaa    
c0211175:	37                   	aaa    
c0211176:	37                   	aaa    
c0211177:	37                   	aaa    
c0211178:	37                   	aaa    
c0211179:	37                   	aaa    
c021117a:	3b 00                	cmp    (%eax),%eax
c021117c:	6c                   	insb   (%dx),%es:(%edi)
c021117d:	6f                   	outsl  %ds:(%esi),(%dx)
c021117e:	6e                   	outsb  %ds:(%esi),(%dx)
c021117f:	67 20 6c 6f          	and    %ch,0x6f(%si)
c0211183:	6e                   	outsb  %ds:(%esi),(%dx)
c0211184:	67 20 75 6e          	and    %dh,0x6e(%di)
c0211188:	73 69                	jae    c02111f3 <interrupt_handlers+0x5993>
c021118a:	67 6e                	outsb  %ds:(%si),(%dx)
c021118c:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
c0211191:	74 3a                	je     c02111cd <interrupt_handlers+0x596d>
c0211193:	74 28                	je     c02111bd <interrupt_handlers+0x595d>
c0211195:	30 2c 37             	xor    %ch,(%edi,%esi,1)
c0211198:	29 3d 40 73 36 34    	sub    %edi,0x34367340
c021119e:	3b 72 28             	cmp    0x28(%edx),%esi
c02111a1:	30 2c 37             	xor    %ch,(%edi,%esi,1)
c02111a4:	29 3b                	sub    %edi,(%ebx)
c02111a6:	30 3b                	xor    %bh,(%ebx)
c02111a8:	30 31                	xor    %dh,(%ecx)
c02111aa:	37                   	aaa    
c02111ab:	37                   	aaa    
c02111ac:	37                   	aaa    
c02111ad:	37                   	aaa    
c02111ae:	37                   	aaa    
c02111af:	37                   	aaa    
c02111b0:	37                   	aaa    
c02111b1:	37                   	aaa    
c02111b2:	37                   	aaa    
c02111b3:	37                   	aaa    
c02111b4:	37                   	aaa    
c02111b5:	37                   	aaa    
c02111b6:	37                   	aaa    
c02111b7:	37                   	aaa    
c02111b8:	37                   	aaa    
c02111b9:	37                   	aaa    
c02111ba:	37                   	aaa    
c02111bb:	37                   	aaa    
c02111bc:	37                   	aaa    
c02111bd:	37                   	aaa    
c02111be:	37                   	aaa    
c02111bf:	3b 00                	cmp    (%eax),%eax
c02111c1:	73 68                	jae    c021122b <interrupt_handlers+0x59cb>
c02111c3:	6f                   	outsl  %ds:(%esi),(%dx)
c02111c4:	72 74                	jb     c021123a <interrupt_handlers+0x59da>
c02111c6:	20 69 6e             	and    %ch,0x6e(%ecx)
c02111c9:	74 3a                	je     c0211205 <interrupt_handlers+0x59a5>
c02111cb:	74 28                	je     c02111f5 <interrupt_handlers+0x5995>
c02111cd:	30 2c 38             	xor    %ch,(%eax,%edi,1)
c02111d0:	29 3d 40 73 31 36    	sub    %edi,0x36317340
c02111d6:	3b 72 28             	cmp    0x28(%edx),%esi
c02111d9:	30 2c 38             	xor    %ch,(%eax,%edi,1)
c02111dc:	29 3b                	sub    %edi,(%ebx)
c02111de:	2d 33 32 37 36       	sub    $0x36373233,%eax
c02111e3:	38 3b                	cmp    %bh,(%ebx)
c02111e5:	33 32                	xor    (%edx),%esi
c02111e7:	37                   	aaa    
c02111e8:	36                   	ss
c02111e9:	37                   	aaa    
c02111ea:	3b 00                	cmp    (%eax),%eax
c02111ec:	73 68                	jae    c0211256 <interrupt_handlers+0x59f6>
c02111ee:	6f                   	outsl  %ds:(%esi),(%dx)
c02111ef:	72 74                	jb     c0211265 <interrupt_handlers+0x5a05>
c02111f1:	20 75 6e             	and    %dh,0x6e(%ebp)
c02111f4:	73 69                	jae    c021125f <interrupt_handlers+0x59ff>
c02111f6:	67 6e                	outsb  %ds:(%si),(%dx)
c02111f8:	65 64 20 69 6e       	gs and %ch,%fs:%gs:0x6e(%ecx)
c02111fd:	74 3a                	je     c0211239 <interrupt_handlers+0x59d9>
c02111ff:	74 28                	je     c0211229 <interrupt_handlers+0x59c9>
c0211201:	30 2c 39             	xor    %ch,(%ecx,%edi,1)
c0211204:	29 3d 40 73 31 36    	sub    %edi,0x36317340
c021120a:	3b 72 28             	cmp    0x28(%edx),%esi
c021120d:	30 2c 39             	xor    %ch,(%ecx,%edi,1)
c0211210:	29 3b                	sub    %edi,(%ebx)
c0211212:	30 3b                	xor    %bh,(%ebx)
c0211214:	36                   	ss
c0211215:	35 35 33 35 3b       	xor    $0x3b353335,%eax
c021121a:	00 73 69             	add    %dh,0x69(%ebx)
c021121d:	67 6e                	outsb  %ds:(%si),(%dx)
c021121f:	65 64 20 63 68       	gs and %ah,%fs:%gs:0x68(%ebx)
c0211224:	61                   	popa   
c0211225:	72 3a                	jb     c0211261 <interrupt_handlers+0x5a01>
c0211227:	74 28                	je     c0211251 <interrupt_handlers+0x59f1>
c0211229:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021122c:	30 29                	xor    %ch,(%ecx)
c021122e:	3d 40 73 38 3b       	cmp    $0x3b387340,%eax
c0211233:	72 28                	jb     c021125d <interrupt_handlers+0x59fd>
c0211235:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211238:	30 29                	xor    %ch,(%ecx)
c021123a:	3b 2d 31 32 38 3b    	cmp    0x3b383231,%ebp
c0211240:	31 32                	xor    %esi,(%edx)
c0211242:	37                   	aaa    
c0211243:	3b 00                	cmp    (%eax),%eax
c0211245:	75 6e                	jne    c02112b5 <interrupt_handlers+0x5a55>
c0211247:	73 69                	jae    c02112b2 <interrupt_handlers+0x5a52>
c0211249:	67 6e                	outsb  %ds:(%si),(%dx)
c021124b:	65 64 20 63 68       	gs and %ah,%fs:%gs:0x68(%ebx)
c0211250:	61                   	popa   
c0211251:	72 3a                	jb     c021128d <interrupt_handlers+0x5a2d>
c0211253:	74 28                	je     c021127d <interrupt_handlers+0x5a1d>
c0211255:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211258:	31 29                	xor    %ebp,(%ecx)
c021125a:	3d 40 73 38 3b       	cmp    $0x3b387340,%eax
c021125f:	72 28                	jb     c0211289 <interrupt_handlers+0x5a29>
c0211261:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211264:	31 29                	xor    %ebp,(%ecx)
c0211266:	3b 30                	cmp    (%eax),%esi
c0211268:	3b 32                	cmp    (%edx),%esi
c021126a:	35 35 3b 00 66       	xor    $0x66003b35,%eax
c021126f:	6c                   	insb   (%dx),%es:(%edi)
c0211270:	6f                   	outsl  %ds:(%esi),(%dx)
c0211271:	61                   	popa   
c0211272:	74 3a                	je     c02112ae <interrupt_handlers+0x5a4e>
c0211274:	74 28                	je     c021129e <interrupt_handlers+0x5a3e>
c0211276:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211279:	32 29                	xor    (%ecx),%ch
c021127b:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c0211280:	31 29                	xor    %ebp,(%ecx)
c0211282:	3b 34 3b             	cmp    (%ebx,%edi,1),%esi
c0211285:	30 3b                	xor    %bh,(%ebx)
c0211287:	00 64 6f 75          	add    %ah,0x75(%edi,%ebp,2)
c021128b:	62 6c 65 3a          	bound  %ebp,0x3a(%ebp,%eiz,2)
c021128f:	74 28                	je     c02112b9 <interrupt_handlers+0x5a59>
c0211291:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211294:	33 29                	xor    (%ecx),%ebp
c0211296:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c021129b:	31 29                	xor    %ebp,(%ecx)
c021129d:	3b 38                	cmp    (%eax),%edi
c021129f:	3b 30                	cmp    (%eax),%esi
c02112a1:	3b 00                	cmp    (%eax),%eax
c02112a3:	6c                   	insb   (%dx),%es:(%edi)
c02112a4:	6f                   	outsl  %ds:(%esi),(%dx)
c02112a5:	6e                   	outsb  %ds:(%esi),(%dx)
c02112a6:	67 20 64 6f          	and    %ah,0x6f(%si)
c02112aa:	75 62                	jne    c021130e <interrupt_handlers+0x5aae>
c02112ac:	6c                   	insb   (%dx),%es:(%edi)
c02112ad:	65 3a 74 28 30       	cmp    %gs:0x30(%eax,%ebp,1),%dh
c02112b2:	2c 31                	sub    $0x31,%al
c02112b4:	34 29                	xor    $0x29,%al
c02112b6:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c02112bb:	31 29                	xor    %ebp,(%ecx)
c02112bd:	3b 31                	cmp    (%ecx),%esi
c02112bf:	32 3b                	xor    (%ebx),%bh
c02112c1:	30 3b                	xor    %bh,(%ebx)
c02112c3:	00 5f 44             	add    %bl,0x44(%edi)
c02112c6:	65 63 69 6d          	arpl   %bp,%gs:0x6d(%ecx)
c02112ca:	61                   	popa   
c02112cb:	6c                   	insb   (%dx),%es:(%edi)
c02112cc:	33 32                	xor    (%edx),%esi
c02112ce:	3a 74 28 30          	cmp    0x30(%eax,%ebp,1),%dh
c02112d2:	2c 31                	sub    $0x31,%al
c02112d4:	35 29 3d 72 28       	xor    $0x28723d29,%eax
c02112d9:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02112dc:	29 3b                	sub    %edi,(%ebx)
c02112de:	34 3b                	xor    $0x3b,%al
c02112e0:	30 3b                	xor    %bh,(%ebx)
c02112e2:	00 5f 44             	add    %bl,0x44(%edi)
c02112e5:	65 63 69 6d          	arpl   %bp,%gs:0x6d(%ecx)
c02112e9:	61                   	popa   
c02112ea:	6c                   	insb   (%dx),%es:(%edi)
c02112eb:	36                   	ss
c02112ec:	34 3a                	xor    $0x3a,%al
c02112ee:	74 28                	je     c0211318 <interrupt_handlers+0x5ab8>
c02112f0:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02112f3:	36 29 3d 72 28 30 2c 	sub    %edi,%ss:0x2c302872
c02112fa:	31 29                	xor    %ebp,(%ecx)
c02112fc:	3b 38                	cmp    (%eax),%edi
c02112fe:	3b 30                	cmp    (%eax),%esi
c0211300:	3b 00                	cmp    (%eax),%eax
c0211302:	5f                   	pop    %edi
c0211303:	44                   	inc    %esp
c0211304:	65 63 69 6d          	arpl   %bp,%gs:0x6d(%ecx)
c0211308:	61                   	popa   
c0211309:	6c                   	insb   (%dx),%es:(%edi)
c021130a:	31 32                	xor    %esi,(%edx)
c021130c:	38 3a                	cmp    %bh,(%edx)
c021130e:	74 28                	je     c0211338 <interrupt_handlers+0x5ad8>
c0211310:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211313:	37                   	aaa    
c0211314:	29 3d 72 28 30 2c    	sub    %edi,0x2c302872
c021131a:	31 29                	xor    %ebp,(%ecx)
c021131c:	3b 31                	cmp    (%ecx),%esi
c021131e:	36 3b 30             	cmp    %ss:(%eax),%esi
c0211321:	3b 00                	cmp    (%eax),%eax
c0211323:	76 6f                	jbe    c0211394 <interrupt_handlers+0x5b34>
c0211325:	69 64 3a 74 28 30 2c 	imul   $0x312c3028,0x74(%edx,%edi,1),%esp
c021132c:	31 
c021132d:	38 29                	cmp    %ch,(%ecx)
c021132f:	3d 28 30 2c 31       	cmp    $0x312c3028,%eax
c0211334:	38 29                	cmp    %ch,(%ecx)
c0211336:	00 69 6e             	add    %ch,0x6e(%ecx)
c0211339:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
c021133d:	65                   	gs
c021133e:	2f                   	das    
c021133f:	64 65 62 75 67       	fs bound %esi,%fs:%gs:0x67(%ebp)
c0211344:	2e                   	cs
c0211345:	68 00 69 6e 63       	push   $0x636e6900
c021134a:	6c                   	insb   (%dx),%es:(%edi)
c021134b:	75 64                	jne    c02113b1 <interrupt_handlers+0x5b51>
c021134d:	65                   	gs
c021134e:	2f                   	das    
c021134f:	74 79                	je     c02113ca <interrupt_handlers+0x5b6a>
c0211351:	70 65                	jo     c02113b8 <interrupt_handlers+0x5b58>
c0211353:	73 2e                	jae    c0211383 <interrupt_handlers+0x5b23>
c0211355:	68 00 75 69 6e       	push   $0x6e697500
c021135a:	74 33                	je     c021138f <interrupt_handlers+0x5b2f>
c021135c:	32 3a                	xor    (%edx),%bh
c021135e:	74 28                	je     c0211388 <interrupt_handlers+0x5b28>
c0211360:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211363:	29 3d 28 30 2c 34    	sub    %edi,0x342c3028
c0211369:	29 00                	sub    %eax,(%eax)
c021136b:	69 6e 74 33 32 3a 74 	imul   $0x743a3233,0x74(%esi),%ebp
c0211372:	28 32                	sub    %dh,(%edx)
c0211374:	2c 32                	sub    $0x32,%al
c0211376:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c021137c:	29 00                	sub    %eax,(%eax)
c021137e:	75 69                	jne    c02113e9 <interrupt_handlers+0x5b89>
c0211380:	6e                   	outsb  %ds:(%esi),(%dx)
c0211381:	74 31                	je     c02113b4 <interrupt_handlers+0x5b54>
c0211383:	36 3a 74 28 32       	cmp    %ss:0x32(%eax,%ebp,1),%dh
c0211388:	2c 33                	sub    $0x33,%al
c021138a:	29 3d 28 30 2c 39    	sub    %edi,0x392c3028
c0211390:	29 00                	sub    %eax,(%eax)
c0211392:	69 6e 74 31 36 3a 74 	imul   $0x743a3631,0x74(%esi),%ebp
c0211399:	28 32                	sub    %dh,(%edx)
c021139b:	2c 34                	sub    $0x34,%al
c021139d:	29 3d 28 30 2c 38    	sub    %edi,0x382c3028
c02113a3:	29 00                	sub    %eax,(%eax)
c02113a5:	75 69                	jne    c0211410 <interrupt_handlers+0x5bb0>
c02113a7:	6e                   	outsb  %ds:(%esi),(%dx)
c02113a8:	74 38                	je     c02113e2 <interrupt_handlers+0x5b82>
c02113aa:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c02113ae:	2c 35                	sub    $0x35,%al
c02113b0:	29 3d 28 30 2c 31    	sub    %edi,0x312c3028
c02113b6:	31 29                	xor    %ebp,(%ecx)
c02113b8:	00 69 6e             	add    %ch,0x6e(%ecx)
c02113bb:	74 38                	je     c02113f5 <interrupt_handlers+0x5b95>
c02113bd:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c02113c1:	2c 36                	sub    $0x36,%al
c02113c3:	29 3d 28 30 2c 32    	sub    %edi,0x322c3028
c02113c9:	29 00                	sub    %eax,(%eax)
c02113cb:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c02113d2:	2f                   	das    
c02113d3:	73 63                	jae    c0211438 <interrupt_handlers+0x5bd8>
c02113d5:	72 65                	jb     c021143c <interrupt_handlers+0x5bdc>
c02113d7:	65 6e                	outsb  %gs:(%esi),(%dx)
c02113d9:	5f                   	pop    %edi
c02113da:	6f                   	outsl  %ds:(%esi),(%dx)
c02113db:	70 65                	jo     c0211442 <interrupt_handlers+0x5be2>
c02113dd:	72 61                	jb     c0211440 <interrupt_handlers+0x5be0>
c02113df:	74 65                	je     c0211446 <interrupt_handlers+0x5be6>
c02113e1:	2e                   	cs
c02113e2:	68 00 20 3a 54       	push   $0x543a2000
c02113e7:	28 33                	sub    %dh,(%ebx)
c02113e9:	2c 31                	sub    $0x31,%al
c02113eb:	29 3d 65 73 63 72    	sub    %edi,0x72637365
c02113f1:	65 65 6e             	gs outsb %gs:(%esi),(%dx)
c02113f4:	5f                   	pop    %edi
c02113f5:	62 6c 61 63          	bound  %ebp,0x63(%ecx,%eiz,2)
c02113f9:	6b 3a 30             	imul   $0x30,(%edx),%edi
c02113fc:	2c 73                	sub    $0x73,%al
c02113fe:	63 72 65             	arpl   %si,0x65(%edx)
c0211401:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211403:	5f                   	pop    %edi
c0211404:	62 6c 75 65          	bound  %ebp,0x65(%ebp,%esi,2)
c0211408:	3a 31                	cmp    (%ecx),%dh
c021140a:	2c 73                	sub    $0x73,%al
c021140c:	63 72 65             	arpl   %si,0x65(%edx)
c021140f:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211411:	5f                   	pop    %edi
c0211412:	67 72 65             	addr16 jb c021147a <interrupt_handlers+0x5c1a>
c0211415:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211417:	3a 32                	cmp    (%edx),%dh
c0211419:	2c 73                	sub    $0x73,%al
c021141b:	63 72 65             	arpl   %si,0x65(%edx)
c021141e:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211420:	5f                   	pop    %edi
c0211421:	63 79 61             	arpl   %di,0x61(%ecx)
c0211424:	6e                   	outsb  %ds:(%esi),(%dx)
c0211425:	3a 33                	cmp    (%ebx),%dh
c0211427:	2c 73                	sub    $0x73,%al
c0211429:	63 72 65             	arpl   %si,0x65(%edx)
c021142c:	65 6e                	outsb  %gs:(%esi),(%dx)
c021142e:	5f                   	pop    %edi
c021142f:	72 65                	jb     c0211496 <interrupt_handlers+0x5c36>
c0211431:	64 3a 34 2c          	cmp    %fs:(%esp,%ebp,1),%dh
c0211435:	73 63                	jae    c021149a <interrupt_handlers+0x5c3a>
c0211437:	72 65                	jb     c021149e <interrupt_handlers+0x5c3e>
c0211439:	65 6e                	outsb  %gs:(%esi),(%dx)
c021143b:	5f                   	pop    %edi
c021143c:	6d                   	insl   (%dx),%es:(%edi)
c021143d:	61                   	popa   
c021143e:	67 65 6e             	outsb  %gs:(%si),(%dx)
c0211441:	3a 35 2c 73 63 72    	cmp    0x7263732c,%dh
c0211447:	65 65 6e             	gs outsb %gs:(%esi),(%dx)
c021144a:	5f                   	pop    %edi
c021144b:	62 72 6f             	bound  %esi,0x6f(%edx)
c021144e:	77 6e                	ja     c02114be <interrupt_handlers+0x5c5e>
c0211450:	3a 36                	cmp    (%esi),%dh
c0211452:	2c 73                	sub    $0x73,%al
c0211454:	63 72 65             	arpl   %si,0x65(%edx)
c0211457:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211459:	5f                   	pop    %edi
c021145a:	77 68                	ja     c02114c4 <interrupt_handlers+0x5c64>
c021145c:	69 74 65 3a 37 2c 73 	imul   $0x63732c37,0x3a(%ebp,%eiz,2),%esi
c0211463:	63 
c0211464:	72 65                	jb     c02114cb <interrupt_handlers+0x5c6b>
c0211466:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211468:	5f                   	pop    %edi
c0211469:	67 72 61             	addr16 jb c02114cd <interrupt_handlers+0x5c6d>
c021146c:	79 3a                	jns    c02114a8 <interrupt_handlers+0x5c48>
c021146e:	38 2c 73             	cmp    %ch,(%ebx,%esi,2)
c0211471:	63 72 65             	arpl   %si,0x65(%edx)
c0211474:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211476:	5f                   	pop    %edi
c0211477:	6c                   	insb   (%dx),%es:(%edi)
c0211478:	62 6c 75 65          	bound  %ebp,0x65(%ebp,%esi,2)
c021147c:	3a 39                	cmp    (%ecx),%bh
c021147e:	2c 73                	sub    $0x73,%al
c0211480:	63 72 65             	arpl   %si,0x65(%edx)
c0211483:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211485:	5f                   	pop    %edi
c0211486:	6c                   	insb   (%dx),%es:(%edi)
c0211487:	67 72 65             	addr16 jb c02114ef <interrupt_handlers+0x5c8f>
c021148a:	65 6e                	outsb  %gs:(%esi),(%dx)
c021148c:	3a 31                	cmp    (%ecx),%dh
c021148e:	36                   	ss
c021148f:	2c 73                	sub    $0x73,%al
c0211491:	63 72 65             	arpl   %si,0x65(%edx)
c0211494:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211496:	5f                   	pop    %edi
c0211497:	6c                   	insb   (%dx),%es:(%edi)
c0211498:	63 79 61             	arpl   %di,0x61(%ecx)
c021149b:	6e                   	outsb  %ds:(%esi),(%dx)
c021149c:	3a 31                	cmp    (%ecx),%dh
c021149e:	37                   	aaa    
c021149f:	2c 73                	sub    $0x73,%al
c02114a1:	63 72 65             	arpl   %si,0x65(%edx)
c02114a4:	65 6e                	outsb  %gs:(%esi),(%dx)
c02114a6:	5f                   	pop    %edi
c02114a7:	6c                   	insb   (%dx),%es:(%edi)
c02114a8:	72 65                	jb     c021150f <interrupt_handlers+0x5caf>
c02114aa:	64 3a 31             	cmp    %fs:(%ecx),%dh
c02114ad:	38 2c 73             	cmp    %ch,(%ebx,%esi,2)
c02114b0:	63 72 65             	arpl   %si,0x65(%edx)
c02114b3:	65 6e                	outsb  %gs:(%esi),(%dx)
c02114b5:	5f                   	pop    %edi
c02114b6:	6c                   	insb   (%dx),%es:(%edi)
c02114b7:	6d                   	insl   (%dx),%es:(%edi)
c02114b8:	6e                   	outsb  %ds:(%esi),(%dx)
c02114b9:	67 65 6e             	outsb  %gs:(%si),(%dx)
c02114bc:	3a 31                	cmp    (%ecx),%dh
c02114be:	39 2c 73             	cmp    %ebp,(%ebx,%esi,2)
c02114c1:	63 72 65             	arpl   %si,0x65(%edx)
c02114c4:	65 6e                	outsb  %gs:(%esi),(%dx)
c02114c6:	5f                   	pop    %edi
c02114c7:	6c                   	insb   (%dx),%es:(%edi)
c02114c8:	62 72 6f             	bound  %esi,0x6f(%edx)
c02114cb:	77 6e                	ja     c021153b <interrupt_handlers+0x5cdb>
c02114cd:	3a 32                	cmp    (%edx),%dh
c02114cf:	30 2c 73             	xor    %ch,(%ebx,%esi,2)
c02114d2:	63 72 65             	arpl   %si,0x65(%edx)
c02114d5:	65 6e                	outsb  %gs:(%esi),(%dx)
c02114d7:	5f                   	pop    %edi
c02114d8:	6c                   	insb   (%dx),%es:(%edi)
c02114d9:	77 68                	ja     c0211543 <interrupt_handlers+0x5ce3>
c02114db:	69 74 65 3a 32 31 2c 	imul   $0x3b2c3132,0x3a(%ebp,%eiz,2),%esi
c02114e2:	3b 
c02114e3:	00 63 6f             	add    %ah,0x6f(%ebx)
c02114e6:	6c                   	insb   (%dx),%es:(%edi)
c02114e7:	6f                   	outsl  %ds:(%esi),(%dx)
c02114e8:	72 3a                	jb     c0211524 <interrupt_handlers+0x5cc4>
c02114ea:	74 28                	je     c0211514 <interrupt_handlers+0x5cb4>
c02114ec:	33 2c 32             	xor    (%edx,%esi,1),%ebp
c02114ef:	29 3d 28 33 2c 31    	sub    %edi,0x312c3328
c02114f5:	29 00                	sub    %eax,(%eax)
c02114f7:	70 72                	jo     c021156b <interrupt_handlers+0x5d0b>
c02114f9:	69 6e 74 73 3a 66 28 	imul   $0x28663a73,0x74(%esi),%ebp
c0211500:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211503:	38 29                	cmp    %ch,(%ecx)
c0211505:	00 73 3a             	add    %dh,0x3a(%ebx)
c0211508:	70 28                	jo     c0211532 <interrupt_handlers+0x5cd2>
c021150a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021150d:	39 29                	cmp    %ebp,(%ecx)
c021150f:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c0211514:	32 29                	xor    (%ecx),%ch
c0211516:	00 70 72             	add    %dh,0x72(%eax)
c0211519:	69 6e 74 63 68 61 72 	imul   $0x72616863,0x74(%esi),%ebp
c0211520:	3a 66 28             	cmp    0x28(%esi),%ah
c0211523:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211526:	38 29                	cmp    %ch,(%ecx)
c0211528:	00 73 74             	add    %dh,0x74(%ebx)
c021152b:	72 3a                	jb     c0211567 <interrupt_handlers+0x5d07>
c021152d:	70 28                	jo     c0211557 <interrupt_handlers+0x5cf7>
c021152f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211532:	29 00                	sub    %eax,(%eax)
c0211534:	73 74                	jae    c02115aa <interrupt_handlers+0x5d4a>
c0211536:	72 3a                	jb     c0211572 <interrupt_handlers+0x5d12>
c0211538:	28 32                	sub    %dh,(%edx)
c021153a:	2c 36                	sub    $0x36,%al
c021153c:	29 00                	sub    %eax,(%eax)
c021153e:	70 72                	jo     c02115b2 <interrupt_handlers+0x5d52>
c0211540:	69 6e 74 69 3a 66 28 	imul   $0x28663a69,0x74(%esi),%ebp
c0211547:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021154a:	38 29                	cmp    %ch,(%ecx)
c021154c:	00 6e 75             	add    %ch,0x75(%esi)
c021154f:	6d                   	insl   (%dx),%es:(%edi)
c0211550:	62 65 72             	bound  %esp,0x72(%ebp)
c0211553:	3a 70 28             	cmp    0x28(%eax),%dh
c0211556:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211559:	29 00                	sub    %eax,(%eax)
c021155b:	73 3a                	jae    c0211597 <interrupt_handlers+0x5d37>
c021155d:	28 30                	sub    %dh,(%eax)
c021155f:	2c 32                	sub    $0x32,%al
c0211561:	30 29                	xor    %ch,(%ecx)
c0211563:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c0211568:	2c 32                	sub    $0x32,%al
c021156a:	31 29                	xor    %ebp,(%ecx)
c021156c:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c0211571:	32 31                	xor    (%ecx),%dh
c0211573:	29 3b                	sub    %edi,(%ebx)
c0211575:	30 3b                	xor    %bh,(%ebx)
c0211577:	30 33                	xor    %dh,(%ebx)
c0211579:	37                   	aaa    
c021157a:	37                   	aaa    
c021157b:	37                   	aaa    
c021157c:	37                   	aaa    
c021157d:	37                   	aaa    
c021157e:	37                   	aaa    
c021157f:	37                   	aaa    
c0211580:	37                   	aaa    
c0211581:	37                   	aaa    
c0211582:	37                   	aaa    
c0211583:	3b 3b                	cmp    (%ebx),%edi
c0211585:	30 3b                	xor    %bh,(%ebx)
c0211587:	33 31                	xor    (%ecx),%esi
c0211589:	3b 28                	cmp    (%eax),%ebp
c021158b:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c021158e:	29 00                	sub    %eax,(%eax)
c0211590:	73 69                	jae    c02115fb <interrupt_handlers+0x5d9b>
c0211592:	67 6e                	outsb  %ds:(%si),(%dx)
c0211594:	3a 28                	cmp    (%eax),%ch
c0211596:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211599:	29 00                	sub    %eax,(%eax)
c021159b:	69 3a 28 30 2c 31    	imul   $0x312c3028,(%edx),%edi
c02115a1:	29 00                	sub    %eax,(%eax)
c02115a3:	70 72                	jo     c0211617 <interrupt_handlers+0x5db7>
c02115a5:	69 6e 74 78 3a 66 28 	imul   $0x28663a78,0x74(%esi),%ebp
c02115ac:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02115af:	38 29                	cmp    %ch,(%ecx)
c02115b1:	00 68 65             	add    %ch,0x65(%eax)
c02115b4:	78 3a                	js     c02115f0 <interrupt_handlers+0x5d90>
c02115b6:	28 30                	sub    %dh,(%eax)
c02115b8:	2c 32                	sub    $0x32,%al
c02115ba:	32 29                	xor    (%ecx),%ch
c02115bc:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c02115c1:	2c 32                	sub    $0x32,%al
c02115c3:	31 29                	xor    %ebp,(%ecx)
c02115c5:	3b 30                	cmp    (%eax),%esi
c02115c7:	3b 31                	cmp    (%ecx),%esi
c02115c9:	35 3b 28 30 2c       	xor    $0x2c30283b,%eax
c02115ce:	32 29                	xor    (%ecx),%ch
c02115d0:	00 73 3a             	add    %dh,0x3a(%ebx)
c02115d3:	28 30                	sub    %dh,(%eax)
c02115d5:	2c 32                	sub    $0x32,%al
c02115d7:	33 29                	xor    (%ecx),%ebp
c02115d9:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c02115de:	2c 32                	sub    $0x32,%al
c02115e0:	31 29                	xor    %ebp,(%ecx)
c02115e2:	3b 30                	cmp    (%eax),%esi
c02115e4:	3b 33                	cmp    (%ebx),%esi
c02115e6:	31 3b                	xor    %edi,(%ebx)
c02115e8:	28 30                	sub    %dh,(%eax)
c02115ea:	2c 31                	sub    $0x31,%al
c02115ec:	29 00                	sub    %eax,(%eax)
c02115ee:	70 72                	jo     c0211662 <interrupt_handlers+0x5e02>
c02115f0:	69 6e 74 6b 3a 46 28 	imul   $0x28463a6b,0x74(%esi),%ebp
c02115f7:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02115fa:	29 00                	sub    %eax,(%eax)
c02115fc:	66 6f                	outsw  %ds:(%esi),(%dx)
c02115fe:	72 6d                	jb     c021166d <interrupt_handlers+0x5e0d>
c0211600:	61                   	popa   
c0211601:	74 3a                	je     c021163d <interrupt_handlers+0x5ddd>
c0211603:	70 28                	jo     c021162d <interrupt_handlers+0x5dcd>
c0211605:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211608:	34 29                	xor    $0x29,%al
c021160a:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c021160f:	32 35 29 3d 6b 28    	xor    0x286b3d29,%dh
c0211615:	32 2c 36             	xor    (%esi,%esi,1),%ch
c0211618:	29 00                	sub    %eax,(%eax)
c021161a:	6e                   	outsb  %ds:(%esi),(%dx)
c021161b:	75 6d                	jne    c021168a <interrupt_handlers+0x5e2a>
c021161d:	62 65 72             	bound  %esp,0x72(%ebp)
c0211620:	3a 28                	cmp    (%eax),%ch
c0211622:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211625:	29 00                	sub    %eax,(%eax)
c0211627:	61                   	popa   
c0211628:	72 67                	jb     c0211691 <interrupt_handlers+0x5e31>
c021162a:	3a 28                	cmp    (%eax),%ch
c021162c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021162f:	39 29                	cmp    %ebp,(%ecx)
c0211631:	00 76 70             	add    %dh,0x70(%esi)
c0211634:	72 69                	jb     c021169f <interrupt_handlers+0x5e3f>
c0211636:	6e                   	outsb  %ds:(%esi),(%dx)
c0211637:	74 6b                	je     c02116a4 <interrupt_handlers+0x5e44>
c0211639:	3a 66 28             	cmp    0x28(%esi),%ah
c021163c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021163f:	29 00                	sub    %eax,(%eax)
c0211641:	66 6f                	outsw  %ds:(%esi),(%dx)
c0211643:	72 6d                	jb     c02116b2 <interrupt_handlers+0x5e52>
c0211645:	61                   	popa   
c0211646:	74 3a                	je     c0211682 <interrupt_handlers+0x5e22>
c0211648:	70 28                	jo     c0211672 <interrupt_handlers+0x5e12>
c021164a:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c021164d:	34 29                	xor    $0x29,%al
c021164f:	00 61 70             	add    %ah,0x70(%ecx)
c0211652:	3a 70 28             	cmp    0x28(%eax),%dh
c0211655:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211658:	39 29                	cmp    %ebp,(%ecx)
c021165a:	00 70 63             	add    %dh,0x63(%eax)
c021165d:	3a 28                	cmp    (%eax),%ch
c021165f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211662:	29 00                	sub    %eax,(%eax)
c0211664:	6c                   	insb   (%dx),%es:(%edi)
c0211665:	69 62 73 2f 73 63 72 	imul   $0x7263732f,0x73(%edx),%esp
c021166c:	65 65 6e             	gs outsb %gs:(%esi),(%dx)
c021166f:	5f                   	pop    %edi
c0211670:	6f                   	outsl  %ds:(%esi),(%dx)
c0211671:	70 65                	jo     c02116d8 <interrupt_handlers+0x5e78>
c0211673:	72 61                	jb     c02116d6 <interrupt_handlers+0x5e76>
c0211675:	74 65                	je     c02116dc <interrupt_handlers+0x5e7c>
c0211677:	2e 63 00             	arpl   %ax,%cs:(%eax)
c021167a:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c0211681:	2f                   	das    
c0211682:	76 6d                	jbe    c02116f1 <interrupt_handlers+0x5e91>
c0211684:	6d                   	insl   (%dx),%es:(%edi)
c0211685:	2e                   	cs
c0211686:	68 00 69 6e 63       	push   $0x636e6900
c021168b:	6c                   	insb   (%dx),%es:(%edi)
c021168c:	75 64                	jne    c02116f2 <interrupt_handlers+0x5e92>
c021168e:	65                   	gs
c021168f:	2f                   	das    
c0211690:	69 64 74 2e 68 00 69 	imul   $0x64690068,0x2e(%esp,%esi,2),%esp
c0211697:	64 
c0211698:	74 5f                	je     c02116f9 <interrupt_handlers+0x5e99>
c021169a:	74 3a                	je     c02116d6 <interrupt_handlers+0x5e76>
c021169c:	54                   	push   %esp
c021169d:	28 34 2c             	sub    %dh,(%esp,%ebp,1)
c02116a0:	31 29                	xor    %ebp,(%ecx)
c02116a2:	3d 73 38 62 61       	cmp    $0x61623873,%eax
c02116a7:	73 65                	jae    c021170e <interrupt_handlers+0x5eae>
c02116a9:	5f                   	pop    %edi
c02116aa:	6c                   	insb   (%dx),%es:(%edi)
c02116ab:	6f                   	outsl  %ds:(%esi),(%dx)
c02116ac:	77 3a                	ja     c02116e8 <interrupt_handlers+0x5e88>
c02116ae:	28 32                	sub    %dh,(%edx)
c02116b0:	2c 33                	sub    $0x33,%al
c02116b2:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c02116b5:	2c 31                	sub    $0x31,%al
c02116b7:	36 3b 73 65          	cmp    %ss:0x65(%ebx),%esi
c02116bb:	67 6d                	insl   (%dx),%es:(%di)
c02116bd:	65 6e                	outsb  %gs:(%esi),(%dx)
c02116bf:	74 3a                	je     c02116fb <interrupt_handlers+0x5e9b>
c02116c1:	28 32                	sub    %dh,(%edx)
c02116c3:	2c 33                	sub    $0x33,%al
c02116c5:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02116c8:	36                   	ss
c02116c9:	2c 31                	sub    $0x31,%al
c02116cb:	36 3b 6d 75          	cmp    %ss:0x75(%ebp),%ebp
c02116cf:	73 74                	jae    c0211745 <interrupt_handlers+0x5ee5>
c02116d1:	5f                   	pop    %edi
c02116d2:	30 3a                	xor    %bh,(%edx)
c02116d4:	28 32                	sub    %dh,(%edx)
c02116d6:	2c 35                	sub    $0x35,%al
c02116d8:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c02116db:	32 2c 38             	xor    (%eax,%edi,1),%ch
c02116de:	3b 66 6c             	cmp    0x6c(%esi),%esp
c02116e1:	61                   	popa   
c02116e2:	67 3a 28             	cmp    (%bx,%si),%ch
c02116e5:	32 2c 35 29 2c 34 30 	xor    0x30342c29(,%esi,1),%ch
c02116ec:	2c 38                	sub    $0x38,%al
c02116ee:	3b 62 61             	cmp    0x61(%edx),%esp
c02116f1:	73 65                	jae    c0211758 <interrupt_handlers+0x5ef8>
c02116f3:	5f                   	pop    %edi
c02116f4:	68 69 67 68 3a       	push   $0x3a686769
c02116f9:	28 32                	sub    %dh,(%edx)
c02116fb:	2c 33                	sub    $0x33,%al
c02116fd:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0211700:	38 2c 31             	cmp    %ch,(%ecx,%esi,1)
c0211703:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c0211706:	00 69 64             	add    %ch,0x64(%ecx)
c0211709:	74 5f                	je     c021176a <interrupt_handlers+0x5f0a>
c021170b:	65 6e                	outsb  %gs:(%esi),(%dx)
c021170d:	74 72                	je     c0211781 <interrupt_handlers+0x5f21>
c021170f:	79 5f                	jns    c0211770 <interrupt_handlers+0x5f10>
c0211711:	74 3a                	je     c021174d <interrupt_handlers+0x5eed>
c0211713:	74 28                	je     c021173d <interrupt_handlers+0x5edd>
c0211715:	34 2c                	xor    $0x2c,%al
c0211717:	32 29                	xor    (%ecx),%ch
c0211719:	3d 28 34 2c 31       	cmp    $0x312c3428,%eax
c021171e:	29 00                	sub    %eax,(%eax)
c0211720:	69 64 74 5f 70 74 72 	imul   $0x5f727470,0x5f(%esp,%esi,2),%esp
c0211727:	5f 
c0211728:	74 3a                	je     c0211764 <interrupt_handlers+0x5f04>
c021172a:	54                   	push   %esp
c021172b:	28 34 2c             	sub    %dh,(%esp,%ebp,1)
c021172e:	33 29                	xor    (%ecx),%ebp
c0211730:	3d 73 36 6c 69       	cmp    $0x696c3673,%eax
c0211735:	6d                   	insl   (%dx),%es:(%edi)
c0211736:	69 74 3a 28 32 2c 33 	imul   $0x29332c32,0x28(%edx,%edi,1),%esi
c021173d:	29 
c021173e:	2c 30                	sub    $0x30,%al
c0211740:	2c 31                	sub    $0x31,%al
c0211742:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c0211746:	73 65                	jae    c02117ad <interrupt_handlers+0x5f4d>
c0211748:	3a 28                	cmp    (%eax),%ch
c021174a:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c021174d:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0211750:	36                   	ss
c0211751:	2c 33                	sub    $0x33,%al
c0211753:	32 3b                	xor    (%ebx),%bh
c0211755:	3b 00                	cmp    (%eax),%eax
c0211757:	69 64 74 5f 70 74 72 	imul   $0x5f727470,0x5f(%esp,%esi,2),%esp
c021175e:	5f 
c021175f:	74 3a                	je     c021179b <interrupt_handlers+0x5f3b>
c0211761:	74 28                	je     c021178b <interrupt_handlers+0x5f2b>
c0211763:	34 2c                	xor    $0x2c,%al
c0211765:	34 29                	xor    $0x29,%al
c0211767:	3d 28 34 2c 33       	cmp    $0x332c3428,%eax
c021176c:	29 00                	sub    %eax,(%eax)
c021176e:	70 74                	jo     c02117e4 <interrupt_handlers+0x5f84>
c0211770:	5f                   	pop    %edi
c0211771:	72 65                	jb     c02117d8 <interrupt_handlers+0x5f78>
c0211773:	67 73 5f             	addr16 jae c02117d5 <interrupt_handlers+0x5f75>
c0211776:	74 3a                	je     c02117b2 <interrupt_handlers+0x5f52>
c0211778:	54                   	push   %esp
c0211779:	28 34 2c             	sub    %dh,(%esp,%ebp,1)
c021177c:	35 29 3d 73 36       	xor    $0x36733d29,%eax
c0211781:	34 64                	xor    $0x64,%al
c0211783:	73 3a                	jae    c02117bf <interrupt_handlers+0x5f5f>
c0211785:	28 32                	sub    %dh,(%edx)
c0211787:	2c 31                	sub    $0x31,%al
c0211789:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c021178c:	2c 33                	sub    $0x33,%al
c021178e:	32 3b                	xor    (%ebx),%bh
c0211790:	65 64 69 3a 28 32 2c 	gs imul $0x312c3228,%fs:%gs:(%edx),%edi
c0211797:	31 
c0211798:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c021179b:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c021179e:	32 3b                	xor    (%ebx),%bh
c02117a0:	65                   	gs
c02117a1:	73 69                	jae    c021180c <interrupt_handlers+0x5fac>
c02117a3:	3a 28                	cmp    (%eax),%ch
c02117a5:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c02117a8:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c02117ab:	34 2c                	xor    $0x2c,%al
c02117ad:	33 32                	xor    (%edx),%esi
c02117af:	3b 65 62             	cmp    0x62(%ebp),%esp
c02117b2:	70 3a                	jo     c02117ee <interrupt_handlers+0x5f8e>
c02117b4:	28 32                	sub    %dh,(%edx)
c02117b6:	2c 31                	sub    $0x31,%al
c02117b8:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c02117bb:	36                   	ss
c02117bc:	2c 33                	sub    $0x33,%al
c02117be:	32 3b                	xor    (%ebx),%bh
c02117c0:	65                   	gs
c02117c1:	73 70                	jae    c0211833 <interrupt_handlers+0x5fd3>
c02117c3:	3a 28                	cmp    (%eax),%ch
c02117c5:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c02117c8:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02117cb:	32 38                	xor    (%eax),%bh
c02117cd:	2c 33                	sub    $0x33,%al
c02117cf:	32 3b                	xor    (%ebx),%bh
c02117d1:	65 62 78 3a          	bound  %edi,%gs:0x3a(%eax)
c02117d5:	28 32                	sub    %dh,(%edx)
c02117d7:	2c 31                	sub    $0x31,%al
c02117d9:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02117dc:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c02117e0:	32 3b                	xor    (%ebx),%bh
c02117e2:	65                   	gs
c02117e3:	64                   	fs
c02117e4:	78 3a                	js     c0211820 <interrupt_handlers+0x5fc0>
c02117e6:	28 32                	sub    %dh,(%edx)
c02117e8:	2c 31                	sub    $0x31,%al
c02117ea:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02117ed:	39 32                	cmp    %esi,(%edx)
c02117ef:	2c 33                	sub    $0x33,%al
c02117f1:	32 3b                	xor    (%ebx),%bh
c02117f3:	65 63 78 3a          	arpl   %di,%gs:0x3a(%eax)
c02117f7:	28 32                	sub    %dh,(%edx)
c02117f9:	2c 31                	sub    $0x31,%al
c02117fb:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c02117fe:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c0211801:	33 32                	xor    (%edx),%esi
c0211803:	3b 65 61             	cmp    0x61(%ebp),%esp
c0211806:	78 3a                	js     c0211842 <interrupt_handlers+0x5fe2>
c0211808:	28 32                	sub    %dh,(%edx)
c021180a:	2c 31                	sub    $0x31,%al
c021180c:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c021180f:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c0211814:	3b 69 6e             	cmp    0x6e(%ecx),%ebp
c0211817:	74 5f                	je     c0211878 <interrupt_handlers+0x6018>
c0211819:	6e                   	outsb  %ds:(%esi),(%dx)
c021181a:	6f                   	outsl  %ds:(%esi),(%dx)
c021181b:	3a 28                	cmp    (%eax),%ch
c021181d:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211820:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c0211823:	38 38                	cmp    %bh,(%eax)
c0211825:	2c 33                	sub    $0x33,%al
c0211827:	32 3b                	xor    (%ebx),%bh
c0211829:	65                   	gs
c021182a:	72 72                	jb     c021189e <interrupt_handlers+0x603e>
c021182c:	5f                   	pop    %edi
c021182d:	63 6f 64             	arpl   %bp,0x64(%edi)
c0211830:	65 3a 28             	cmp    %gs:(%eax),%ch
c0211833:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211836:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0211839:	32 30                	xor    (%eax),%dh
c021183b:	2c 33                	sub    $0x33,%al
c021183d:	32 3b                	xor    (%ebx),%bh
c021183f:	65 69 70 3a 28 32 2c 	imul   $0x312c3228,%gs:0x3a(%eax),%esi
c0211846:	31 
c0211847:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c021184a:	35 32 2c 33 32       	xor    $0x32332c32,%eax
c021184f:	3b 63 73             	cmp    0x73(%ebx),%esp
c0211852:	3a 28                	cmp    (%eax),%ch
c0211854:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211857:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c021185a:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c021185d:	33 32                	xor    (%edx),%esi
c021185f:	3b 65 66             	cmp    0x66(%ebp),%esp
c0211862:	6c                   	insb   (%dx),%es:(%edi)
c0211863:	61                   	popa   
c0211864:	67 73 3a             	addr16 jae c02118a1 <interrupt_handlers+0x6041>
c0211867:	28 32                	sub    %dh,(%edx)
c0211869:	2c 31                	sub    $0x31,%al
c021186b:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c021186e:	31 36                	xor    %esi,(%esi)
c0211870:	2c 33                	sub    $0x33,%al
c0211872:	32 3b                	xor    (%ebx),%bh
c0211874:	75 73                	jne    c02118e9 <interrupt_handlers+0x6089>
c0211876:	65                   	gs
c0211877:	72 65                	jb     c02118de <interrupt_handlers+0x607e>
c0211879:	73 70                	jae    c02118eb <interrupt_handlers+0x608b>
c021187b:	3a 28                	cmp    (%eax),%ch
c021187d:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211880:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0211883:	34 38                	xor    $0x38,%al
c0211885:	2c 33                	sub    $0x33,%al
c0211887:	32 3b                	xor    (%ebx),%bh
c0211889:	73 73                	jae    c02118fe <interrupt_handlers+0x609e>
c021188b:	3a 28                	cmp    (%eax),%ch
c021188d:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211890:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0211893:	38 30                	cmp    %dh,(%eax)
c0211895:	2c 33                	sub    $0x33,%al
c0211897:	32 3b                	xor    (%ebx),%bh
c0211899:	3b 00                	cmp    (%eax),%eax
c021189b:	70 74                	jo     c0211911 <interrupt_handlers+0x60b1>
c021189d:	5f                   	pop    %edi
c021189e:	72 65                	jb     c0211905 <interrupt_handlers+0x60a5>
c02118a0:	67 73 5f             	addr16 jae c0211902 <interrupt_handlers+0x60a2>
c02118a3:	74 3a                	je     c02118df <interrupt_handlers+0x607f>
c02118a5:	74 28                	je     c02118cf <interrupt_handlers+0x606f>
c02118a7:	34 2c                	xor    $0x2c,%al
c02118a9:	36 29 3d 28 34 2c 35 	sub    %edi,%ss:0x352c3428
c02118b0:	29 00                	sub    %eax,(%eax)
c02118b2:	69 6e 74 65 72 72 75 	imul   $0x75727265,0x74(%esi),%ebp
c02118b9:	70 74                	jo     c021192f <interrupt_handlers+0x60cf>
c02118bb:	5f                   	pop    %edi
c02118bc:	68 61 6e 64 6c       	push   $0x6c646e61
c02118c1:	65                   	gs
c02118c2:	72 5f                	jb     c0211923 <interrupt_handlers+0x60c3>
c02118c4:	74 3a                	je     c0211900 <interrupt_handlers+0x60a0>
c02118c6:	74 28                	je     c02118f0 <interrupt_handlers+0x6090>
c02118c8:	34 2c                	xor    $0x2c,%al
c02118ca:	37                   	aaa    
c02118cb:	29 3d 28 34 2c 38    	sub    %edi,0x382c3428
c02118d1:	29 3d 2a 28 34 2c    	sub    %edi,0x2c34282a
c02118d7:	39 29                	cmp    %ebp,(%ecx)
c02118d9:	3d 66 28 30 2c       	cmp    $0x2c302866,%eax
c02118de:	31 38                	xor    %edi,(%eax)
c02118e0:	29 00                	sub    %eax,(%eax)
c02118e2:	70 67                	jo     c021194b <interrupt_handlers+0x60eb>
c02118e4:	64                   	fs
c02118e5:	5f                   	pop    %edi
c02118e6:	74 3a                	je     c0211922 <interrupt_handlers+0x60c2>
c02118e8:	74 28                	je     c0211912 <interrupt_handlers+0x60b2>
c02118ea:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c02118ed:	29 3d 28 32 2c 31    	sub    %edi,0x312c3228
c02118f3:	29 00                	sub    %eax,(%eax)
c02118f5:	70 74                	jo     c021196b <interrupt_handlers+0x610b>
c02118f7:	65                   	gs
c02118f8:	5f                   	pop    %edi
c02118f9:	74 3a                	je     c0211935 <interrupt_handlers+0x60d5>
c02118fb:	74 28                	je     c0211925 <interrupt_handlers+0x60c5>
c02118fd:	33 2c 32             	xor    (%edx,%esi,1),%ebp
c0211900:	29 3d 28 32 2c 31    	sub    %edi,0x312c3228
c0211906:	29 00                	sub    %eax,(%eax)
c0211908:	73 63                	jae    c021196d <interrupt_handlers+0x610d>
c021190a:	72 6f                	jb     c021197b <interrupt_handlers+0x611b>
c021190c:	6f                   	outsl  %ds:(%esi),(%dx)
c021190d:	6c                   	insb   (%dx),%es:(%edi)
c021190e:	6c                   	insb   (%dx),%es:(%edi)
c021190f:	3a 66 28             	cmp    0x28(%esi),%ah
c0211912:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211915:	38 29                	cmp    %ch,(%ecx)
c0211917:	00 61 74             	add    %ah,0x74(%ecx)
c021191a:	74 72                	je     c021198e <interrupt_handlers+0x612e>
c021191c:	69 62 75 74 65 5f 62 	imul   $0x625f6574,0x75(%edx),%esp
c0211923:	79 74                	jns    c0211999 <interrupt_handlers+0x6139>
c0211925:	65 3a 28             	cmp    %gs:(%eax),%ch
c0211928:	32 2c 35 29 00 62 6c 	xor    0x6c620029(,%esi,1),%ch
c021192f:	61                   	popa   
c0211930:	6e                   	outsb  %ds:(%esi),(%dx)
c0211931:	6b 3a 28             	imul   $0x28,(%edx),%edi
c0211934:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0211937:	29 00                	sub    %eax,(%eax)
c0211939:	6d                   	insl   (%dx),%es:(%edi)
c021193a:	6f                   	outsl  %ds:(%esi),(%dx)
c021193b:	76 65                	jbe    c02119a2 <interrupt_handlers+0x6142>
c021193d:	5f                   	pop    %edi
c021193e:	70 6f                	jo     c02119af <interrupt_handlers+0x614f>
c0211940:	69 6e 74 3a 66 28 30 	imul   $0x3028663a,0x74(%esi),%ebp
c0211947:	2c 31                	sub    $0x31,%al
c0211949:	38 29                	cmp    %ch,(%ecx)
c021194b:	00 6c 6f 63          	add    %ch,0x63(%edi,%ebp,2)
c021194f:	74 69                	je     c02119ba <interrupt_handlers+0x615a>
c0211951:	6f                   	outsl  %ds:(%esi),(%dx)
c0211952:	6e                   	outsb  %ds:(%esi),(%dx)
c0211953:	3a 28                	cmp    (%eax),%ch
c0211955:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0211958:	29 00                	sub    %eax,(%eax)
c021195a:	73 63                	jae    c02119bf <interrupt_handlers+0x615f>
c021195c:	72 65                	jb     c02119c3 <interrupt_handlers+0x6163>
c021195e:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211960:	5f                   	pop    %edi
c0211961:	63 6c 65 61          	arpl   %bp,0x61(%ebp,%eiz,2)
c0211965:	72 3a                	jb     c02119a1 <interrupt_handlers+0x6141>
c0211967:	46                   	inc    %esi
c0211968:	28 30                	sub    %dh,(%eax)
c021196a:	2c 31                	sub    $0x31,%al
c021196c:	38 29                	cmp    %ch,(%ecx)
c021196e:	00 62 61             	add    %ah,0x61(%edx)
c0211971:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
c0211974:	77 68                	ja     c02119de <interrupt_handlers+0x617e>
c0211976:	69 74 65 3a 28 32 2c 	imul   $0x342c3228,0x3a(%ebp,%eiz,2),%esi
c021197d:	34 
c021197e:	29 00                	sub    %eax,(%eax)
c0211980:	73 63                	jae    c02119e5 <interrupt_handlers+0x6185>
c0211982:	72 65                	jb     c02119e9 <interrupt_handlers+0x6189>
c0211984:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211986:	5f                   	pop    %edi
c0211987:	63 68 61             	arpl   %bp,0x61(%eax)
c021198a:	72 3a                	jb     c02119c6 <interrupt_handlers+0x6166>
c021198c:	46                   	inc    %esi
c021198d:	28 30                	sub    %dh,(%eax)
c021198f:	2c 31                	sub    $0x31,%al
c0211991:	38 29                	cmp    %ch,(%ecx)
c0211993:	00 63 3a             	add    %ah,0x3a(%ebx)
c0211996:	70 28                	jo     c02119c0 <interrupt_handlers+0x6160>
c0211998:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021199b:	29 00                	sub    %eax,(%eax)
c021199d:	62 61 63             	bound  %esp,0x63(%ecx)
c02119a0:	6b 5f 63 6f          	imul   $0x6f,0x63(%edi),%ebx
c02119a4:	6c                   	insb   (%dx),%es:(%edi)
c02119a5:	6f                   	outsl  %ds:(%esi),(%dx)
c02119a6:	72 3a                	jb     c02119e2 <interrupt_handlers+0x6182>
c02119a8:	70 28                	jo     c02119d2 <interrupt_handlers+0x6172>
c02119aa:	31 2c 32             	xor    %ebp,(%edx,%esi,1)
c02119ad:	29 00                	sub    %eax,(%eax)
c02119af:	66 6f                	outsw  %ds:(%esi),(%dx)
c02119b1:	72 65                	jb     c0211a18 <interrupt_handlers+0x61b8>
c02119b3:	5f                   	pop    %edi
c02119b4:	63 6f 6c             	arpl   %bp,0x6c(%edi)
c02119b7:	6f                   	outsl  %ds:(%esi),(%dx)
c02119b8:	72 3a                	jb     c02119f4 <interrupt_handlers+0x6194>
c02119ba:	70 28                	jo     c02119e4 <interrupt_handlers+0x6184>
c02119bc:	31 2c 32             	xor    %ebp,(%edx,%esi,1)
c02119bf:	29 00                	sub    %eax,(%eax)
c02119c1:	63 6f 6c             	arpl   %bp,0x6c(%edi)
c02119c4:	6f                   	outsl  %ds:(%esi),(%dx)
c02119c5:	72 5f                	jb     c0211a26 <interrupt_handlers+0x61c6>
c02119c7:	73 3a                	jae    c0211a03 <interrupt_handlers+0x61a3>
c02119c9:	28 32                	sub    %dh,(%edx)
c02119cb:	2c 34                	sub    $0x34,%al
c02119cd:	29 00                	sub    %eax,(%eax)
c02119cf:	63 3a                	arpl   %di,(%edx)
c02119d1:	28 30                	sub    %dh,(%eax)
c02119d3:	2c 32                	sub    $0x32,%al
c02119d5:	29 00                	sub    %eax,(%eax)
c02119d7:	73 63                	jae    c0211a3c <interrupt_handlers+0x61dc>
c02119d9:	72 65                	jb     c0211a40 <interrupt_handlers+0x61e0>
c02119db:	65 6e                	outsb  %gs:(%esi),(%dx)
c02119dd:	5f                   	pop    %edi
c02119de:	73 74                	jae    c0211a54 <interrupt_handlers+0x61f4>
c02119e0:	72 69                	jb     c0211a4b <interrupt_handlers+0x61eb>
c02119e2:	6e                   	outsb  %ds:(%esi),(%dx)
c02119e3:	67 3a 46 28          	cmp    0x28(%bp),%al
c02119e7:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02119ea:	38 29                	cmp    %ch,(%ecx)
c02119ec:	00 73 74             	add    %dh,0x74(%ebx)
c02119ef:	72 69                	jb     c0211a5a <interrupt_handlers+0x61fa>
c02119f1:	6e                   	outsb  %ds:(%esi),(%dx)
c02119f2:	67 3a 70 28          	cmp    0x28(%bx,%si),%dh
c02119f6:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02119f9:	39 29                	cmp    %ebp,(%ecx)
c02119fb:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c0211a00:	36 29 00             	sub    %eax,%ss:(%eax)
c0211a03:	73 63                	jae    c0211a68 <interrupt_handlers+0x6208>
c0211a05:	72 65                	jb     c0211a6c <interrupt_handlers+0x620c>
c0211a07:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211a09:	5f                   	pop    %edi
c0211a0a:	70 6f                	jo     c0211a7b <interrupt_handlers+0x621b>
c0211a0c:	69 6e 74 3a 53 28 30 	imul   $0x3028533a,0x74(%esi),%ebp
c0211a13:	2c 32                	sub    $0x32,%al
c0211a15:	30 29                	xor    %ch,(%ecx)
c0211a17:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c0211a1c:	34 29                	xor    $0x29,%al
c0211a1e:	00 73 63             	add    %dh,0x63(%ebx)
c0211a21:	72 65                	jb     c0211a88 <interrupt_handlers+0x6228>
c0211a23:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211a25:	5f                   	pop    %edi
c0211a26:	61                   	popa   
c0211a27:	62 73 63             	bound  %esi,0x63(%ebx)
c0211a2a:	69 73 73 61 3a 53 28 	imul   $0x28533a61,0x73(%ebx),%esi
c0211a31:	32 2c 34             	xor    (%esp,%esi,1),%ch
c0211a34:	29 00                	sub    %eax,(%eax)
c0211a36:	73 63                	jae    c0211a9b <interrupt_handlers+0x623b>
c0211a38:	72 65                	jb     c0211a9f <interrupt_handlers+0x623f>
c0211a3a:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211a3c:	5f                   	pop    %edi
c0211a3d:	6f                   	outsl  %ds:(%esi),(%dx)
c0211a3e:	72 64                	jb     c0211aa4 <interrupt_handlers+0x6244>
c0211a40:	69 6e 61 74 65 3a 53 	imul   $0x533a6574,0x61(%esi),%ebp
c0211a47:	28 32                	sub    %dh,(%edx)
c0211a49:	2c 34                	sub    $0x34,%al
c0211a4b:	29 00                	sub    %eax,(%eax)
c0211a4d:	6c                   	insb   (%dx),%es:(%edi)
c0211a4e:	69 62 73 2f 73 63 72 	imul   $0x7263732f,0x73(%edx),%esp
c0211a55:	65 65 6e             	gs outsb %gs:(%esi),(%dx)
c0211a58:	5f                   	pop    %edi
c0211a59:	70 6f                	jo     c0211aca <interrupt_handlers+0x626a>
c0211a5b:	72 74                	jb     c0211ad1 <interrupt_handlers+0x6271>
c0211a5d:	2e 63 00             	arpl   %ax,%cs:(%eax)
c0211a60:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c0211a67:	2f                   	das    
c0211a68:	73 63                	jae    c0211acd <interrupt_handlers+0x626d>
c0211a6a:	72 65                	jb     c0211ad1 <interrupt_handlers+0x6271>
c0211a6c:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211a6e:	5f                   	pop    %edi
c0211a6f:	70 6f                	jo     c0211ae0 <interrupt_handlers+0x6280>
c0211a71:	72 74                	jb     c0211ae7 <interrupt_handlers+0x6287>
c0211a73:	2e                   	cs
c0211a74:	68 00 6f 75 74       	push   $0x74756f00
c0211a79:	62 3a                	bound  %edi,(%edx)
c0211a7b:	46                   	inc    %esi
c0211a7c:	28 30                	sub    %dh,(%eax)
c0211a7e:	2c 31                	sub    $0x31,%al
c0211a80:	38 29                	cmp    %ch,(%ecx)
c0211a82:	00 70 6f             	add    %dh,0x6f(%eax)
c0211a85:	72 74                	jb     c0211afb <interrupt_handlers+0x629b>
c0211a87:	3a 70 28             	cmp    0x28(%eax),%dh
c0211a8a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211a8d:	29 00                	sub    %eax,(%eax)
c0211a8f:	76 61                	jbe    c0211af2 <interrupt_handlers+0x6292>
c0211a91:	6c                   	insb   (%dx),%es:(%edi)
c0211a92:	75 65                	jne    c0211af9 <interrupt_handlers+0x6299>
c0211a94:	3a 70 28             	cmp    0x28(%eax),%dh
c0211a97:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211a9a:	29 00                	sub    %eax,(%eax)
c0211a9c:	70 6f                	jo     c0211b0d <interrupt_handlers+0x62ad>
c0211a9e:	72 74                	jb     c0211b14 <interrupt_handlers+0x62b4>
c0211aa0:	3a 28                	cmp    (%eax),%ch
c0211aa2:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0211aa5:	29 00                	sub    %eax,(%eax)
c0211aa7:	76 61                	jbe    c0211b0a <interrupt_handlers+0x62aa>
c0211aa9:	6c                   	insb   (%dx),%es:(%edi)
c0211aaa:	75 65                	jne    c0211b11 <interrupt_handlers+0x62b1>
c0211aac:	3a 28                	cmp    (%eax),%ch
c0211aae:	32 2c 35 29 00 69 6e 	xor    0x6e690029(,%esi,1),%ch
c0211ab5:	62 3a                	bound  %edi,(%edx)
c0211ab7:	46                   	inc    %esi
c0211ab8:	28 32                	sub    %dh,(%edx)
c0211aba:	2c 35                	sub    $0x35,%al
c0211abc:	29 00                	sub    %eax,(%eax)
c0211abe:	72 65                	jb     c0211b25 <interrupt_handlers+0x62c5>
c0211ac0:	74 3a                	je     c0211afc <interrupt_handlers+0x629c>
c0211ac2:	28 32                	sub    %dh,(%edx)
c0211ac4:	2c 35                	sub    $0x35,%al
c0211ac6:	29 00                	sub    %eax,(%eax)
c0211ac8:	69 6e 77 3a 46 28 32 	imul   $0x3228463a,0x77(%esi),%ebp
c0211acf:	2c 33                	sub    $0x33,%al
c0211ad1:	29 00                	sub    %eax,(%eax)
c0211ad3:	72 65                	jb     c0211b3a <interrupt_handlers+0x62da>
c0211ad5:	74 3a                	je     c0211b11 <interrupt_handlers+0x62b1>
c0211ad7:	28 32                	sub    %dh,(%edx)
c0211ad9:	2c 33                	sub    $0x33,%al
c0211adb:	29 00                	sub    %eax,(%eax)
c0211add:	6c                   	insb   (%dx),%es:(%edi)
c0211ade:	69 62 73 2f 73 74 72 	imul   $0x7274732f,0x73(%edx),%esp
c0211ae5:	69 6e 67 2e 63 00 69 	imul   $0x6900632e,0x67(%esi),%ebp
c0211aec:	6e                   	outsb  %ds:(%esi),(%dx)
c0211aed:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
c0211af1:	65                   	gs
c0211af2:	2f                   	das    
c0211af3:	73 74                	jae    c0211b69 <interrupt_handlers+0x6309>
c0211af5:	72 69                	jb     c0211b60 <interrupt_handlers+0x6300>
c0211af7:	6e                   	outsb  %ds:(%esi),(%dx)
c0211af8:	67                   	addr16
c0211af9:	2e                   	cs
c0211afa:	68 00 6d 65 6d       	push   $0x6d656d00
c0211aff:	63 70 79             	arpl   %si,0x79(%eax)
c0211b02:	3a 46 28             	cmp    0x28(%esi),%al
c0211b05:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211b08:	39 29                	cmp    %ebp,(%ecx)
c0211b0a:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c0211b0f:	31 38                	xor    %edi,(%eax)
c0211b11:	29 00                	sub    %eax,(%eax)
c0211b13:	64                   	fs
c0211b14:	65                   	gs
c0211b15:	73 74                	jae    c0211b8b <interrupt_handlers+0x632b>
c0211b17:	3a 70 28             	cmp    0x28(%eax),%dh
c0211b1a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211b1d:	39 29                	cmp    %ebp,(%ecx)
c0211b1f:	00 73 72             	add    %dh,0x72(%ebx)
c0211b22:	63 3a                	arpl   %di,(%edx)
c0211b24:	70 28                	jo     c0211b4e <interrupt_handlers+0x62ee>
c0211b26:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211b29:	30 29                	xor    %ch,(%ecx)
c0211b2b:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c0211b30:	32 31                	xor    (%ecx),%dh
c0211b32:	29 3d 6b 28 30 2c    	sub    %edi,0x2c30286b
c0211b38:	31 38                	xor    %edi,(%eax)
c0211b3a:	29 00                	sub    %eax,(%eax)
c0211b3c:	6c                   	insb   (%dx),%es:(%edi)
c0211b3d:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211b3f:	3a 70 28             	cmp    0x28(%eax),%dh
c0211b42:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0211b45:	29 00                	sub    %eax,(%eax)
c0211b47:	73 74                	jae    c0211bbd <interrupt_handlers+0x635d>
c0211b49:	72 31                	jb     c0211b7c <interrupt_handlers+0x631c>
c0211b4b:	3a 28                	cmp    (%eax),%ch
c0211b4d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211b50:	32 29                	xor    (%ecx),%ch
c0211b52:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c0211b57:	36 29 00             	sub    %eax,%ss:(%eax)
c0211b5a:	73 74                	jae    c0211bd0 <interrupt_handlers+0x6370>
c0211b5c:	72 32                	jb     c0211b90 <interrupt_handlers+0x6330>
c0211b5e:	3a 28                	cmp    (%eax),%ch
c0211b60:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211b63:	33 29                	xor    (%ecx),%ebp
c0211b65:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c0211b6a:	32 34 29             	xor    (%ecx,%ebp,1),%dh
c0211b6d:	3d 6b 28 32 2c       	cmp    $0x2c32286b,%eax
c0211b72:	36 29 00             	sub    %eax,%ss:(%eax)
c0211b75:	6d                   	insl   (%dx),%es:(%edi)
c0211b76:	65                   	gs
c0211b77:	6d                   	insl   (%dx),%es:(%edi)
c0211b78:	73 65                	jae    c0211bdf <interrupt_handlers+0x637f>
c0211b7a:	74 3a                	je     c0211bb6 <interrupt_handlers+0x6356>
c0211b7c:	46                   	inc    %esi
c0211b7d:	28 30                	sub    %dh,(%eax)
c0211b7f:	2c 31                	sub    $0x31,%al
c0211b81:	38 29                	cmp    %ch,(%ecx)
c0211b83:	00 76 61             	add    %dh,0x61(%esi)
c0211b86:	6c                   	insb   (%dx),%es:(%edi)
c0211b87:	3a 70 28             	cmp    0x28(%eax),%dh
c0211b8a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211b8d:	29 00                	sub    %eax,(%eax)
c0211b8f:	73 74                	jae    c0211c05 <interrupt_handlers+0x63a5>
c0211b91:	72 3a                	jb     c0211bcd <interrupt_handlers+0x636d>
c0211b93:	28 30                	sub    %dh,(%eax)
c0211b95:	2c 32                	sub    $0x32,%al
c0211b97:	35 29 3d 2a 28       	xor    $0x282a3d29,%eax
c0211b9c:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211b9f:	29 00                	sub    %eax,(%eax)
c0211ba1:	76 61                	jbe    c0211c04 <interrupt_handlers+0x63a4>
c0211ba3:	6c                   	insb   (%dx),%es:(%edi)
c0211ba4:	3a 28                	cmp    (%eax),%ch
c0211ba6:	32 2c 36             	xor    (%esi,%esi,1),%ch
c0211ba9:	29 00                	sub    %eax,(%eax)
c0211bab:	62 7a 65             	bound  %edi,0x65(%edx)
c0211bae:	72 3a                	jb     c0211bea <interrupt_handlers+0x638a>
c0211bb0:	46                   	inc    %esi
c0211bb1:	28 30                	sub    %dh,(%eax)
c0211bb3:	2c 31                	sub    $0x31,%al
c0211bb5:	38 29                	cmp    %ch,(%ecx)
c0211bb7:	00 64 3a 28          	add    %ah,0x28(%edx,%edi,1)
c0211bbb:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211bbe:	35 29 00 73 74       	xor    $0x74730029,%eax
c0211bc3:	72 63                	jb     c0211c28 <interrupt_handlers+0x63c8>
c0211bc5:	6d                   	insl   (%dx),%es:(%edi)
c0211bc6:	70 3a                	jo     c0211c02 <interrupt_handlers+0x63a2>
c0211bc8:	46                   	inc    %esi
c0211bc9:	28 30                	sub    %dh,(%eax)
c0211bcb:	2c 31                	sub    $0x31,%al
c0211bcd:	29 00                	sub    %eax,(%eax)
c0211bcf:	64                   	fs
c0211bd0:	65                   	gs
c0211bd1:	73 74                	jae    c0211c47 <interrupt_handlers+0x63e7>
c0211bd3:	3a 70 28             	cmp    0x28(%eax),%dh
c0211bd6:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211bd9:	33 29                	xor    (%ecx),%ebp
c0211bdb:	00 76 61             	add    %dh,0x61(%esi)
c0211bde:	6c                   	insb   (%dx),%es:(%edi)
c0211bdf:	3a 70 28             	cmp    0x28(%eax),%dh
c0211be2:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211be5:	33 29                	xor    (%ecx),%ebp
c0211be7:	00 73 31             	add    %dh,0x31(%ebx)
c0211bea:	3a 28                	cmp    (%eax),%ch
c0211bec:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211bef:	33 29                	xor    (%ecx),%ebp
c0211bf1:	00 73 32             	add    %dh,0x32(%ebx)
c0211bf4:	3a 28                	cmp    (%eax),%ch
c0211bf6:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211bf9:	33 29                	xor    (%ecx),%ebp
c0211bfb:	00 63 31             	add    %ah,0x31(%ebx)
c0211bfe:	3a 28                	cmp    (%eax),%ch
c0211c00:	32 2c 36             	xor    (%esi,%esi,1),%ch
c0211c03:	29 00                	sub    %eax,(%eax)
c0211c05:	63 32                	arpl   %si,(%edx)
c0211c07:	3a 28                	cmp    (%eax),%ch
c0211c09:	32 2c 36             	xor    (%esi,%esi,1),%ch
c0211c0c:	29 00                	sub    %eax,(%eax)
c0211c0e:	73 74                	jae    c0211c84 <interrupt_handlers+0x6424>
c0211c10:	72 63                	jb     c0211c75 <interrupt_handlers+0x6415>
c0211c12:	70 79                	jo     c0211c8d <interrupt_handlers+0x642d>
c0211c14:	3a 46 28             	cmp    0x28(%esi),%al
c0211c17:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211c1a:	32 29                	xor    (%ecx),%ch
c0211c1c:	00 64 65 73          	add    %ah,0x73(%ebp,%eiz,2)
c0211c20:	74 3a                	je     c0211c5c <interrupt_handlers+0x63fc>
c0211c22:	70 28                	jo     c0211c4c <interrupt_handlers+0x63ec>
c0211c24:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211c27:	35 29 00 76 61       	xor    $0x61760029,%eax
c0211c2c:	6c                   	insb   (%dx),%es:(%edi)
c0211c2d:	3a 70 28             	cmp    0x28(%eax),%dh
c0211c30:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211c33:	36 29 3d 2a 28 30 2c 	sub    %edi,%ss:0x2c30282a
c0211c3a:	32 37                	xor    (%edi),%dh
c0211c3c:	29 3d 6b 28 30 2c    	sub    %edi,0x2c30286b
c0211c42:	32 29                	xor    (%ecx),%ch
c0211c44:	00 64 3a 28          	add    %ah,0x28(%edx,%edi,1)
c0211c48:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211c4b:	32 29                	xor    (%ecx),%ch
c0211c4d:	00 73 3a             	add    %dh,0x3a(%ebx)
c0211c50:	28 30                	sub    %dh,(%eax)
c0211c52:	2c 32                	sub    $0x32,%al
c0211c54:	33 29                	xor    (%ecx),%ebp
c0211c56:	00 73 74             	add    %dh,0x74(%ebx)
c0211c59:	72 63                	jb     c0211cbe <interrupt_handlers+0x645e>
c0211c5b:	61                   	popa   
c0211c5c:	74 3a                	je     c0211c98 <interrupt_handlers+0x6438>
c0211c5e:	46                   	inc    %esi
c0211c5f:	28 30                	sub    %dh,(%eax)
c0211c61:	2c 32                	sub    $0x32,%al
c0211c63:	32 29                	xor    (%ecx),%ch
c0211c65:	00 64 65 73          	add    %ah,0x73(%ebp,%eiz,2)
c0211c69:	74 3a                	je     c0211ca5 <interrupt_handlers+0x6445>
c0211c6b:	70 28                	jo     c0211c95 <interrupt_handlers+0x6435>
c0211c6d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211c70:	32 29                	xor    (%ecx),%ch
c0211c72:	00 73 74             	add    %dh,0x74(%ebx)
c0211c75:	72 6c                	jb     c0211ce3 <interrupt_handlers+0x6483>
c0211c77:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211c79:	3a 46 28             	cmp    0x28(%esi),%al
c0211c7c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0211c7f:	29 00                	sub    %eax,(%eax)
c0211c81:	73 72                	jae    c0211cf5 <interrupt_handlers+0x6495>
c0211c83:	63 3a                	arpl   %di,(%edx)
c0211c85:	70 28                	jo     c0211caf <interrupt_handlers+0x644f>
c0211c87:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0211c8a:	33 29                	xor    (%ecx),%ebp
c0211c8c:	00 6b 65             	add    %ch,0x65(%ebx)
c0211c8f:	72 6e                	jb     c0211cff <interrupt_handlers+0x649f>
c0211c91:	65                   	gs
c0211c92:	6c                   	insb   (%dx),%es:(%edi)
c0211c93:	2f                   	das    
c0211c94:	70 61                	jo     c0211cf7 <interrupt_handlers+0x6497>
c0211c96:	6e                   	outsb  %ds:(%esi),(%dx)
c0211c97:	69 63 2e 63 00 69 6e 	imul   $0x6e690063,0x2e(%ebx),%esp
c0211c9e:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
c0211ca2:	65                   	gs
c0211ca3:	2f                   	das    
c0211ca4:	70 61                	jo     c0211d07 <interrupt_handlers+0x64a7>
c0211ca6:	6e                   	outsb  %ds:(%esi),(%dx)
c0211ca7:	69 63 2e 68 00 69 6e 	imul   $0x6e690068,0x2e(%ebx),%esp
c0211cae:	63 6c 75 64          	arpl   %bp,0x64(%ebp,%esi,2)
c0211cb2:	65                   	gs
c0211cb3:	2f                   	das    
c0211cb4:	65                   	gs
c0211cb5:	6c                   	insb   (%dx),%es:(%edi)
c0211cb6:	66                   	data16
c0211cb7:	2e                   	cs
c0211cb8:	68 00 69 6e 63       	push   $0x636e6900
c0211cbd:	6c                   	insb   (%dx),%es:(%edi)
c0211cbe:	75 64                	jne    c0211d24 <interrupt_handlers+0x64c4>
c0211cc0:	65                   	gs
c0211cc1:	2f                   	das    
c0211cc2:	6d                   	insl   (%dx),%es:(%edi)
c0211cc3:	75 6c                	jne    c0211d31 <interrupt_handlers+0x64d1>
c0211cc5:	74 69                	je     c0211d30 <interrupt_handlers+0x64d0>
c0211cc7:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c0211cca:	74 2e                	je     c0211cfa <interrupt_handlers+0x649a>
c0211ccc:	68 00 6d 75 6c       	push   $0x6c756d00
c0211cd1:	69 74 62 6f 6f 74 5f 	imul   $0x745f746f,0x6f(%edx,%eiz,2),%esi
c0211cd8:	74 
c0211cd9:	3a 54 28 34          	cmp    0x34(%eax,%ebp,1),%dl
c0211cdd:	2c 31                	sub    $0x31,%al
c0211cdf:	29 3d 73 39 32 66    	sub    %edi,0x66323973
c0211ce5:	6c                   	insb   (%dx),%es:(%edi)
c0211ce6:	61                   	popa   
c0211ce7:	67 73 3a             	addr16 jae c0211d24 <interrupt_handlers+0x64c4>
c0211cea:	28 33                	sub    %dh,(%ebx)
c0211cec:	2c 31                	sub    $0x31,%al
c0211cee:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c0211cf1:	2c 33                	sub    $0x33,%al
c0211cf3:	32 3b                	xor    (%ebx),%bh
c0211cf5:	6d                   	insl   (%dx),%es:(%edi)
c0211cf6:	65                   	gs
c0211cf7:	6d                   	insl   (%dx),%es:(%edi)
c0211cf8:	5f                   	pop    %edi
c0211cf9:	6c                   	insb   (%dx),%es:(%edi)
c0211cfa:	6f                   	outsl  %ds:(%esi),(%dx)
c0211cfb:	77 65                	ja     c0211d62 <interrupt_handlers+0x6502>
c0211cfd:	72 3a                	jb     c0211d39 <interrupt_handlers+0x64d9>
c0211cff:	28 33                	sub    %dh,(%ebx)
c0211d01:	2c 31                	sub    $0x31,%al
c0211d03:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0211d06:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0211d09:	32 3b                	xor    (%ebx),%bh
c0211d0b:	6d                   	insl   (%dx),%es:(%edi)
c0211d0c:	65                   	gs
c0211d0d:	6d                   	insl   (%dx),%es:(%edi)
c0211d0e:	5f                   	pop    %edi
c0211d0f:	75 70                	jne    c0211d81 <interrupt_handlers+0x6521>
c0211d11:	70 65                	jo     c0211d78 <interrupt_handlers+0x6518>
c0211d13:	72 3a                	jb     c0211d4f <interrupt_handlers+0x64ef>
c0211d15:	28 33                	sub    %dh,(%ebx)
c0211d17:	2c 31                	sub    $0x31,%al
c0211d19:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c0211d1c:	34 2c                	xor    $0x2c,%al
c0211d1e:	33 32                	xor    (%edx),%esi
c0211d20:	3b 62 6f             	cmp    0x6f(%edx),%esp
c0211d23:	6f                   	outsl  %ds:(%esi),(%dx)
c0211d24:	74 5f                	je     c0211d85 <interrupt_handlers+0x6525>
c0211d26:	64                   	fs
c0211d27:	65                   	gs
c0211d28:	76 69                	jbe    c0211d93 <interrupt_handlers+0x6533>
c0211d2a:	63 65 3a             	arpl   %sp,0x3a(%ebp)
c0211d2d:	28 33                	sub    %dh,(%ebx)
c0211d2f:	2c 31                	sub    $0x31,%al
c0211d31:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c0211d34:	36                   	ss
c0211d35:	2c 33                	sub    $0x33,%al
c0211d37:	32 3b                	xor    (%ebx),%bh
c0211d39:	63 6d 64             	arpl   %bp,0x64(%ebp)
c0211d3c:	6c                   	insb   (%dx),%es:(%edi)
c0211d3d:	69 6e 65 3a 28 33 2c 	imul   $0x2c33283a,0x65(%esi),%ebp
c0211d44:	31 29                	xor    %ebp,(%ecx)
c0211d46:	2c 31                	sub    $0x31,%al
c0211d48:	32 38                	xor    (%eax),%bh
c0211d4a:	2c 33                	sub    $0x33,%al
c0211d4c:	32 3b                	xor    (%ebx),%bh
c0211d4e:	6d                   	insl   (%dx),%es:(%edi)
c0211d4f:	6f                   	outsl  %ds:(%esi),(%dx)
c0211d50:	64                   	fs
c0211d51:	73 5f                	jae    c0211db2 <interrupt_handlers+0x6552>
c0211d53:	63 6f 75             	arpl   %bp,0x75(%edi)
c0211d56:	6e                   	outsb  %ds:(%esi),(%dx)
c0211d57:	74 3a                	je     c0211d93 <interrupt_handlers+0x6533>
c0211d59:	28 33                	sub    %dh,(%ebx)
c0211d5b:	2c 31                	sub    $0x31,%al
c0211d5d:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0211d60:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c0211d64:	32 3b                	xor    (%ebx),%bh
c0211d66:	6d                   	insl   (%dx),%es:(%edi)
c0211d67:	6f                   	outsl  %ds:(%esi),(%dx)
c0211d68:	64                   	fs
c0211d69:	73 5f                	jae    c0211dca <interrupt_handlers+0x656a>
c0211d6b:	61                   	popa   
c0211d6c:	64                   	fs
c0211d6d:	64                   	fs
c0211d6e:	72 3a                	jb     c0211daa <interrupt_handlers+0x654a>
c0211d70:	28 33                	sub    %dh,(%ebx)
c0211d72:	2c 31                	sub    $0x31,%al
c0211d74:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0211d77:	39 32                	cmp    %esi,(%edx)
c0211d79:	2c 33                	sub    $0x33,%al
c0211d7b:	32 3b                	xor    (%ebx),%bh
c0211d7d:	6e                   	outsb  %ds:(%esi),(%dx)
c0211d7e:	75 6d                	jne    c0211ded <interrupt_handlers+0x658d>
c0211d80:	3a 28                	cmp    (%eax),%ch
c0211d82:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211d85:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c0211d88:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c0211d8b:	33 32                	xor    (%edx),%esi
c0211d8d:	3b 73 69             	cmp    0x69(%ebx),%esi
c0211d90:	7a 65                	jp     c0211df7 <interrupt_handlers+0x6597>
c0211d92:	3a 28                	cmp    (%eax),%ch
c0211d94:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211d97:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c0211d9a:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c0211d9f:	3b 61 64             	cmp    0x64(%ecx),%esp
c0211da2:	64                   	fs
c0211da3:	72 3a                	jb     c0211ddf <interrupt_handlers+0x657f>
c0211da5:	28 33                	sub    %dh,(%ebx)
c0211da7:	2c 31                	sub    $0x31,%al
c0211da9:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c0211dac:	38 38                	cmp    %bh,(%eax)
c0211dae:	2c 33                	sub    $0x33,%al
c0211db0:	32 3b                	xor    (%ebx),%bh
c0211db2:	73 68                	jae    c0211e1c <interrupt_handlers+0x65bc>
c0211db4:	6e                   	outsb  %ds:(%esi),(%dx)
c0211db5:	64                   	fs
c0211db6:	78 3a                	js     c0211df2 <interrupt_handlers+0x6592>
c0211db8:	28 33                	sub    %dh,(%ebx)
c0211dba:	2c 31                	sub    $0x31,%al
c0211dbc:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0211dbf:	32 30                	xor    (%eax),%dh
c0211dc1:	2c 33                	sub    $0x33,%al
c0211dc3:	32 3b                	xor    (%ebx),%bh
c0211dc5:	6d                   	insl   (%dx),%es:(%edi)
c0211dc6:	6d                   	insl   (%dx),%es:(%edi)
c0211dc7:	61                   	popa   
c0211dc8:	70 5f                	jo     c0211e29 <interrupt_handlers+0x65c9>
c0211dca:	6c                   	insb   (%dx),%es:(%edi)
c0211dcb:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211dcd:	67 74 68             	addr16 je c0211e38 <interrupt_handlers+0x65d8>
c0211dd0:	3a 28                	cmp    (%eax),%ch
c0211dd2:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211dd5:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0211dd8:	35 32 2c 33 32       	xor    $0x32332c32,%eax
c0211ddd:	3b 6d 6d             	cmp    0x6d(%ebp),%ebp
c0211de0:	61                   	popa   
c0211de1:	70 5f                	jo     c0211e42 <interrupt_handlers+0x65e2>
c0211de3:	61                   	popa   
c0211de4:	64                   	fs
c0211de5:	64                   	fs
c0211de6:	72 3a                	jb     c0211e22 <interrupt_handlers+0x65c2>
c0211de8:	28 33                	sub    %dh,(%ebx)
c0211dea:	2c 31                	sub    $0x31,%al
c0211dec:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0211def:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c0211df2:	33 32                	xor    (%edx),%esi
c0211df4:	3b 64 72 69          	cmp    0x69(%edx,%esi,2),%esp
c0211df8:	76 65                	jbe    c0211e5f <interrupt_handlers+0x65ff>
c0211dfa:	73 5f                	jae    c0211e5b <interrupt_handlers+0x65fb>
c0211dfc:	6c                   	insb   (%dx),%es:(%edi)
c0211dfd:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211dff:	67 74 68             	addr16 je c0211e6a <interrupt_handlers+0x660a>
c0211e02:	3a 28                	cmp    (%eax),%ch
c0211e04:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211e07:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0211e0a:	31 36                	xor    %esi,(%esi)
c0211e0c:	2c 33                	sub    $0x33,%al
c0211e0e:	32 3b                	xor    (%ebx),%bh
c0211e10:	63 6f 6e             	arpl   %bp,0x6e(%edi)
c0211e13:	66 69 67 5f 74 61    	imul   $0x6174,0x5f(%edi),%sp
c0211e19:	62 6c 65 73          	bound  %ebp,0x73(%ebp,%eiz,2)
c0211e1d:	3a 28                	cmp    (%eax),%ch
c0211e1f:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211e22:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0211e25:	34 38                	xor    $0x38,%al
c0211e27:	2c 33                	sub    $0x33,%al
c0211e29:	32 3b                	xor    (%ebx),%bh
c0211e2b:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c0211e2e:	74 5f                	je     c0211e8f <interrupt_handlers+0x662f>
c0211e30:	6c                   	insb   (%dx),%es:(%edi)
c0211e31:	6f                   	outsl  %ds:(%esi),(%dx)
c0211e32:	61                   	popa   
c0211e33:	64                   	fs
c0211e34:	65                   	gs
c0211e35:	72 5f                	jb     c0211e96 <interrupt_handlers+0x6636>
c0211e37:	6e                   	outsb  %ds:(%esi),(%dx)
c0211e38:	61                   	popa   
c0211e39:	6d                   	insl   (%dx),%es:(%edi)
c0211e3a:	65 3a 28             	cmp    %gs:(%eax),%ch
c0211e3d:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211e40:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0211e43:	38 30                	cmp    %dh,(%eax)
c0211e45:	2c 33                	sub    $0x33,%al
c0211e47:	32 3b                	xor    (%ebx),%bh
c0211e49:	61                   	popa   
c0211e4a:	70 6d                	jo     c0211eb9 <interrupt_handlers+0x6659>
c0211e4c:	5f                   	pop    %edi
c0211e4d:	74 61                	je     c0211eb0 <interrupt_handlers+0x6650>
c0211e4f:	62 6c 65 3a          	bound  %ebp,0x3a(%ebp,%eiz,2)
c0211e53:	28 33                	sub    %dh,(%ebx)
c0211e55:	2c 31                	sub    $0x31,%al
c0211e57:	29 2c 35 31 32 2c 33 	sub    %ebp,0x332c3231(,%esi,1)
c0211e5e:	32 3b                	xor    (%ebx),%bh
c0211e60:	76 62                	jbe    c0211ec4 <interrupt_handlers+0x6664>
c0211e62:	65                   	gs
c0211e63:	5f                   	pop    %edi
c0211e64:	63 6f 6e             	arpl   %bp,0x6e(%edi)
c0211e67:	74 72                	je     c0211edb <interrupt_handlers+0x667b>
c0211e69:	6f                   	outsl  %ds:(%esi),(%dx)
c0211e6a:	6c                   	insb   (%dx),%es:(%edi)
c0211e6b:	5f                   	pop    %edi
c0211e6c:	69 6e 66 6f 3a 28 33 	imul   $0x33283a6f,0x66(%esi),%ebp
c0211e73:	2c 31                	sub    $0x31,%al
c0211e75:	29 2c 35 34 34 2c 33 	sub    %ebp,0x332c3434(,%esi,1)
c0211e7c:	32 3b                	xor    (%ebx),%bh
c0211e7e:	76 62                	jbe    c0211ee2 <interrupt_handlers+0x6682>
c0211e80:	65                   	gs
c0211e81:	5f                   	pop    %edi
c0211e82:	6d                   	insl   (%dx),%es:(%edi)
c0211e83:	6f                   	outsl  %ds:(%esi),(%dx)
c0211e84:	64                   	fs
c0211e85:	65                   	gs
c0211e86:	5f                   	pop    %edi
c0211e87:	69 6e 66 6f 3a 28 33 	imul   $0x33283a6f,0x66(%esi),%ebp
c0211e8e:	2c 31                	sub    $0x31,%al
c0211e90:	29 2c 35 37 36 2c 33 	sub    %ebp,0x332c3637(,%esi,1)
c0211e97:	32 3b                	xor    (%ebx),%bh
c0211e99:	76 62                	jbe    c0211efd <interrupt_handlers+0x669d>
c0211e9b:	65                   	gs
c0211e9c:	5f                   	pop    %edi
c0211e9d:	6d                   	insl   (%dx),%es:(%edi)
c0211e9e:	6f                   	outsl  %ds:(%esi),(%dx)
c0211e9f:	64 65 3a 28          	fs cmp %fs:%gs:(%eax),%ch
c0211ea3:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211ea6:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c0211ea9:	30 38                	xor    %bh,(%eax)
c0211eab:	2c 33                	sub    $0x33,%al
c0211ead:	32 3b                	xor    (%ebx),%bh
c0211eaf:	76 62                	jbe    c0211f13 <interrupt_handlers+0x66b3>
c0211eb1:	65                   	gs
c0211eb2:	5f                   	pop    %edi
c0211eb3:	69 6e 74 65 72 66 61 	imul   $0x61667265,0x74(%esi),%ebp
c0211eba:	63 65 5f             	arpl   %sp,0x5f(%ebp)
c0211ebd:	73 65                	jae    c0211f24 <interrupt_handlers+0x66c4>
c0211ebf:	67 3a 28             	cmp    (%bx,%si),%ch
c0211ec2:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211ec5:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c0211ec8:	34 30                	xor    $0x30,%al
c0211eca:	2c 33                	sub    $0x33,%al
c0211ecc:	32 3b                	xor    (%ebx),%bh
c0211ece:	76 62                	jbe    c0211f32 <interrupt_handlers+0x66d2>
c0211ed0:	65                   	gs
c0211ed1:	5f                   	pop    %edi
c0211ed2:	69 6e 74 65 72 66 61 	imul   $0x61667265,0x74(%esi),%ebp
c0211ed9:	63 65 5f             	arpl   %sp,0x5f(%ebp)
c0211edc:	6f                   	outsl  %ds:(%esi),(%dx)
c0211edd:	66                   	data16
c0211ede:	66                   	data16
c0211edf:	3a 28                	cmp    (%eax),%ch
c0211ee1:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211ee4:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c0211ee7:	37                   	aaa    
c0211ee8:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0211eeb:	32 3b                	xor    (%ebx),%bh
c0211eed:	76 62                	jbe    c0211f51 <interrupt_handlers+0x66f1>
c0211eef:	65                   	gs
c0211ef0:	5f                   	pop    %edi
c0211ef1:	69 6e 74 65 72 66 61 	imul   $0x61667265,0x74(%esi),%ebp
c0211ef8:	63 65 5f             	arpl   %sp,0x5f(%ebp)
c0211efb:	6c                   	insb   (%dx),%es:(%edi)
c0211efc:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211efe:	3a 28                	cmp    (%eax),%ch
c0211f00:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211f03:	29 2c 37             	sub    %ebp,(%edi,%esi,1)
c0211f06:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c0211f09:	33 32                	xor    (%edx),%esi
c0211f0b:	3b 3b                	cmp    (%ebx),%edi
c0211f0d:	00 6d 75             	add    %ch,0x75(%ebp)
c0211f10:	6c                   	insb   (%dx),%es:(%edi)
c0211f11:	74 69                	je     c0211f7c <interrupt_handlers+0x671c>
c0211f13:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c0211f16:	74 5f                	je     c0211f77 <interrupt_handlers+0x6717>
c0211f18:	74 3a                	je     c0211f54 <interrupt_handlers+0x66f4>
c0211f1a:	74 28                	je     c0211f44 <interrupt_handlers+0x66e4>
c0211f1c:	34 2c                	xor    $0x2c,%al
c0211f1e:	32 29                	xor    (%ecx),%ch
c0211f20:	3d 28 34 2c 31       	cmp    $0x312c3428,%eax
c0211f25:	29 00                	sub    %eax,(%eax)
c0211f27:	6d                   	insl   (%dx),%es:(%edi)
c0211f28:	6d                   	insl   (%dx),%es:(%edi)
c0211f29:	61                   	popa   
c0211f2a:	70 5f                	jo     c0211f8b <interrupt_handlers+0x672b>
c0211f2c:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211f2e:	74 72                	je     c0211fa2 <interrupt_handlers+0x6742>
c0211f30:	79 5f                	jns    c0211f91 <interrupt_handlers+0x6731>
c0211f32:	74 3a                	je     c0211f6e <interrupt_handlers+0x670e>
c0211f34:	74 28                	je     c0211f5e <interrupt_handlers+0x66fe>
c0211f36:	34 2c                	xor    $0x2c,%al
c0211f38:	33 29                	xor    (%ecx),%ebp
c0211f3a:	3d 28 34 2c 34       	cmp    $0x342c3428,%eax
c0211f3f:	29 3d 73 32 34 73    	sub    %edi,0x73343273
c0211f45:	69 7a 65 3a 28 33 2c 	imul   $0x2c33283a,0x65(%edx),%edi
c0211f4c:	31 29                	xor    %ebp,(%ecx)
c0211f4e:	2c 30                	sub    $0x30,%al
c0211f50:	2c 33                	sub    $0x33,%al
c0211f52:	32 3b                	xor    (%ebx),%bh
c0211f54:	62 61 73             	bound  %esp,0x73(%ecx)
c0211f57:	65                   	gs
c0211f58:	5f                   	pop    %edi
c0211f59:	61                   	popa   
c0211f5a:	64                   	fs
c0211f5b:	64                   	fs
c0211f5c:	72 5f                	jb     c0211fbd <interrupt_handlers+0x675d>
c0211f5e:	6c                   	insb   (%dx),%es:(%edi)
c0211f5f:	6f                   	outsl  %ds:(%esi),(%dx)
c0211f60:	77 3a                	ja     c0211f9c <interrupt_handlers+0x673c>
c0211f62:	28 33                	sub    %dh,(%ebx)
c0211f64:	2c 31                	sub    $0x31,%al
c0211f66:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0211f69:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0211f6c:	32 3b                	xor    (%ebx),%bh
c0211f6e:	62 61 73             	bound  %esp,0x73(%ecx)
c0211f71:	65                   	gs
c0211f72:	5f                   	pop    %edi
c0211f73:	61                   	popa   
c0211f74:	64                   	fs
c0211f75:	64                   	fs
c0211f76:	72 5f                	jb     c0211fd7 <interrupt_handlers+0x6777>
c0211f78:	68 69 67 68 3a       	push   $0x3a686769
c0211f7d:	28 33                	sub    %dh,(%ebx)
c0211f7f:	2c 31                	sub    $0x31,%al
c0211f81:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c0211f84:	34 2c                	xor    $0x2c,%al
c0211f86:	33 32                	xor    (%edx),%esi
c0211f88:	3b 6c 65 6e          	cmp    0x6e(%ebp,%eiz,2),%ebp
c0211f8c:	67 74 68             	addr16 je c0211ff7 <interrupt_handlers+0x6797>
c0211f8f:	5f                   	pop    %edi
c0211f90:	6c                   	insb   (%dx),%es:(%edi)
c0211f91:	6f                   	outsl  %ds:(%esi),(%dx)
c0211f92:	77 3a                	ja     c0211fce <interrupt_handlers+0x676e>
c0211f94:	28 33                	sub    %dh,(%ebx)
c0211f96:	2c 31                	sub    $0x31,%al
c0211f98:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c0211f9b:	36                   	ss
c0211f9c:	2c 33                	sub    $0x33,%al
c0211f9e:	32 3b                	xor    (%ebx),%bh
c0211fa0:	6c                   	insb   (%dx),%es:(%edi)
c0211fa1:	65 6e                	outsb  %gs:(%esi),(%dx)
c0211fa3:	67 74 68             	addr16 je c021200e <interrupt_handlers+0x67ae>
c0211fa6:	5f                   	pop    %edi
c0211fa7:	68 69 67 68 3a       	push   $0x3a686769
c0211fac:	28 33                	sub    %dh,(%ebx)
c0211fae:	2c 31                	sub    $0x31,%al
c0211fb0:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0211fb3:	32 38                	xor    (%eax),%bh
c0211fb5:	2c 33                	sub    $0x33,%al
c0211fb7:	32 3b                	xor    (%ebx),%bh
c0211fb9:	74 79                	je     c0212034 <interrupt_handlers+0x67d4>
c0211fbb:	70 65                	jo     c0212022 <interrupt_handlers+0x67c2>
c0211fbd:	3a 28                	cmp    (%eax),%ch
c0211fbf:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0211fc2:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0211fc5:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c0211fc9:	32 3b                	xor    (%ebx),%bh
c0211fcb:	3b 00                	cmp    (%eax),%eax
c0211fcd:	45                   	inc    %ebp
c0211fce:	6c                   	insb   (%dx),%es:(%edi)
c0211fcf:	66 33 32             	xor    (%edx),%si
c0211fd2:	5f                   	pop    %edi
c0211fd3:	45                   	inc    %ebp
c0211fd4:	68 64 72 3a 74       	push   $0x743a7264
c0211fd9:	28 32                	sub    %dh,(%edx)
c0211fdb:	2c 31                	sub    $0x31,%al
c0211fdd:	29 3d 28 32 2c 32    	sub    %edi,0x322c3228
c0211fe3:	29 3d 73 35 32 65    	sub    %edi,0x65323573
c0211fe9:	5f                   	pop    %edi
c0211fea:	69 64 65 6e 74 3a 28 	imul   $0x32283a74,0x6e(%ebp,%eiz,2),%esp
c0211ff1:	32 
c0211ff2:	2c 33                	sub    $0x33,%al
c0211ff4:	29 3d 61 72 28 32    	sub    %edi,0x32287261
c0211ffa:	2c 34                	sub    $0x34,%al
c0211ffc:	29 3d 72 28 32 2c    	sub    %edi,0x2c322872
c0212002:	34 29                	xor    $0x29,%al
c0212004:	3b 30                	cmp    (%eax),%esi
c0212006:	3b 30                	cmp    (%eax),%esi
c0212008:	33 37                	xor    (%edi),%esi
c021200a:	37                   	aaa    
c021200b:	37                   	aaa    
c021200c:	37                   	aaa    
c021200d:	37                   	aaa    
c021200e:	37                   	aaa    
c021200f:	37                   	aaa    
c0212010:	37                   	aaa    
c0212011:	37                   	aaa    
c0212012:	37                   	aaa    
c0212013:	3b 3b                	cmp    (%ebx),%edi
c0212015:	30 3b                	xor    %bh,(%ebx)
c0212017:	31 35 3b 28 33 2c    	xor    %esi,0x2c33283b
c021201d:	35 29 2c 30 2c       	xor    $0x2c302c29,%eax
c0212022:	31 32                	xor    %esi,(%edx)
c0212024:	38 3b                	cmp    %bh,(%ebx)
c0212026:	65                   	gs
c0212027:	5f                   	pop    %edi
c0212028:	74 79                	je     c02120a3 <interrupt_handlers+0x6843>
c021202a:	70 65                	jo     c0212091 <interrupt_handlers+0x6831>
c021202c:	3a 28                	cmp    (%eax),%ch
c021202e:	33 2c 33             	xor    (%ebx,%esi,1),%ebp
c0212031:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0212034:	32 38                	xor    (%eax),%bh
c0212036:	2c 31                	sub    $0x31,%al
c0212038:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c021203c:	6d                   	insl   (%dx),%es:(%edi)
c021203d:	61                   	popa   
c021203e:	63 68 69             	arpl   %bp,0x69(%eax)
c0212041:	6e                   	outsb  %ds:(%esi),(%dx)
c0212042:	65 3a 28             	cmp    %gs:(%eax),%ch
c0212045:	33 2c 33             	xor    (%ebx,%esi,1),%ebp
c0212048:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c021204b:	34 34                	xor    $0x34,%al
c021204d:	2c 31                	sub    $0x31,%al
c021204f:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c0212053:	76 65                	jbe    c02120ba <interrupt_handlers+0x685a>
c0212055:	72 73                	jb     c02120ca <interrupt_handlers+0x686a>
c0212057:	69 6f 6e 3a 28 33 2c 	imul   $0x2c33283a,0x6e(%edi),%ebp
c021205e:	31 29                	xor    %ebp,(%ecx)
c0212060:	2c 31                	sub    $0x31,%al
c0212062:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c0212066:	32 3b                	xor    (%ebx),%bh
c0212068:	65                   	gs
c0212069:	5f                   	pop    %edi
c021206a:	65 6e                	outsb  %gs:(%esi),(%dx)
c021206c:	74 72                	je     c02120e0 <interrupt_handlers+0x6880>
c021206e:	79 3a                	jns    c02120aa <interrupt_handlers+0x684a>
c0212070:	28 33                	sub    %dh,(%ebx)
c0212072:	2c 31                	sub    $0x31,%al
c0212074:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0212077:	39 32                	cmp    %esi,(%edx)
c0212079:	2c 33                	sub    $0x33,%al
c021207b:	32 3b                	xor    (%ebx),%bh
c021207d:	65                   	gs
c021207e:	5f                   	pop    %edi
c021207f:	70 68                	jo     c02120e9 <interrupt_handlers+0x6889>
c0212081:	6f                   	outsl  %ds:(%esi),(%dx)
c0212082:	66                   	data16
c0212083:	66                   	data16
c0212084:	3a 28                	cmp    (%eax),%ch
c0212086:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212089:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c021208c:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c021208f:	33 32                	xor    (%edx),%esi
c0212091:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c0212094:	73 68                	jae    c02120fe <interrupt_handlers+0x689e>
c0212096:	6f                   	outsl  %ds:(%esi),(%dx)
c0212097:	66                   	data16
c0212098:	66                   	data16
c0212099:	3a 28                	cmp    (%eax),%ch
c021209b:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c021209e:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c02120a1:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c02120a6:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c02120a9:	66                   	data16
c02120aa:	6c                   	insb   (%dx),%es:(%edi)
c02120ab:	61                   	popa   
c02120ac:	67 73 3a             	addr16 jae c02120e9 <interrupt_handlers+0x6889>
c02120af:	28 33                	sub    %dh,(%ebx)
c02120b1:	2c 31                	sub    $0x31,%al
c02120b3:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c02120b6:	38 38                	cmp    %bh,(%eax)
c02120b8:	2c 33                	sub    $0x33,%al
c02120ba:	32 3b                	xor    (%ebx),%bh
c02120bc:	65                   	gs
c02120bd:	5f                   	pop    %edi
c02120be:	65                   	gs
c02120bf:	68 73 69 7a 65       	push   $0x657a6973
c02120c4:	3a 28                	cmp    (%eax),%ch
c02120c6:	33 2c 33             	xor    (%ebx,%esi,1),%ebp
c02120c9:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c02120cc:	32 30                	xor    (%eax),%dh
c02120ce:	2c 31                	sub    $0x31,%al
c02120d0:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c02120d4:	70 68                	jo     c021213e <interrupt_handlers+0x68de>
c02120d6:	65 6e                	outsb  %gs:(%esi),(%dx)
c02120d8:	74 73                	je     c021214d <interrupt_handlers+0x68ed>
c02120da:	69 7a 65 3a 28 33 2c 	imul   $0x2c33283a,0x65(%edx),%edi
c02120e1:	33 29                	xor    (%ecx),%ebp
c02120e3:	2c 33                	sub    $0x33,%al
c02120e5:	33 36                	xor    (%esi),%esi
c02120e7:	2c 31                	sub    $0x31,%al
c02120e9:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c02120ed:	70 68                	jo     c0212157 <interrupt_handlers+0x68f7>
c02120ef:	6e                   	outsb  %ds:(%esi),(%dx)
c02120f0:	75 6d                	jne    c021215f <interrupt_handlers+0x68ff>
c02120f2:	3a 28                	cmp    (%eax),%ch
c02120f4:	33 2c 33             	xor    (%ebx,%esi,1),%ebp
c02120f7:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c02120fa:	35 32 2c 31 36       	xor    $0x36312c32,%eax
c02120ff:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c0212102:	73 68                	jae    c021216c <interrupt_handlers+0x690c>
c0212104:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212106:	74 73                	je     c021217b <interrupt_handlers+0x691b>
c0212108:	69 7a 65 3a 28 33 2c 	imul   $0x2c33283a,0x65(%edx),%edi
c021210f:	33 29                	xor    (%ecx),%ebp
c0212111:	2c 33                	sub    $0x33,%al
c0212113:	36 38 2c 31          	cmp    %ch,%ss:(%ecx,%esi,1)
c0212117:	36 3b 65 5f          	cmp    %ss:0x5f(%ebp),%esp
c021211b:	73 68                	jae    c0212185 <interrupt_handlers+0x6925>
c021211d:	6e                   	outsb  %ds:(%esi),(%dx)
c021211e:	75 6d                	jne    c021218d <interrupt_handlers+0x692d>
c0212120:	3a 28                	cmp    (%eax),%ch
c0212122:	33 2c 33             	xor    (%ebx,%esi,1),%ebp
c0212125:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0212128:	38 34 2c             	cmp    %dh,(%esp,%ebp,1)
c021212b:	31 36                	xor    %esi,(%esi)
c021212d:	3b 65 5f             	cmp    0x5f(%ebp),%esp
c0212130:	73 68                	jae    c021219a <interrupt_handlers+0x693a>
c0212132:	73 74                	jae    c02121a8 <interrupt_handlers+0x6948>
c0212134:	72 6e                	jb     c02121a4 <interrupt_handlers+0x6944>
c0212136:	64                   	fs
c0212137:	78 3a                	js     c0212173 <interrupt_handlers+0x6913>
c0212139:	28 33                	sub    %dh,(%ebx)
c021213b:	2c 33                	sub    $0x33,%al
c021213d:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0212140:	30 30                	xor    %dh,(%eax)
c0212142:	2c 31                	sub    $0x31,%al
c0212144:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c0212147:	00 45 6c             	add    %al,0x6c(%ebp)
c021214a:	66 33 32             	xor    (%edx),%si
c021214d:	5f                   	pop    %edi
c021214e:	53                   	push   %ebx
c021214f:	68 61 72 3a 74       	push   $0x743a7261
c0212154:	28 32                	sub    %dh,(%edx)
c0212156:	2c 35                	sub    $0x35,%al
c0212158:	29 3d 28 32 2c 36    	sub    %edi,0x362c3228
c021215e:	29 3d 73 34 30 73    	sub    %edi,0x73303473
c0212164:	68 5f 6e 61 6d       	push   $0x6d616e5f
c0212169:	65 3a 28             	cmp    %gs:(%eax),%ch
c021216c:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c021216f:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c0212172:	2c 33                	sub    $0x33,%al
c0212174:	32 3b                	xor    (%ebx),%bh
c0212176:	73 68                	jae    c02121e0 <interrupt_handlers+0x6980>
c0212178:	5f                   	pop    %edi
c0212179:	74 79                	je     c02121f4 <interrupt_handlers+0x6994>
c021217b:	70 72                	jo     c02121ef <interrupt_handlers+0x698f>
c021217d:	3a 28                	cmp    (%eax),%ch
c021217f:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212182:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0212185:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0212188:	32 3b                	xor    (%ebx),%bh
c021218a:	73 68                	jae    c02121f4 <interrupt_handlers+0x6994>
c021218c:	5f                   	pop    %edi
c021218d:	66                   	data16
c021218e:	6c                   	insb   (%dx),%es:(%edi)
c021218f:	61                   	popa   
c0212190:	67 73 3a             	addr16 jae c02121cd <interrupt_handlers+0x696d>
c0212193:	28 33                	sub    %dh,(%ebx)
c0212195:	2c 31                	sub    $0x31,%al
c0212197:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c021219a:	34 2c                	xor    $0x2c,%al
c021219c:	33 32                	xor    (%edx),%esi
c021219e:	3b 73 68             	cmp    0x68(%ebx),%esi
c02121a1:	5f                   	pop    %edi
c02121a2:	61                   	popa   
c02121a3:	64                   	fs
c02121a4:	64                   	fs
c02121a5:	72 3a                	jb     c02121e1 <interrupt_handlers+0x6981>
c02121a7:	28 33                	sub    %dh,(%ebx)
c02121a9:	2c 31                	sub    $0x31,%al
c02121ab:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c02121ae:	36                   	ss
c02121af:	2c 33                	sub    $0x33,%al
c02121b1:	32 3b                	xor    (%ebx),%bh
c02121b3:	73 68                	jae    c021221d <interrupt_handlers+0x69bd>
c02121b5:	5f                   	pop    %edi
c02121b6:	6f                   	outsl  %ds:(%esi),(%dx)
c02121b7:	66                   	data16
c02121b8:	66                   	data16
c02121b9:	73 65                	jae    c0212220 <interrupt_handlers+0x69c0>
c02121bb:	74 3a                	je     c02121f7 <interrupt_handlers+0x6997>
c02121bd:	28 33                	sub    %dh,(%ebx)
c02121bf:	2c 31                	sub    $0x31,%al
c02121c1:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02121c4:	32 38                	xor    (%eax),%bh
c02121c6:	2c 33                	sub    $0x33,%al
c02121c8:	32 3b                	xor    (%ebx),%bh
c02121ca:	73 68                	jae    c0212234 <interrupt_handlers+0x69d4>
c02121cc:	5f                   	pop    %edi
c02121cd:	73 69                	jae    c0212238 <interrupt_handlers+0x69d8>
c02121cf:	7a 65                	jp     c0212236 <interrupt_handlers+0x69d6>
c02121d1:	3a 28                	cmp    (%eax),%ch
c02121d3:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c02121d6:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02121d9:	36 30 2c 33          	xor    %ch,%ss:(%ebx,%esi,1)
c02121dd:	32 3b                	xor    (%ebx),%bh
c02121df:	73 68                	jae    c0212249 <interrupt_handlers+0x69e9>
c02121e1:	5f                   	pop    %edi
c02121e2:	6c                   	insb   (%dx),%es:(%edi)
c02121e3:	69 6e 6b 3a 28 33 2c 	imul   $0x2c33283a,0x6b(%esi),%ebp
c02121ea:	31 29                	xor    %ebp,(%ecx)
c02121ec:	2c 31                	sub    $0x31,%al
c02121ee:	39 32                	cmp    %esi,(%edx)
c02121f0:	2c 33                	sub    $0x33,%al
c02121f2:	32 3b                	xor    (%ebx),%bh
c02121f4:	73 68                	jae    c021225e <interrupt_handlers+0x69fe>
c02121f6:	5f                   	pop    %edi
c02121f7:	69 6e 66 6f 3a 28 33 	imul   $0x33283a6f,0x66(%esi),%ebp
c02121fe:	2c 31                	sub    $0x31,%al
c0212200:	29 2c 32             	sub    %ebp,(%edx,%esi,1)
c0212203:	32 34 2c             	xor    (%esp,%ebp,1),%dh
c0212206:	33 32                	xor    (%edx),%esi
c0212208:	3b 73 68             	cmp    0x68(%ebx),%esi
c021220b:	5f                   	pop    %edi
c021220c:	61                   	popa   
c021220d:	64                   	fs
c021220e:	64                   	fs
c021220f:	72 61                	jb     c0212272 <interrupt_handlers+0x6a12>
c0212211:	6c                   	insb   (%dx),%es:(%edi)
c0212212:	69 67 6e 3a 28 33 2c 	imul   $0x2c33283a,0x6e(%edi),%esp
c0212219:	31 29                	xor    %ebp,(%ecx)
c021221b:	2c 32                	sub    $0x32,%al
c021221d:	35 36 2c 33 32       	xor    $0x32332c36,%eax
c0212222:	3b 73 68             	cmp    0x68(%ebx),%esi
c0212225:	5f                   	pop    %edi
c0212226:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212228:	74 73                	je     c021229d <interrupt_handlers+0x6a3d>
c021222a:	69 7a 65 3a 28 33 2c 	imul   $0x2c33283a,0x65(%edx),%edi
c0212231:	31 29                	xor    %ebp,(%ecx)
c0212233:	2c 32                	sub    $0x32,%al
c0212235:	38 38                	cmp    %bh,(%eax)
c0212237:	2c 33                	sub    $0x33,%al
c0212239:	32 3b                	xor    (%ebx),%bh
c021223b:	3b 00                	cmp    (%eax),%eax
c021223d:	45                   	inc    %ebp
c021223e:	6c                   	insb   (%dx),%es:(%edi)
c021223f:	66 33 32             	xor    (%edx),%si
c0212242:	5f                   	pop    %edi
c0212243:	53                   	push   %ebx
c0212244:	79 6d                	jns    c02122b3 <interrupt_handlers+0x6a53>
c0212246:	3a 74 28 32          	cmp    0x32(%eax,%ebp,1),%dh
c021224a:	2c 37                	sub    $0x37,%al
c021224c:	29 3d 28 32 2c 38    	sub    %edi,0x382c3228
c0212252:	29 3d 73 31 36 73    	sub    %edi,0x73363173
c0212258:	74 5f                	je     c02122b9 <interrupt_handlers+0x6a59>
c021225a:	6e                   	outsb  %ds:(%esi),(%dx)
c021225b:	61                   	popa   
c021225c:	6d                   	insl   (%dx),%es:(%edi)
c021225d:	65 3a 28             	cmp    %gs:(%eax),%ch
c0212260:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212263:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c0212266:	2c 33                	sub    $0x33,%al
c0212268:	32 3b                	xor    (%ebx),%bh
c021226a:	73 74                	jae    c02122e0 <interrupt_handlers+0x6a80>
c021226c:	5f                   	pop    %edi
c021226d:	76 61                	jbe    c02122d0 <interrupt_handlers+0x6a70>
c021226f:	6c                   	insb   (%dx),%es:(%edi)
c0212270:	75 65                	jne    c02122d7 <interrupt_handlers+0x6a77>
c0212272:	3a 28                	cmp    (%eax),%ch
c0212274:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212277:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c021227a:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c021227d:	32 3b                	xor    (%ebx),%bh
c021227f:	73 74                	jae    c02122f5 <interrupt_handlers+0x6a95>
c0212281:	5f                   	pop    %edi
c0212282:	73 69                	jae    c02122ed <interrupt_handlers+0x6a8d>
c0212284:	7a 65                	jp     c02122eb <interrupt_handlers+0x6a8b>
c0212286:	3a 28                	cmp    (%eax),%ch
c0212288:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c021228b:	29 2c 36             	sub    %ebp,(%esi,%esi,1)
c021228e:	34 2c                	xor    $0x2c,%al
c0212290:	33 32                	xor    (%edx),%esi
c0212292:	3b 73 74             	cmp    0x74(%ebx),%esi
c0212295:	5f                   	pop    %edi
c0212296:	69 6e 66 6f 3a 28 33 	imul   $0x33283a6f,0x66(%esi),%ebp
c021229d:	2c 35                	sub    $0x35,%al
c021229f:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c02122a2:	36                   	ss
c02122a3:	2c 38                	sub    $0x38,%al
c02122a5:	3b 73 74             	cmp    0x74(%ebx),%esi
c02122a8:	5f                   	pop    %edi
c02122a9:	6f                   	outsl  %ds:(%esi),(%dx)
c02122aa:	74 68                	je     c0212314 <interrupt_handlers+0x6ab4>
c02122ac:	65                   	gs
c02122ad:	72 3a                	jb     c02122e9 <interrupt_handlers+0x6a89>
c02122af:	28 33                	sub    %dh,(%ebx)
c02122b1:	2c 35                	sub    $0x35,%al
c02122b3:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02122b6:	30 34 2c             	xor    %dh,(%esp,%ebp,1)
c02122b9:	38 3b                	cmp    %bh,(%ebx)
c02122bb:	73 74                	jae    c0212331 <interrupt_handlers+0x6ad1>
c02122bd:	5f                   	pop    %edi
c02122be:	73 68                	jae    c0212328 <interrupt_handlers+0x6ac8>
c02122c0:	6e                   	outsb  %ds:(%esi),(%dx)
c02122c1:	64                   	fs
c02122c2:	78 3a                	js     c02122fe <interrupt_handlers+0x6a9e>
c02122c4:	28 33                	sub    %dh,(%ebx)
c02122c6:	2c 33                	sub    $0x33,%al
c02122c8:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02122cb:	31 32                	xor    %esi,(%edx)
c02122cd:	2c 31                	sub    $0x31,%al
c02122cf:	36 3b 3b             	cmp    %ss:(%ebx),%edi
c02122d2:	00 65 6c             	add    %ah,0x6c(%ebp)
c02122d5:	66                   	data16
c02122d6:	3a 54 28 32          	cmp    0x32(%eax,%ebp,1),%dl
c02122da:	2c 39                	sub    $0x39,%al
c02122dc:	29 3d 73 31 36 73    	sub    %edi,0x73363173
c02122e2:	79 6d                	jns    c0212351 <interrupt_handlers+0x6af1>
c02122e4:	74 61                	je     c0212347 <interrupt_handlers+0x6ae7>
c02122e6:	62 3a                	bound  %edi,(%edx)
c02122e8:	28 32                	sub    %dh,(%edx)
c02122ea:	2c 31                	sub    $0x31,%al
c02122ec:	30 29                	xor    %ch,(%ecx)
c02122ee:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c02122f3:	37                   	aaa    
c02122f4:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c02122f7:	2c 33                	sub    $0x33,%al
c02122f9:	32 3b                	xor    (%ebx),%bh
c02122fb:	73 79                	jae    c0212376 <interrupt_handlers+0x6b16>
c02122fd:	6d                   	insl   (%dx),%es:(%edi)
c02122fe:	74 61                	je     c0212361 <interrupt_handlers+0x6b01>
c0212300:	62 73 7a             	bound  %esi,0x7a(%ebx)
c0212303:	3a 28                	cmp    (%eax),%ch
c0212305:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212308:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c021230b:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c021230e:	32 3b                	xor    (%ebx),%bh
c0212310:	73 74                	jae    c0212386 <interrupt_handlers+0x6b26>
c0212312:	72 74                	jb     c0212388 <interrupt_handlers+0x6b28>
c0212314:	61                   	popa   
c0212315:	62 3a                	bound  %edi,(%edx)
c0212317:	28 32                	sub    %dh,(%edx)
c0212319:	2c 31                	sub    $0x31,%al
c021231b:	31 29                	xor    %ebp,(%ecx)
c021231d:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c0212322:	31 32                	xor    %esi,(%edx)
c0212324:	29 3d 6b 28 30 2c    	sub    %edi,0x2c30286b
c021232a:	32 29                	xor    (%ecx),%ch
c021232c:	2c 36                	sub    $0x36,%al
c021232e:	34 2c                	xor    $0x2c,%al
c0212330:	33 32                	xor    (%edx),%esi
c0212332:	3b 73 74             	cmp    0x74(%ebx),%esi
c0212335:	72 74                	jb     c02123ab <interrupt_handlers+0x6b4b>
c0212337:	61                   	popa   
c0212338:	62 73 7a             	bound  %esi,0x7a(%ebx)
c021233b:	3a 28                	cmp    (%eax),%ch
c021233d:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212340:	29 2c 39             	sub    %ebp,(%ecx,%edi,1)
c0212343:	36                   	ss
c0212344:	2c 33                	sub    $0x33,%al
c0212346:	32 3b                	xor    (%ebx),%bh
c0212348:	3b 00                	cmp    (%eax),%eax
c021234a:	65                   	gs
c021234b:	6c                   	insb   (%dx),%es:(%edi)
c021234c:	66 5f                	pop    %di
c021234e:	74 3a                	je     c021238a <interrupt_handlers+0x6b2a>
c0212350:	74 28                	je     c021237a <interrupt_handlers+0x6b1a>
c0212352:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212355:	33 29                	xor    (%ecx),%ebp
c0212357:	3d 28 32 2c 39       	cmp    $0x392c3228,%eax
c021235c:	29 00                	sub    %eax,(%eax)
c021235e:	69 6e 69 74 5f 64 65 	imul   $0x65645f74,0x69(%esi),%ebp
c0212365:	62 75 67             	bound  %esi,0x67(%ebp)
c0212368:	3a 46 28             	cmp    0x28(%esi),%al
c021236b:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021236e:	38 29                	cmp    %ch,(%ecx)
c0212370:	00 70 72             	add    %dh,0x72(%eax)
c0212373:	69 6e 74 5f 63 75 72 	imul   $0x7275635f,0x74(%esi),%ebp
c021237a:	5f                   	pop    %edi
c021237b:	73 74                	jae    c02123f1 <interrupt_handlers+0x6b91>
c021237d:	61                   	popa   
c021237e:	74 75                	je     c02123f5 <interrupt_handlers+0x6b95>
c0212380:	73 3a                	jae    c02123bc <interrupt_handlers+0x6b5c>
c0212382:	46                   	inc    %esi
c0212383:	28 30                	sub    %dh,(%eax)
c0212385:	2c 31                	sub    $0x31,%al
c0212387:	38 29                	cmp    %ch,(%ecx)
c0212389:	00 72 6f             	add    %dh,0x6f(%edx)
c021238c:	75 6e                	jne    c02123fc <interrupt_handlers+0x6b9c>
c021238e:	64 3a 56 28          	cmp    %fs:0x28(%esi),%dl
c0212392:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212395:	29 00                	sub    %eax,(%eax)
c0212397:	72 65                	jb     c02123fe <interrupt_handlers+0x6b9e>
c0212399:	67 31 3a             	xor    %edi,(%bp,%si)
c021239c:	28 33                	sub    %dh,(%ebx)
c021239e:	2c 33                	sub    $0x33,%al
c02123a0:	29 00                	sub    %eax,(%eax)
c02123a2:	72 65                	jb     c0212409 <interrupt_handlers+0x6ba9>
c02123a4:	67 32 3a             	xor    (%bp,%si),%bh
c02123a7:	28 33                	sub    %dh,(%ebx)
c02123a9:	2c 33                	sub    $0x33,%al
c02123ab:	29 00                	sub    %eax,(%eax)
c02123ad:	72 65                	jb     c0212414 <interrupt_handlers+0x6bb4>
c02123af:	67 33 3a             	xor    (%bp,%si),%edi
c02123b2:	28 33                	sub    %dh,(%ebx)
c02123b4:	2c 33                	sub    $0x33,%al
c02123b6:	29 00                	sub    %eax,(%eax)
c02123b8:	72 65                	jb     c021241f <interrupt_handlers+0x6bbf>
c02123ba:	67 34 3a             	addr16 xor $0x3a,%al
c02123bd:	28 33                	sub    %dh,(%ebx)
c02123bf:	2c 33                	sub    $0x33,%al
c02123c1:	29 00                	sub    %eax,(%eax)
c02123c3:	70 61                	jo     c0212426 <interrupt_handlers+0x6bc6>
c02123c5:	6e                   	outsb  %ds:(%esi),(%dx)
c02123c6:	69 63 3a 46 28 30 2c 	imul   $0x2c302846,0x3a(%ebx),%esp
c02123cd:	31 38                	xor    %edi,(%eax)
c02123cf:	29 00                	sub    %eax,(%eax)
c02123d1:	6d                   	insl   (%dx),%es:(%edi)
c02123d2:	73 67                	jae    c021243b <interrupt_handlers+0x6bdb>
c02123d4:	3a 70 28             	cmp    0x28(%eax),%dh
c02123d7:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c02123da:	31 29                	xor    %ebp,(%ecx)
c02123dc:	00 70 72             	add    %dh,0x72(%eax)
c02123df:	69 6e 74 5f 73 74 61 	imul   $0x6174735f,0x74(%esi),%ebp
c02123e6:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
c02123e9:	74 72                	je     c021245d <interrupt_handlers+0x6bfd>
c02123eb:	61                   	popa   
c02123ec:	63 65 3a             	arpl   %sp,0x3a(%ebp)
c02123ef:	66                   	data16
c02123f0:	28 30                	sub    %dh,(%eax)
c02123f2:	2c 31                	sub    $0x31,%al
c02123f4:	38 29                	cmp    %ch,(%ecx)
c02123f6:	00 65 62             	add    %ah,0x62(%ebp)
c02123f9:	70 3a                	jo     c0212435 <interrupt_handlers+0x6bd5>
c02123fb:	28 30                	sub    %dh,(%eax)
c02123fd:	2c 31                	sub    $0x31,%al
c02123ff:	39 29                	cmp    %ebp,(%ecx)
c0212401:	3d 2a 28 33 2c       	cmp    $0x2c33282a,%eax
c0212406:	31 29                	xor    %ebp,(%ecx)
c0212408:	00 65 69             	add    %ah,0x69(%ebp)
c021240b:	70 3a                	jo     c0212447 <interrupt_handlers+0x6be7>
c021240d:	28 30                	sub    %dh,(%eax)
c021240f:	2c 31                	sub    $0x31,%al
c0212411:	39 29                	cmp    %ebp,(%ecx)
c0212413:	00 6b 65             	add    %ch,0x65(%ebx)
c0212416:	72 6e                	jb     c0212486 <interrupt_handlers+0x6c26>
c0212418:	65                   	gs
c0212419:	6c                   	insb   (%dx),%es:(%edi)
c021241a:	5f                   	pop    %edi
c021241b:	65                   	gs
c021241c:	6c                   	insb   (%dx),%es:(%edi)
c021241d:	66                   	data16
c021241e:	3a 53 28             	cmp    0x28(%ebx),%dl
c0212421:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212424:	33 29                	xor    (%ecx),%ebp
c0212426:	00 65 6c             	add    %ah,0x6c(%ebp)
c0212429:	66                   	data16
c021242a:	2f                   	das    
c021242b:	65                   	gs
c021242c:	6c                   	insb   (%dx),%es:(%edi)
c021242d:	66                   	data16
c021242e:	2e 63 00             	arpl   %ax,%cs:(%eax)
c0212431:	65                   	gs
c0212432:	6c                   	insb   (%dx),%es:(%edi)
c0212433:	66 5f                	pop    %di
c0212435:	66 6f                	outsw  %ds:(%esi),(%dx)
c0212437:	72 6d                	jb     c02124a6 <interrupt_handlers+0x6c46>
c0212439:	5f                   	pop    %edi
c021243a:	6d                   	insl   (%dx),%es:(%edi)
c021243b:	75 6c                	jne    c02124a9 <interrupt_handlers+0x6c49>
c021243d:	74 69                	je     c02124a8 <interrupt_handlers+0x6c48>
c021243f:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c0212442:	74 3a                	je     c021247e <interrupt_handlers+0x6c1e>
c0212444:	46                   	inc    %esi
c0212445:	28 31                	sub    %dh,(%ecx)
c0212447:	2c 31                	sub    $0x31,%al
c0212449:	33 29                	xor    (%ecx),%ebp
c021244b:	00 6d 62             	add    %ch,0x62(%ebp)
c021244e:	3a 70 28             	cmp    0x28(%eax),%dh
c0212451:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212454:	39 29                	cmp    %ebp,(%ecx)
c0212456:	3d 2a 28 33 2c       	cmp    $0x2c33282a,%eax
c021245b:	32 29                	xor    (%ecx),%ch
c021245d:	00 65 6c             	add    %ah,0x6c(%ebp)
c0212460:	66                   	data16
c0212461:	3a 28                	cmp    (%eax),%ch
c0212463:	31 2c 31             	xor    %ebp,(%ecx,%esi,1)
c0212466:	33 29                	xor    (%ecx),%ebp
c0212468:	00 73 68             	add    %dh,0x68(%ebx)
c021246b:	3a 28                	cmp    (%eax),%ch
c021246d:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0212470:	30 29                	xor    %ch,(%ecx)
c0212472:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c0212477:	35 29 00 73 68       	xor    $0x68730029,%eax
c021247c:	73 74                	jae    c02124f2 <interrupt_handlers+0x6c92>
c021247e:	72 74                	jb     c02124f4 <interrupt_handlers+0x6c94>
c0212480:	61                   	popa   
c0212481:	62 3a                	bound  %edi,(%edx)
c0212483:	28 32                	sub    %dh,(%edx)
c0212485:	2c 31                	sub    $0x31,%al
c0212487:	29 00                	sub    %eax,(%eax)
c0212489:	6e                   	outsb  %ds:(%esi),(%dx)
c021248a:	61                   	popa   
c021248b:	6d                   	insl   (%dx),%es:(%edi)
c021248c:	65 3a 28             	cmp    %gs:(%eax),%ch
c021248f:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0212492:	31 29                	xor    %ebp,(%ecx)
c0212494:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c0212499:	32 32                	xor    (%edx),%dh
c021249b:	29 3d 6b 28 32 2c    	sub    %edi,0x2c32286b
c02124a1:	36 29 00             	sub    %eax,%ss:(%eax)
c02124a4:	65                   	gs
c02124a5:	6c                   	insb   (%dx),%es:(%edi)
c02124a6:	66 5f                	pop    %di
c02124a8:	6c                   	insb   (%dx),%es:(%edi)
c02124a9:	6f                   	outsl  %ds:(%esi),(%dx)
c02124aa:	6f                   	outsl  %ds:(%esi),(%dx)
c02124ab:	6b 5f 73 79          	imul   $0x79,0x73(%edi),%ebx
c02124af:	6d                   	insl   (%dx),%es:(%edi)
c02124b0:	62 6f 6c             	bound  %ebp,0x6c(%edi)
c02124b3:	3a 46 28             	cmp    0x28(%esi),%al
c02124b6:	31 2c 31             	xor    %ebp,(%ecx,%esi,1)
c02124b9:	31 29                	xor    %ebp,(%ecx)
c02124bb:	00 61 64             	add    %ah,0x64(%ecx)
c02124be:	64                   	fs
c02124bf:	72 3a                	jb     c02124fb <interrupt_handlers+0x6c9b>
c02124c1:	70 28                	jo     c02124eb <interrupt_handlers+0x6c8b>
c02124c3:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c02124c6:	29 00                	sub    %eax,(%eax)
c02124c8:	65                   	gs
c02124c9:	6c                   	insb   (%dx),%es:(%edi)
c02124ca:	66                   	data16
c02124cb:	3a 70 28             	cmp    0x28(%eax),%dh
c02124ce:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c02124d1:	33 29                	xor    (%ecx),%ebp
c02124d3:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c02124d8:	31 33                	xor    %esi,(%ebx)
c02124da:	29 00                	sub    %eax,(%eax)
c02124dc:	67                   	addr16
c02124dd:	64                   	fs
c02124de:	74 2f                	je     c021250f <interrupt_handlers+0x6caf>
c02124e0:	67                   	addr16
c02124e1:	64                   	fs
c02124e2:	74 2e                	je     c0212512 <interrupt_handlers+0x6cb2>
c02124e4:	63 00                	arpl   %ax,(%eax)
c02124e6:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c02124ed:	2f                   	das    
c02124ee:	67                   	addr16
c02124ef:	64                   	fs
c02124f0:	74 2e                	je     c0212520 <interrupt_handlers+0x6cc0>
c02124f2:	68 00 67 64 74       	push   $0x74646700
c02124f7:	5f                   	pop    %edi
c02124f8:	74 3a                	je     c0212534 <interrupt_handlers+0x6cd4>
c02124fa:	54                   	push   %esp
c02124fb:	28 31                	sub    %dh,(%ecx)
c02124fd:	2c 31                	sub    $0x31,%al
c02124ff:	29 3d 73 38 6c 69    	sub    %edi,0x696c3873
c0212505:	6d                   	insl   (%dx),%es:(%edi)
c0212506:	69 74 5f 6c 6f 77 3a 	imul   $0x283a776f,0x6c(%edi,%ebx,2),%esi
c021250d:	28 
c021250e:	32 2c 33             	xor    (%ebx,%esi,1),%ch
c0212511:	29 2c 30             	sub    %ebp,(%eax,%esi,1)
c0212514:	2c 31                	sub    $0x31,%al
c0212516:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c021251a:	73 65                	jae    c0212581 <interrupt_handlers+0x6d21>
c021251c:	5f                   	pop    %edi
c021251d:	6c                   	insb   (%dx),%es:(%edi)
c021251e:	6f                   	outsl  %ds:(%esi),(%dx)
c021251f:	77 3a                	ja     c021255b <interrupt_handlers+0x6cfb>
c0212521:	28 32                	sub    %dh,(%edx)
c0212523:	2c 33                	sub    $0x33,%al
c0212525:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c0212528:	36                   	ss
c0212529:	2c 31                	sub    $0x31,%al
c021252b:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c021252f:	73 65                	jae    c0212596 <interrupt_handlers+0x6d36>
c0212531:	5f                   	pop    %edi
c0212532:	6d                   	insl   (%dx),%es:(%edi)
c0212533:	69 64 64 6c 65 3a 28 	imul   $0x32283a65,0x6c(%esp,%eiz,2),%esp
c021253a:	32 
c021253b:	2c 35                	sub    $0x35,%al
c021253d:	29 2c 33             	sub    %ebp,(%ebx,%esi,1)
c0212540:	32 2c 38             	xor    (%eax,%edi,1),%ch
c0212543:	3b 61 63             	cmp    0x63(%ecx),%esp
c0212546:	63 65 73             	arpl   %sp,0x73(%ebp)
c0212549:	73 3a                	jae    c0212585 <interrupt_handlers+0x6d25>
c021254b:	28 32                	sub    %dh,(%edx)
c021254d:	2c 35                	sub    $0x35,%al
c021254f:	29 2c 34             	sub    %ebp,(%esp,%esi,1)
c0212552:	30 2c 38             	xor    %ch,(%eax,%edi,1)
c0212555:	3b 67 72             	cmp    0x72(%edi),%esp
c0212558:	61                   	popa   
c0212559:	6e                   	outsb  %ds:(%esi),(%dx)
c021255a:	75 6c                	jne    c02125c8 <interrupt_handlers+0x6d68>
c021255c:	61                   	popa   
c021255d:	72 69                	jb     c02125c8 <interrupt_handlers+0x6d68>
c021255f:	74 79                	je     c02125da <interrupt_handlers+0x6d7a>
c0212561:	3a 28                	cmp    (%eax),%ch
c0212563:	32 2c 35 29 2c 34 38 	xor    0x38342c29(,%esi,1),%ch
c021256a:	2c 38                	sub    $0x38,%al
c021256c:	3b 62 61             	cmp    0x61(%edx),%esp
c021256f:	73 65                	jae    c02125d6 <interrupt_handlers+0x6d76>
c0212571:	5f                   	pop    %edi
c0212572:	68 69 67 68 3a       	push   $0x3a686769
c0212577:	28 32                	sub    %dh,(%edx)
c0212579:	2c 35                	sub    $0x35,%al
c021257b:	29 2c 35 36 2c 38 3b 	sub    %ebp,0x3b382c36(,%esi,1)
c0212582:	3b 00                	cmp    (%eax),%eax
c0212584:	67                   	addr16
c0212585:	64                   	fs
c0212586:	74 5f                	je     c02125e7 <interrupt_handlers+0x6d87>
c0212588:	65 6e                	outsb  %gs:(%esi),(%dx)
c021258a:	74 72                	je     c02125fe <interrupt_handlers+0x6d9e>
c021258c:	79 5f                	jns    c02125ed <interrupt_handlers+0x6d8d>
c021258e:	74 3a                	je     c02125ca <interrupt_handlers+0x6d6a>
c0212590:	74 28                	je     c02125ba <interrupt_handlers+0x6d5a>
c0212592:	31 2c 32             	xor    %ebp,(%edx,%esi,1)
c0212595:	29 3d 28 31 2c 31    	sub    %edi,0x312c3128
c021259b:	29 00                	sub    %eax,(%eax)
c021259d:	67                   	addr16
c021259e:	64                   	fs
c021259f:	74 5f                	je     c0212600 <interrupt_handlers+0x6da0>
c02125a1:	70 74                	jo     c0212617 <interrupt_handlers+0x6db7>
c02125a3:	72 5f                	jb     c0212604 <interrupt_handlers+0x6da4>
c02125a5:	74 3a                	je     c02125e1 <interrupt_handlers+0x6d81>
c02125a7:	54                   	push   %esp
c02125a8:	28 31                	sub    %dh,(%ecx)
c02125aa:	2c 33                	sub    $0x33,%al
c02125ac:	29 3d 73 36 6c 69    	sub    %edi,0x696c3673
c02125b2:	6d                   	insl   (%dx),%es:(%edi)
c02125b3:	69 74 3a 28 32 2c 33 	imul   $0x29332c32,0x28(%edx,%edi,1),%esi
c02125ba:	29 
c02125bb:	2c 30                	sub    $0x30,%al
c02125bd:	2c 31                	sub    $0x31,%al
c02125bf:	36 3b 62 61          	cmp    %ss:0x61(%edx),%esp
c02125c3:	73 65                	jae    c021262a <interrupt_handlers+0x6dca>
c02125c5:	3a 28                	cmp    (%eax),%ch
c02125c7:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c02125ca:	29 2c 31             	sub    %ebp,(%ecx,%esi,1)
c02125cd:	36                   	ss
c02125ce:	2c 33                	sub    $0x33,%al
c02125d0:	32 3b                	xor    (%ebx),%bh
c02125d2:	3b 00                	cmp    (%eax),%eax
c02125d4:	67                   	addr16
c02125d5:	64                   	fs
c02125d6:	74 5f                	je     c0212637 <interrupt_handlers+0x6dd7>
c02125d8:	70 74                	jo     c021264e <interrupt_handlers+0x6dee>
c02125da:	72 5f                	jb     c021263b <interrupt_handlers+0x6ddb>
c02125dc:	74 3a                	je     c0212618 <interrupt_handlers+0x6db8>
c02125de:	74 28                	je     c0212608 <interrupt_handlers+0x6da8>
c02125e0:	31 2c 34             	xor    %ebp,(%esp,%esi,1)
c02125e3:	29 3d 28 31 2c 33    	sub    %edi,0x332c3128
c02125e9:	29 00                	sub    %eax,(%eax)
c02125eb:	69 6e 69 74 5f 67 64 	imul   $0x64675f74,0x69(%esi),%ebp
c02125f2:	74 3a                	je     c021262e <interrupt_handlers+0x6dce>
c02125f4:	46                   	inc    %esi
c02125f5:	28 30                	sub    %dh,(%eax)
c02125f7:	2c 31                	sub    $0x31,%al
c02125f9:	38 29                	cmp    %ch,(%ecx)
c02125fb:	00 67 64             	add    %ah,0x64(%edi)
c02125fe:	74 5f                	je     c021265f <interrupt_handlers+0x6dff>
c0212600:	73 65                	jae    c0212667 <interrupt_handlers+0x6e07>
c0212602:	74 5f                	je     c0212663 <interrupt_handlers+0x6e03>
c0212604:	67 61                	addr16 popa 
c0212606:	74 65                	je     c021266d <interrupt_handlers+0x6e0d>
c0212608:	3a 66 28             	cmp    0x28(%esi),%ah
c021260b:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021260e:	38 29                	cmp    %ch,(%ecx)
c0212610:	00 6e 75             	add    %ch,0x75(%esi)
c0212613:	6d                   	insl   (%dx),%es:(%edi)
c0212614:	3a 70 28             	cmp    0x28(%eax),%dh
c0212617:	32 2c 32             	xor    (%edx,%esi,1),%ch
c021261a:	29 00                	sub    %eax,(%eax)
c021261c:	62 61 73             	bound  %esp,0x73(%ecx)
c021261f:	65 3a 70 28          	cmp    %gs:0x28(%eax),%dh
c0212623:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212626:	29 00                	sub    %eax,(%eax)
c0212628:	6c                   	insb   (%dx),%es:(%edi)
c0212629:	69 6d 69 74 3a 70 28 	imul   $0x28703a74,0x69(%ebp),%ebp
c0212630:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212633:	29 00                	sub    %eax,(%eax)
c0212635:	61                   	popa   
c0212636:	63 63 65             	arpl   %sp,0x65(%ebx)
c0212639:	73 73                	jae    c02126ae <interrupt_handlers+0x6e4e>
c021263b:	3a 70 28             	cmp    0x28(%eax),%dh
c021263e:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212641:	29 00                	sub    %eax,(%eax)
c0212643:	67 72 61             	addr16 jb c02126a7 <interrupt_handlers+0x6e47>
c0212646:	6e                   	outsb  %ds:(%esi),(%dx)
c0212647:	3a 70 28             	cmp    0x28(%eax),%dh
c021264a:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021264d:	29 00                	sub    %eax,(%eax)
c021264f:	61                   	popa   
c0212650:	63 63 65             	arpl   %sp,0x65(%ebx)
c0212653:	73 73                	jae    c02126c8 <interrupt_handlers+0x6e68>
c0212655:	3a 28                	cmp    (%eax),%ch
c0212657:	32 2c 35 29 00 67 72 	xor    0x72670029(,%esi,1),%ch
c021265e:	61                   	popa   
c021265f:	6e                   	outsb  %ds:(%esi),(%dx)
c0212660:	3a 28                	cmp    (%eax),%ch
c0212662:	32 2c 35 29 00 67 64 	xor    0x64670029(,%esi,1),%ch
c0212669:	74 5f                	je     c02126ca <interrupt_handlers+0x6e6a>
c021266b:	65 6e                	outsb  %gs:(%esi),(%dx)
c021266d:	74 72                	je     c02126e1 <interrupt_handlers+0x6e81>
c021266f:	69 65 73 3a 47 28 30 	imul   $0x3028473a,0x73(%ebp),%esp
c0212676:	2c 31                	sub    $0x31,%al
c0212678:	39 29                	cmp    %ebp,(%ecx)
c021267a:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c021267f:	2c 32                	sub    $0x32,%al
c0212681:	30 29                	xor    %ch,(%ecx)
c0212683:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c0212688:	32 30                	xor    (%eax),%dh
c021268a:	29 3b                	sub    %edi,(%ebx)
c021268c:	30 3b                	xor    %bh,(%ebx)
c021268e:	30 33                	xor    %dh,(%ebx)
c0212690:	37                   	aaa    
c0212691:	37                   	aaa    
c0212692:	37                   	aaa    
c0212693:	37                   	aaa    
c0212694:	37                   	aaa    
c0212695:	37                   	aaa    
c0212696:	37                   	aaa    
c0212697:	37                   	aaa    
c0212698:	37                   	aaa    
c0212699:	37                   	aaa    
c021269a:	3b 3b                	cmp    (%ebx),%edi
c021269c:	30 3b                	xor    %bh,(%ebx)
c021269e:	34 3b                	xor    $0x3b,%al
c02126a0:	28 31                	sub    %dh,(%ecx)
c02126a2:	2c 32                	sub    $0x32,%al
c02126a4:	29 00                	sub    %eax,(%eax)
c02126a6:	67                   	addr16
c02126a7:	64                   	fs
c02126a8:	74 5f                	je     c0212709 <interrupt_handlers+0x6ea9>
c02126aa:	70 74                	jo     c0212720 <interrupt_handlers+0x6ec0>
c02126ac:	72 3a                	jb     c02126e8 <interrupt_handlers+0x6e88>
c02126ae:	47                   	inc    %edi
c02126af:	28 31                	sub    %dh,(%ecx)
c02126b1:	2c 34                	sub    $0x34,%al
c02126b3:	29 00                	sub    %eax,(%eax)
c02126b5:	6d                   	insl   (%dx),%es:(%edi)
c02126b6:	6d                   	insl   (%dx),%es:(%edi)
c02126b7:	2f                   	das    
c02126b8:	76 6d                	jbe    c0212727 <interrupt_handlers+0x6ec7>
c02126ba:	6d                   	insl   (%dx),%es:(%edi)
c02126bb:	2e 63 00             	arpl   %ax,%cs:(%eax)
c02126be:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c02126c5:	2f                   	das    
c02126c6:	70 6d                	jo     c0212735 <interrupt_handlers+0x6ed5>
c02126c8:	6d                   	insl   (%dx),%es:(%edi)
c02126c9:	2e                   	cs
c02126ca:	68 00 69 6e 69       	push   $0x696e6900
c02126cf:	74 5f                	je     c0212730 <interrupt_handlers+0x6ed0>
c02126d1:	76 6d                	jbe    c0212740 <interrupt_handlers+0x6ee0>
c02126d3:	6d                   	insl   (%dx),%es:(%edi)
c02126d4:	3a 46 28             	cmp    0x28(%esi),%al
c02126d7:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02126da:	38 29                	cmp    %ch,(%ecx)
c02126dc:	00 6b 65             	add    %ch,0x65(%ebx)
c02126df:	72 6e                	jb     c021274f <interrupt_handlers+0x6eef>
c02126e1:	65                   	gs
c02126e2:	6c                   	insb   (%dx),%es:(%edi)
c02126e3:	5f                   	pop    %edi
c02126e4:	70 74                	jo     c021275a <interrupt_handlers+0x6efa>
c02126e6:	65                   	gs
c02126e7:	5f                   	pop    %edi
c02126e8:	66 69 72 73 74 5f    	imul   $0x5f74,0x73(%edx),%si
c02126ee:	69 64 78 3a 28 32 2c 	imul   $0x312c3228,0x3a(%eax,%edi,2),%esp
c02126f5:	31 
c02126f6:	29 00                	sub    %eax,(%eax)
c02126f8:	69 3a 28 32 2c 31    	imul   $0x312c3228,(%edx),%edi
c02126fe:	29 00                	sub    %eax,(%eax)
c0212700:	6a 3a                	push   $0x3a
c0212702:	28 32                	sub    %dh,(%edx)
c0212704:	2c 31                	sub    $0x31,%al
c0212706:	29 00                	sub    %eax,(%eax)
c0212708:	70 74                	jo     c021277e <interrupt_handlers+0x6f1e>
c021270a:	65 3a 28             	cmp    %gs:(%eax),%ch
c021270d:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212710:	39 29                	cmp    %ebp,(%ecx)
c0212712:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c0212717:	31 29                	xor    %ebp,(%ecx)
c0212719:	00 70 67             	add    %dh,0x67(%eax)
c021271c:	64                   	fs
c021271d:	5f                   	pop    %edi
c021271e:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0212722:	65                   	gs
c0212723:	6c                   	insb   (%dx),%es:(%edi)
c0212724:	5f                   	pop    %edi
c0212725:	70 68                	jo     c021278f <interrupt_handlers+0x6f2f>
c0212727:	79 5f                	jns    c0212788 <interrupt_handlers+0x6f28>
c0212729:	61                   	popa   
c021272a:	64                   	fs
c021272b:	64                   	fs
c021272c:	72 3a                	jb     c0212768 <interrupt_handlers+0x6f08>
c021272e:	28 32                	sub    %dh,(%edx)
c0212730:	2c 31                	sub    $0x31,%al
c0212732:	29 00                	sub    %eax,(%eax)
c0212734:	73 77                	jae    c02127ad <interrupt_handlers+0x6f4d>
c0212736:	69 74 63 68 5f 70 67 	imul   $0x6467705f,0x68(%ebx,%eiz,2),%esi
c021273d:	64 
c021273e:	3a 46 28             	cmp    0x28(%esi),%al
c0212741:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212744:	38 29                	cmp    %ch,(%ecx)
c0212746:	00 70 64             	add    %dh,0x64(%eax)
c0212749:	3a 70 28             	cmp    0x28(%eax),%dh
c021274c:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c021274f:	29 00                	sub    %eax,(%eax)
c0212751:	6d                   	insl   (%dx),%es:(%edi)
c0212752:	61                   	popa   
c0212753:	70 3a                	jo     c021278f <interrupt_handlers+0x6f2f>
c0212755:	46                   	inc    %esi
c0212756:	28 30                	sub    %dh,(%eax)
c0212758:	2c 31                	sub    $0x31,%al
c021275a:	38 29                	cmp    %ch,(%ecx)
c021275c:	00 70 67             	add    %dh,0x67(%eax)
c021275f:	64                   	fs
c0212760:	5f                   	pop    %edi
c0212761:	6e                   	outsb  %ds:(%esi),(%dx)
c0212762:	6f                   	outsl  %ds:(%esi),(%dx)
c0212763:	77 3a                	ja     c021279f <interrupt_handlers+0x6f3f>
c0212765:	70 28                	jo     c021278f <interrupt_handlers+0x6f2f>
c0212767:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c021276a:	30 29                	xor    %ch,(%ecx)
c021276c:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c0212771:	31 29                	xor    %ebp,(%ecx)
c0212773:	00 76 61             	add    %dh,0x61(%esi)
c0212776:	3a 70 28             	cmp    0x28(%eax),%dh
c0212779:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c021277c:	29 00                	sub    %eax,(%eax)
c021277e:	70 61                	jo     c02127e1 <interrupt_handlers+0x6f81>
c0212780:	3a 70 28             	cmp    0x28(%eax),%dh
c0212783:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212786:	29 00                	sub    %eax,(%eax)
c0212788:	66                   	data16
c0212789:	6c                   	insb   (%dx),%es:(%edi)
c021278a:	61                   	popa   
c021278b:	67 73 3a             	addr16 jae c02127c8 <interrupt_handlers+0x6f68>
c021278e:	70 28                	jo     c02127b8 <interrupt_handlers+0x6f58>
c0212790:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212793:	29 00                	sub    %eax,(%eax)
c0212795:	70 67                	jo     c02127fe <interrupt_handlers+0x6f9e>
c0212797:	64                   	fs
c0212798:	5f                   	pop    %edi
c0212799:	69 64 78 3a 28 32 2c 	imul   $0x312c3228,0x3a(%eax,%edi,2),%esp
c02127a0:	31 
c02127a1:	29 00                	sub    %eax,(%eax)
c02127a3:	70 74                	jo     c0212819 <interrupt_handlers+0x6fb9>
c02127a5:	65                   	gs
c02127a6:	5f                   	pop    %edi
c02127a7:	69 64 78 3a 28 32 2c 	imul   $0x312c3228,0x3a(%eax,%edi,2),%esp
c02127ae:	31 
c02127af:	29 00                	sub    %eax,(%eax)
c02127b1:	70 74                	jo     c0212827 <interrupt_handlers+0x6fc7>
c02127b3:	65 3a 28             	cmp    %gs:(%eax),%ch
c02127b6:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c02127b9:	31 29                	xor    %ebp,(%ecx)
c02127bb:	3d 2a 28 31 2c       	cmp    $0x2c31282a,%eax
c02127c0:	32 29                	xor    (%ecx),%ch
c02127c2:	00 75 6e             	add    %dh,0x6e(%ebp)
c02127c5:	6d                   	insl   (%dx),%es:(%edi)
c02127c6:	61                   	popa   
c02127c7:	70 3a                	jo     c0212803 <interrupt_handlers+0x6fa3>
c02127c9:	46                   	inc    %esi
c02127ca:	28 30                	sub    %dh,(%eax)
c02127cc:	2c 31                	sub    $0x31,%al
c02127ce:	38 29                	cmp    %ch,(%ecx)
c02127d0:	00 70 67             	add    %dh,0x67(%eax)
c02127d3:	64                   	fs
c02127d4:	5f                   	pop    %edi
c02127d5:	6e                   	outsb  %ds:(%esi),(%dx)
c02127d6:	6f                   	outsl  %ds:(%esi),(%dx)
c02127d7:	77 3a                	ja     c0212813 <interrupt_handlers+0x6fb3>
c02127d9:	70 28                	jo     c0212803 <interrupt_handlers+0x6fa3>
c02127db:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c02127de:	30 29                	xor    %ch,(%ecx)
c02127e0:	00 70 74             	add    %dh,0x74(%eax)
c02127e3:	65 3a 28             	cmp    %gs:(%eax),%ch
c02127e6:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c02127e9:	31 29                	xor    %ebp,(%ecx)
c02127eb:	00 67 65             	add    %ah,0x65(%edi)
c02127ee:	74 5f                	je     c021284f <interrupt_handlers+0x6fef>
c02127f0:	6d                   	insl   (%dx),%es:(%edi)
c02127f1:	61                   	popa   
c02127f2:	70 70                	jo     c0212864 <interrupt_handlers+0x7004>
c02127f4:	69 6e 67 3a 46 28 32 	imul   $0x3228463a,0x67(%esi),%ebp
c02127fb:	2c 31                	sub    $0x31,%al
c02127fd:	29 00                	sub    %eax,(%eax)
c02127ff:	70 61                	jo     c0212862 <interrupt_handlers+0x7002>
c0212801:	3a 70 28             	cmp    0x28(%eax),%dh
c0212804:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212807:	39 29                	cmp    %ebp,(%ecx)
c0212809:	00 70 74             	add    %dh,0x74(%eax)
c021280c:	65                   	gs
c021280d:	5f                   	pop    %edi
c021280e:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0212812:	65                   	gs
c0212813:	6c                   	insb   (%dx),%es:(%edi)
c0212814:	3a 53 28             	cmp    0x28(%ebx),%dl
c0212817:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c021281a:	32 29                	xor    (%ecx),%ch
c021281c:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c0212821:	2c 32                	sub    $0x32,%al
c0212823:	33 29                	xor    (%ecx),%ebp
c0212825:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c021282a:	32 33                	xor    (%ebx),%dh
c021282c:	29 3b                	sub    %edi,(%ebx)
c021282e:	30 3b                	xor    %bh,(%ebx)
c0212830:	30 33                	xor    %dh,(%ebx)
c0212832:	37                   	aaa    
c0212833:	37                   	aaa    
c0212834:	37                   	aaa    
c0212835:	37                   	aaa    
c0212836:	37                   	aaa    
c0212837:	37                   	aaa    
c0212838:	37                   	aaa    
c0212839:	37                   	aaa    
c021283a:	37                   	aaa    
c021283b:	37                   	aaa    
c021283c:	3b 3b                	cmp    (%ebx),%edi
c021283e:	30 3b                	xor    %bh,(%ebx)
c0212840:	31 32                	xor    %esi,(%edx)
c0212842:	37                   	aaa    
c0212843:	3b 28                	cmp    (%eax),%ebp
c0212845:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0212848:	34 29                	xor    $0x29,%al
c021284a:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c021284f:	2c 32                	sub    $0x32,%al
c0212851:	33 29                	xor    (%ecx),%ebp
c0212853:	3b 30                	cmp    (%eax),%esi
c0212855:	3b 31                	cmp    (%ecx),%esi
c0212857:	30 32                	xor    %dh,(%edx)
c0212859:	33 3b                	xor    (%ebx),%edi
c021285b:	28 31                	sub    %dh,(%ecx)
c021285d:	2c 32                	sub    $0x32,%al
c021285f:	29 00                	sub    %eax,(%eax)
c0212861:	70 67                	jo     c02128ca <interrupt_handlers+0x706a>
c0212863:	64                   	fs
c0212864:	5f                   	pop    %edi
c0212865:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0212869:	65                   	gs
c021286a:	6c                   	insb   (%dx),%es:(%edi)
c021286b:	3a 47 28             	cmp    0x28(%edi),%al
c021286e:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0212871:	35 29 3d 61 72       	xor    $0x72613d29,%eax
c0212876:	28 30                	sub    %dh,(%eax)
c0212878:	2c 32                	sub    $0x32,%al
c021287a:	33 29                	xor    (%ecx),%ebp
c021287c:	3b 30                	cmp    (%eax),%esi
c021287e:	3b 31                	cmp    (%ecx),%esi
c0212880:	30 32                	xor    %dh,(%edx)
c0212882:	33 3b                	xor    (%ebx),%edi
c0212884:	28 31                	sub    %dh,(%ecx)
c0212886:	2c 31                	sub    $0x31,%al
c0212888:	29 00                	sub    %eax,(%eax)
c021288a:	6d                   	insl   (%dx),%es:(%edi)
c021288b:	6d                   	insl   (%dx),%es:(%edi)
c021288c:	2f                   	das    
c021288d:	70 61                	jo     c02128f0 <interrupt_handlers+0x7090>
c021288f:	67                   	addr16
c0212890:	65                   	gs
c0212891:	5f                   	pop    %edi
c0212892:	66 61                	popaw  
c0212894:	75 6c                	jne    c0212902 <interrupt_handlers+0x70a2>
c0212896:	74 2e                	je     c02128c6 <interrupt_handlers+0x7066>
c0212898:	63 00                	arpl   %ax,(%eax)
c021289a:	70 61                	jo     c02128fd <interrupt_handlers+0x709d>
c021289c:	67                   	addr16
c021289d:	65                   	gs
c021289e:	5f                   	pop    %edi
c021289f:	66 61                	popaw  
c02128a1:	75 6c                	jne    c021290f <interrupt_handlers+0x70af>
c02128a3:	74 3a                	je     c02128df <interrupt_handlers+0x707f>
c02128a5:	46                   	inc    %esi
c02128a6:	28 30                	sub    %dh,(%eax)
c02128a8:	2c 31                	sub    $0x31,%al
c02128aa:	38 29                	cmp    %ch,(%ecx)
c02128ac:	00 72 65             	add    %dh,0x65(%edx)
c02128af:	67 73 3a             	addr16 jae c02128ec <interrupt_handlers+0x708c>
c02128b2:	70 28                	jo     c02128dc <interrupt_handlers+0x707c>
c02128b4:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c02128b7:	39 29                	cmp    %ebp,(%ecx)
c02128b9:	3d 2a 28 33 2c       	cmp    $0x2c33282a,%eax
c02128be:	36 29 00             	sub    %eax,%ss:(%eax)
c02128c1:	63 72 32             	arpl   %si,0x32(%edx)
c02128c4:	3a 28                	cmp    (%eax),%ch
c02128c6:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c02128c9:	29 00                	sub    %eax,(%eax)
c02128cb:	6d                   	insl   (%dx),%es:(%edi)
c02128cc:	6d                   	insl   (%dx),%es:(%edi)
c02128cd:	2f                   	das    
c02128ce:	70 6d                	jo     c021293d <interrupt_handlers+0x70dd>
c02128d0:	6d                   	insl   (%dx),%es:(%edi)
c02128d1:	2e 63 00             	arpl   %ax,%cs:(%eax)
c02128d4:	73 68                	jae    c021293e <interrupt_handlers+0x70de>
c02128d6:	6f                   	outsl  %ds:(%esi),(%dx)
c02128d7:	77 5f                	ja     c0212938 <interrupt_handlers+0x70d8>
c02128d9:	6d                   	insl   (%dx),%es:(%edi)
c02128da:	65                   	gs
c02128db:	6d                   	insl   (%dx),%es:(%edi)
c02128dc:	6f                   	outsl  %ds:(%esi),(%dx)
c02128dd:	72 79                	jb     c0212958 <interrupt_handlers+0x70f8>
c02128df:	5f                   	pop    %edi
c02128e0:	6d                   	insl   (%dx),%es:(%edi)
c02128e1:	61                   	popa   
c02128e2:	70 3a                	jo     c021291e <interrupt_handlers+0x70be>
c02128e4:	46                   	inc    %esi
c02128e5:	28 30                	sub    %dh,(%eax)
c02128e7:	2c 31                	sub    $0x31,%al
c02128e9:	38 29                	cmp    %ch,(%ecx)
c02128eb:	00 6d 6d             	add    %ch,0x6d(%ebp)
c02128ee:	61                   	popa   
c02128ef:	70 5f                	jo     c0212950 <interrupt_handlers+0x70f0>
c02128f1:	61                   	popa   
c02128f2:	64                   	fs
c02128f3:	64                   	fs
c02128f4:	72 3a                	jb     c0212930 <interrupt_handlers+0x70d0>
c02128f6:	28 33                	sub    %dh,(%ebx)
c02128f8:	2c 31                	sub    $0x31,%al
c02128fa:	29 00                	sub    %eax,(%eax)
c02128fc:	6d                   	insl   (%dx),%es:(%edi)
c02128fd:	6d                   	insl   (%dx),%es:(%edi)
c02128fe:	61                   	popa   
c02128ff:	70 5f                	jo     c0212960 <interrupt_handlers+0x7100>
c0212901:	6c                   	insb   (%dx),%es:(%edi)
c0212902:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212904:	67 74 68             	addr16 je c021296f <interrupt_handlers+0x710f>
c0212907:	3a 28                	cmp    (%eax),%ch
c0212909:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c021290c:	29 00                	sub    %eax,(%eax)
c021290e:	6d                   	insl   (%dx),%es:(%edi)
c021290f:	6d                   	insl   (%dx),%es:(%edi)
c0212910:	61                   	popa   
c0212911:	70 3a                	jo     c021294d <interrupt_handlers+0x70ed>
c0212913:	28 30                	sub    %dh,(%eax)
c0212915:	2c 31                	sub    $0x31,%al
c0212917:	39 29                	cmp    %ebp,(%ecx)
c0212919:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c021291e:	33 29                	xor    (%ecx),%ebp
c0212920:	00 70 6d             	add    %dh,0x6d(%eax)
c0212923:	6d                   	insl   (%dx),%es:(%edi)
c0212924:	5f                   	pop    %edi
c0212925:	61                   	popa   
c0212926:	6c                   	insb   (%dx),%es:(%edi)
c0212927:	6c                   	insb   (%dx),%es:(%edi)
c0212928:	6f                   	outsl  %ds:(%esi),(%dx)
c0212929:	63 5f 70             	arpl   %bx,0x70(%edi)
c021292c:	61                   	popa   
c021292d:	67 65 3a 46 28       	cmp    %gs:0x28(%bp),%al
c0212932:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212935:	29 00                	sub    %eax,(%eax)
c0212937:	70 61                	jo     c021299a <interrupt_handlers+0x713a>
c0212939:	67 65 3a 28          	cmp    %gs:(%bx,%si),%ch
c021293d:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c0212940:	29 00                	sub    %eax,(%eax)
c0212942:	70 6d                	jo     c02129b1 <interrupt_handlers+0x7151>
c0212944:	6d                   	insl   (%dx),%es:(%edi)
c0212945:	5f                   	pop    %edi
c0212946:	66                   	data16
c0212947:	72 65                	jb     c02129ae <interrupt_handlers+0x714e>
c0212949:	65                   	gs
c021294a:	5f                   	pop    %edi
c021294b:	70 61                	jo     c02129ae <interrupt_handlers+0x714e>
c021294d:	67 65 3a 46 28       	cmp    %gs:0x28(%bp),%al
c0212952:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212955:	38 29                	cmp    %ch,(%ecx)
c0212957:	00 70 3a             	add    %dh,0x3a(%eax)
c021295a:	70 28                	jo     c0212984 <interrupt_handlers+0x7124>
c021295c:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c021295f:	29 00                	sub    %eax,(%eax)
c0212961:	69 6e 69 74 5f 70 6d 	imul   $0x6d705f74,0x69(%esi),%ebp
c0212968:	6d                   	insl   (%dx),%es:(%edi)
c0212969:	3a 46 28             	cmp    0x28(%esi),%al
c021296c:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c021296f:	38 29                	cmp    %ch,(%ecx)
c0212971:	00 6d 6d             	add    %ch,0x6d(%ebp)
c0212974:	61                   	popa   
c0212975:	70 5f                	jo     c02129d6 <interrupt_handlers+0x7176>
c0212977:	73 74                	jae    c02129ed <interrupt_handlers+0x718d>
c0212979:	61                   	popa   
c021297a:	72 74                	jb     c02129f0 <interrupt_handlers+0x7190>
c021297c:	5f                   	pop    %edi
c021297d:	61                   	popa   
c021297e:	64                   	fs
c021297f:	64                   	fs
c0212980:	72 3a                	jb     c02129bc <interrupt_handlers+0x715c>
c0212982:	28 30                	sub    %dh,(%eax)
c0212984:	2c 31                	sub    $0x31,%al
c0212986:	39 29                	cmp    %ebp,(%ecx)
c0212988:	00 6d 6d             	add    %ch,0x6d(%ebp)
c021298b:	61                   	popa   
c021298c:	70 5f                	jo     c02129ed <interrupt_handlers+0x718d>
c021298e:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212990:	64                   	fs
c0212991:	5f                   	pop    %edi
c0212992:	61                   	popa   
c0212993:	64                   	fs
c0212994:	64                   	fs
c0212995:	72 3a                	jb     c02129d1 <interrupt_handlers+0x7171>
c0212997:	28 30                	sub    %dh,(%eax)
c0212999:	2c 31                	sub    $0x31,%al
c021299b:	39 29                	cmp    %ebp,(%ecx)
c021299d:	00 6d 61             	add    %ch,0x61(%ebp)
c02129a0:	70 5f                	jo     c0212a01 <interrupt_handlers+0x71a1>
c02129a2:	65 6e                	outsb  %gs:(%esi),(%dx)
c02129a4:	74 72                	je     c0212a18 <interrupt_handlers+0x71b8>
c02129a6:	79 3a                	jns    c02129e2 <interrupt_handlers+0x7182>
c02129a8:	28 30                	sub    %dh,(%eax)
c02129aa:	2c 31                	sub    $0x31,%al
c02129ac:	39 29                	cmp    %ebp,(%ecx)
c02129ae:	00 70 61             	add    %dh,0x61(%eax)
c02129b1:	67                   	addr16
c02129b2:	65                   	gs
c02129b3:	5f                   	pop    %edi
c02129b4:	61                   	popa   
c02129b5:	64                   	fs
c02129b6:	64                   	fs
c02129b7:	72 3a                	jb     c02129f3 <interrupt_handlers+0x7193>
c02129b9:	28 33                	sub    %dh,(%ebx)
c02129bb:	2c 31                	sub    $0x31,%al
c02129bd:	29 00                	sub    %eax,(%eax)
c02129bf:	6c                   	insb   (%dx),%es:(%edi)
c02129c0:	65 6e                	outsb  %gs:(%esi),(%dx)
c02129c2:	67 74 68             	addr16 je c0212a2d <interrupt_handlers+0x71cd>
c02129c5:	3a 28                	cmp    (%eax),%ch
c02129c7:	33 2c 31             	xor    (%ecx,%esi,1),%ebp
c02129ca:	29 00                	sub    %eax,(%eax)
c02129cc:	70 6d                	jo     c0212a3b <interrupt_handlers+0x71db>
c02129ce:	6d                   	insl   (%dx),%es:(%edi)
c02129cf:	5f                   	pop    %edi
c02129d0:	73 74                	jae    c0212a46 <interrupt_handlers+0x71e6>
c02129d2:	61                   	popa   
c02129d3:	63 6b 3a             	arpl   %bp,0x3a(%ebx)
c02129d6:	53                   	push   %ebx
c02129d7:	28 30                	sub    %dh,(%eax)
c02129d9:	2c 32                	sub    $0x32,%al
c02129db:	30 29                	xor    %ch,(%ecx)
c02129dd:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c02129e2:	2c 32                	sub    $0x32,%al
c02129e4:	31 29                	xor    %ebp,(%ecx)
c02129e6:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c02129eb:	32 31                	xor    (%ecx),%dh
c02129ed:	29 3b                	sub    %edi,(%ebx)
c02129ef:	30 3b                	xor    %bh,(%ebx)
c02129f1:	30 33                	xor    %dh,(%ebx)
c02129f3:	37                   	aaa    
c02129f4:	37                   	aaa    
c02129f5:	37                   	aaa    
c02129f6:	37                   	aaa    
c02129f7:	37                   	aaa    
c02129f8:	37                   	aaa    
c02129f9:	37                   	aaa    
c02129fa:	37                   	aaa    
c02129fb:	37                   	aaa    
c02129fc:	37                   	aaa    
c02129fd:	3b 3b                	cmp    (%ebx),%edi
c02129ff:	30 3b                	xor    %bh,(%ebx)
c0212a01:	31 33                	xor    %esi,(%ebx)
c0212a03:	31 30                	xor    %esi,(%eax)
c0212a05:	37                   	aaa    
c0212a06:	31 3b                	xor    %edi,(%ebx)
c0212a08:	28 33                	sub    %dh,(%ebx)
c0212a0a:	2c 31                	sub    $0x31,%al
c0212a0c:	29 00                	sub    %eax,(%eax)
c0212a0e:	70 6d                	jo     c0212a7d <interrupt_handlers+0x721d>
c0212a10:	6d                   	insl   (%dx),%es:(%edi)
c0212a11:	5f                   	pop    %edi
c0212a12:	73 74                	jae    c0212a88 <interrupt_handlers+0x7228>
c0212a14:	61                   	popa   
c0212a15:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
c0212a18:	74 6f                	je     c0212a89 <interrupt_handlers+0x7229>
c0212a1a:	70 3a                	jo     c0212a56 <interrupt_handlers+0x71f6>
c0212a1c:	53                   	push   %ebx
c0212a1d:	28 33                	sub    %dh,(%ebx)
c0212a1f:	2c 31                	sub    $0x31,%al
c0212a21:	29 00                	sub    %eax,(%eax)
c0212a23:	70 68                	jo     c0212a8d <interrupt_handlers+0x722d>
c0212a25:	79 5f                	jns    c0212a86 <interrupt_handlers+0x7226>
c0212a27:	70 61                	jo     c0212a8a <interrupt_handlers+0x722a>
c0212a29:	67                   	addr16
c0212a2a:	65                   	gs
c0212a2b:	5f                   	pop    %edi
c0212a2c:	63 6f 75             	arpl   %bp,0x75(%edi)
c0212a2f:	6e                   	outsb  %ds:(%esi),(%dx)
c0212a30:	74 3a                	je     c0212a6c <interrupt_handlers+0x720c>
c0212a32:	47                   	inc    %edi
c0212a33:	28 33                	sub    %dh,(%ebx)
c0212a35:	2c 31                	sub    $0x31,%al
c0212a37:	29 00                	sub    %eax,(%eax)
c0212a39:	64                   	fs
c0212a3a:	72 69                	jb     c0212aa5 <interrupt_handlers+0x7245>
c0212a3c:	76 65                	jbe    c0212aa3 <interrupt_handlers+0x7243>
c0212a3e:	72 73                	jb     c0212ab3 <interrupt_handlers+0x7253>
c0212a40:	2f                   	das    
c0212a41:	74 69                	je     c0212aac <interrupt_handlers+0x724c>
c0212a43:	6d                   	insl   (%dx),%es:(%edi)
c0212a44:	65                   	gs
c0212a45:	72 2e                	jb     c0212a75 <interrupt_handlers+0x7215>
c0212a47:	63 00                	arpl   %ax,(%eax)
c0212a49:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
c0212a50:	2f                   	das    
c0212a51:	74 69                	je     c0212abc <interrupt_handlers+0x725c>
c0212a53:	6d                   	insl   (%dx),%es:(%edi)
c0212a54:	65                   	gs
c0212a55:	72 2e                	jb     c0212a85 <interrupt_handlers+0x7225>
c0212a57:	68 00 74 69 6d       	push   $0x6d697400
c0212a5c:	65                   	gs
c0212a5d:	72 5f                	jb     c0212abe <interrupt_handlers+0x725e>
c0212a5f:	63 61 6c             	arpl   %sp,0x6c(%ecx)
c0212a62:	6c                   	insb   (%dx),%es:(%edi)
c0212a63:	62 61 63             	bound  %esp,0x63(%ecx)
c0212a66:	6b 3a 46             	imul   $0x46,(%edx),%edi
c0212a69:	28 30                	sub    %dh,(%eax)
c0212a6b:	2c 31                	sub    $0x31,%al
c0212a6d:	38 29                	cmp    %ch,(%ecx)
c0212a6f:	00 72 65             	add    %dh,0x65(%edx)
c0212a72:	67 73 3a             	addr16 jae c0212aaf <interrupt_handlers+0x724f>
c0212a75:	70 28                	jo     c0212a9f <interrupt_handlers+0x723f>
c0212a77:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212a7a:	39 29                	cmp    %ebp,(%ecx)
c0212a7c:	3d 2a 28 35 2c       	cmp    $0x2c35282a,%eax
c0212a81:	36 29 00             	sub    %eax,%ss:(%eax)
c0212a84:	74 69                	je     c0212aef <interrupt_handlers+0x728f>
c0212a86:	63 6b 3a             	arpl   %bp,0x3a(%ebx)
c0212a89:	56                   	push   %esi
c0212a8a:	28 31                	sub    %dh,(%ecx)
c0212a8c:	2c 31                	sub    $0x31,%al
c0212a8e:	29 00                	sub    %eax,(%eax)
c0212a90:	69 6e 69 74 5f 74 69 	imul   $0x69745f74,0x69(%esi),%ebp
c0212a97:	6d                   	insl   (%dx),%es:(%edi)
c0212a98:	65                   	gs
c0212a99:	72 3a                	jb     c0212ad5 <interrupt_handlers+0x7275>
c0212a9b:	46                   	inc    %esi
c0212a9c:	28 30                	sub    %dh,(%eax)
c0212a9e:	2c 31                	sub    $0x31,%al
c0212aa0:	38 29                	cmp    %ch,(%ecx)
c0212aa2:	00 66 72             	add    %ah,0x72(%esi)
c0212aa5:	65                   	gs
c0212aa6:	71 75                	jno    c0212b1d <interrupt_handlers+0x72bd>
c0212aa8:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212aaa:	63 79 3a             	arpl   %di,0x3a(%ecx)
c0212aad:	70 28                	jo     c0212ad7 <interrupt_handlers+0x7277>
c0212aaf:	31 2c 31             	xor    %ebp,(%ecx,%esi,1)
c0212ab2:	29 00                	sub    %eax,(%eax)
c0212ab4:	64 69 76 69 73 6f 72 	imul   $0x3a726f73,%fs:0x69(%esi),%esi
c0212abb:	3a 
c0212abc:	28 31                	sub    %dh,(%ecx)
c0212abe:	2c 31                	sub    $0x31,%al
c0212ac0:	29 00                	sub    %eax,(%eax)
c0212ac2:	6c                   	insb   (%dx),%es:(%edi)
c0212ac3:	6f                   	outsl  %ds:(%esi),(%dx)
c0212ac4:	77 3a                	ja     c0212b00 <interrupt_handlers+0x72a0>
c0212ac6:	28 31                	sub    %dh,(%ecx)
c0212ac8:	2c 35                	sub    $0x35,%al
c0212aca:	29 00                	sub    %eax,(%eax)
c0212acc:	68 69 67 6e 3a       	push   $0x3a6e6769
c0212ad1:	28 31                	sub    %dh,(%ecx)
c0212ad3:	2c 35                	sub    $0x35,%al
c0212ad5:	29 00                	sub    %eax,(%eax)
c0212ad7:	69 6e 69 74 2f 65 6e 	imul   $0x6e652f74,0x69(%esi),%ebp
c0212ade:	74 72                	je     c0212b52 <interrupt_handlers+0x72f2>
c0212ae0:	79 2e                	jns    c0212b10 <interrupt_handlers+0x72b0>
c0212ae2:	63 00                	arpl   %ax,(%eax)
c0212ae4:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212ae6:	74 72                	je     c0212b5a <interrupt_handlers+0x72fa>
c0212ae8:	79 3a                	jns    c0212b24 <interrupt_handlers+0x72c4>
c0212aea:	46                   	inc    %esi
c0212aeb:	28 30                	sub    %dh,(%eax)
c0212aed:	2c 31                	sub    $0x31,%al
c0212aef:	38 29                	cmp    %ch,(%ecx)
c0212af1:	00 63 72             	add    %ah,0x72(%ebx)
c0212af4:	30 3a                	xor    %bh,(%edx)
c0212af6:	28 32                	sub    %dh,(%edx)
c0212af8:	2c 31                	sub    $0x31,%al
c0212afa:	29 00                	sub    %eax,(%eax)
c0212afc:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0212b00:	6c                   	insb   (%dx),%es:(%edi)
c0212b01:	65                   	gs
c0212b02:	5f                   	pop    %edi
c0212b03:	73 74                	jae    c0212b79 <interrupt_handlers+0x7319>
c0212b05:	61                   	popa   
c0212b06:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
c0212b09:	74 6f                	je     c0212b7a <interrupt_handlers+0x731a>
c0212b0b:	70 3a                	jo     c0212b47 <interrupt_handlers+0x72e7>
c0212b0d:	28 32                	sub    %dh,(%edx)
c0212b0f:	2c 31                	sub    $0x31,%al
c0212b11:	29 00                	sub    %eax,(%eax)
c0212b13:	6b 65 72 6e          	imul   $0x6e,0x72(%ebp),%esp
c0212b17:	65                   	gs
c0212b18:	6c                   	insb   (%dx),%es:(%edi)
c0212b19:	5f                   	pop    %edi
c0212b1a:	69 6e 69 74 3a 46 28 	imul   $0x28463a74,0x69(%esi),%ebp
c0212b21:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212b24:	38 29                	cmp    %ch,(%ecx)
c0212b26:	00 73 74             	add    %dh,0x74(%ebx)
c0212b29:	72 69                	jb     c0212b94 <interrupt_handlers+0x7334>
c0212b2b:	6e                   	outsb  %ds:(%esi),(%dx)
c0212b2c:	67 3a 28             	cmp    (%bx,%si),%ch
c0212b2f:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212b32:	39 29                	cmp    %ebp,(%ecx)
c0212b34:	3d 2a 28 30 2c       	cmp    $0x2c30282a,%eax
c0212b39:	32 29                	xor    (%ecx),%ch
c0212b3b:	00 76 61             	add    %dh,0x61(%esi)
c0212b3e:	6c                   	insb   (%dx),%es:(%edi)
c0212b3f:	75 65                	jne    c0212ba6 <interrupt_handlers+0x7346>
c0212b41:	3a 28                	cmp    (%eax),%ch
c0212b43:	32 2c 31             	xor    (%ecx,%esi,1),%ch
c0212b46:	29 00                	sub    %eax,(%eax)
c0212b48:	67 6c                	insb   (%dx),%es:(%di)
c0212b4a:	62 5f 6d             	bound  %ebx,0x6d(%edi)
c0212b4d:	62 6f 6f             	bound  %ebp,0x6f(%edi)
c0212b50:	74 5f                	je     c0212bb1 <interrupt_handlers+0x7351>
c0212b52:	70 74                	jo     c0212bc8 <interrupt_handlers+0x7368>
c0212b54:	72 3a                	jb     c0212b90 <interrupt_handlers+0x7330>
c0212b56:	47                   	inc    %edi
c0212b57:	28 30                	sub    %dh,(%eax)
c0212b59:	2c 32                	sub    $0x32,%al
c0212b5b:	30 29                	xor    %ch,(%ecx)
c0212b5d:	3d 2a 28 35 2c       	cmp    $0x2c35282a,%eax
c0212b62:	32 29                	xor    (%ecx),%ch
c0212b64:	00 6b 65             	add    %ch,0x65(%ebx)
c0212b67:	72 6e                	jb     c0212bd7 <interrupt_handlers+0x7377>
c0212b69:	65                   	gs
c0212b6a:	6c                   	insb   (%dx),%es:(%edi)
c0212b6b:	5f                   	pop    %edi
c0212b6c:	73 74                	jae    c0212be2 <interrupt_handlers+0x7382>
c0212b6e:	61                   	popa   
c0212b6f:	63 6b 3a             	arpl   %bp,0x3a(%ebx)
c0212b72:	47                   	inc    %edi
c0212b73:	28 30                	sub    %dh,(%eax)
c0212b75:	2c 32                	sub    $0x32,%al
c0212b77:	31 29                	xor    %ebp,(%ecx)
c0212b79:	3d 61 72 28 34       	cmp    $0x34287261,%eax
c0212b7e:	2c 34                	sub    $0x34,%al
c0212b80:	29 3b                	sub    %edi,(%ebx)
c0212b82:	30 3b                	xor    %bh,(%ebx)
c0212b84:	38 31                	cmp    %dh,(%ecx)
c0212b86:	39 31                	cmp    %esi,(%ecx)
c0212b88:	3b 28                	cmp    (%eax),%ebp
c0212b8a:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0212b8d:	29 00                	sub    %eax,(%eax)
c0212b8f:	70 67                	jo     c0212bf8 <interrupt_handlers+0x7398>
c0212b91:	64                   	fs
c0212b92:	5f                   	pop    %edi
c0212b93:	74 6d                	je     c0212c02 <interrupt_handlers+0x73a2>
c0212b95:	70 3a                	jo     c0212bd1 <interrupt_handlers+0x7371>
c0212b97:	47                   	inc    %edi
c0212b98:	28 30                	sub    %dh,(%eax)
c0212b9a:	2c 32                	sub    $0x32,%al
c0212b9c:	32 29                	xor    (%ecx),%ch
c0212b9e:	3d 2a 28 38 2c       	cmp    $0x2c38282a,%eax
c0212ba3:	31 29                	xor    %ebp,(%ecx)
c0212ba5:	00 70 74             	add    %dh,0x74(%eax)
c0212ba8:	65                   	gs
c0212ba9:	5f                   	pop    %edi
c0212baa:	6c                   	insb   (%dx),%es:(%edi)
c0212bab:	6f                   	outsl  %ds:(%esi),(%dx)
c0212bac:	77 3a                	ja     c0212be8 <interrupt_handlers+0x7388>
c0212bae:	47                   	inc    %edi
c0212baf:	28 30                	sub    %dh,(%eax)
c0212bb1:	2c 32                	sub    $0x32,%al
c0212bb3:	32 29                	xor    (%ecx),%ch
c0212bb5:	00 70 74             	add    %dh,0x74(%eax)
c0212bb8:	65                   	gs
c0212bb9:	5f                   	pop    %edi
c0212bba:	68 69 67 68 3a       	push   $0x3a686769
c0212bbf:	47                   	inc    %edi
c0212bc0:	28 30                	sub    %dh,(%eax)
c0212bc2:	2c 32                	sub    $0x32,%al
c0212bc4:	32 29                	xor    (%ecx),%ch
c0212bc6:	00 69 64             	add    %ch,0x64(%ecx)
c0212bc9:	74 2f                	je     c0212bfa <interrupt_handlers+0x739a>
c0212bcb:	69 64 74 2e 63 00 69 	imul   $0x6e690063,0x2e(%esp,%esi,2),%esp
c0212bd2:	6e 
c0212bd3:	69 74 5f 69 64 74 3a 	imul   $0x463a7464,0x69(%edi,%ebx,2),%esi
c0212bda:	46 
c0212bdb:	28 30                	sub    %dh,(%eax)
c0212bdd:	2c 31                	sub    $0x31,%al
c0212bdf:	38 29                	cmp    %ch,(%ecx)
c0212be1:	00 69 64             	add    %ch,0x64(%ecx)
c0212be4:	74 5f                	je     c0212c45 <interrupt_handlers+0x73e5>
c0212be6:	73 65                	jae    c0212c4d <interrupt_handlers+0x73ed>
c0212be8:	74 5f                	je     c0212c49 <interrupt_handlers+0x73e9>
c0212bea:	67 61                	addr16 popa 
c0212bec:	74 65                	je     c0212c53 <interrupt_handlers+0x73f3>
c0212bee:	3a 66 28             	cmp    0x28(%esi),%ah
c0212bf1:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212bf4:	38 29                	cmp    %ch,(%ecx)
c0212bf6:	00 6e 75             	add    %ch,0x75(%esi)
c0212bf9:	6d                   	insl   (%dx),%es:(%edi)
c0212bfa:	3a 70 28             	cmp    0x28(%eax),%dh
c0212bfd:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212c00:	29 00                	sub    %eax,(%eax)
c0212c02:	62 61 73             	bound  %esp,0x73(%ecx)
c0212c05:	65 3a 70 28          	cmp    %gs:0x28(%eax),%dh
c0212c09:	31 2c 31             	xor    %ebp,(%ecx,%esi,1)
c0212c0c:	29 00                	sub    %eax,(%eax)
c0212c0e:	73 65                	jae    c0212c75 <interrupt_handlers+0x7415>
c0212c10:	6c                   	insb   (%dx),%es:(%edi)
c0212c11:	3a 70 28             	cmp    0x28(%eax),%dh
c0212c14:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212c17:	29 00                	sub    %eax,(%eax)
c0212c19:	66                   	data16
c0212c1a:	6c                   	insb   (%dx),%es:(%edi)
c0212c1b:	61                   	popa   
c0212c1c:	67 73 3a             	addr16 jae c0212c59 <interrupt_handlers+0x73f9>
c0212c1f:	70 28                	jo     c0212c49 <interrupt_handlers+0x73e9>
c0212c21:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212c24:	29 00                	sub    %eax,(%eax)
c0212c26:	6e                   	outsb  %ds:(%esi),(%dx)
c0212c27:	75 6d                	jne    c0212c96 <interrupt_handlers+0x7436>
c0212c29:	3a 28                	cmp    (%eax),%ch
c0212c2b:	31 2c 35 29 00 73 65 	xor    %ebp,0x65730029(,%esi,1)
c0212c32:	6c                   	insb   (%dx),%es:(%edi)
c0212c33:	3a 28                	cmp    (%eax),%ch
c0212c35:	31 2c 33             	xor    %ebp,(%ebx,%esi,1)
c0212c38:	29 00                	sub    %eax,(%eax)
c0212c3a:	66                   	data16
c0212c3b:	6c                   	insb   (%dx),%es:(%edi)
c0212c3c:	61                   	popa   
c0212c3d:	67 73 3a             	addr16 jae c0212c7a <interrupt_handlers+0x741a>
c0212c40:	28 31                	sub    %dh,(%ecx)
c0212c42:	2c 35                	sub    $0x35,%al
c0212c44:	29 00                	sub    %eax,(%eax)
c0212c46:	69 73 72 5f 68 61 6e 	imul   $0x6e61685f,0x72(%ebx),%esi
c0212c4d:	64                   	fs
c0212c4e:	6c                   	insb   (%dx),%es:(%edi)
c0212c4f:	65                   	gs
c0212c50:	72 3a                	jb     c0212c8c <interrupt_handlers+0x742c>
c0212c52:	46                   	inc    %esi
c0212c53:	28 30                	sub    %dh,(%eax)
c0212c55:	2c 31                	sub    $0x31,%al
c0212c57:	38 29                	cmp    %ch,(%ecx)
c0212c59:	00 72 65             	add    %dh,0x65(%edx)
c0212c5c:	67 73 3a             	addr16 jae c0212c99 <interrupt_handlers+0x7439>
c0212c5f:	70 28                	jo     c0212c89 <interrupt_handlers+0x7429>
c0212c61:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212c64:	39 29                	cmp    %ebp,(%ecx)
c0212c66:	3d 2a 28 32 2c       	cmp    $0x2c32282a,%eax
c0212c6b:	36 29 00             	sub    %eax,%ss:(%eax)
c0212c6e:	72 65                	jb     c0212cd5 <interrupt_handlers+0x7475>
c0212c70:	67 69 73 74 65 72 5f 	imul   $0x695f7265,0x74(%bp,%di),%esi
c0212c77:	69 
c0212c78:	6e                   	outsb  %ds:(%esi),(%dx)
c0212c79:	74 65                	je     c0212ce0 <interrupt_handlers+0x7480>
c0212c7b:	72 72                	jb     c0212cef <interrupt_handlers+0x748f>
c0212c7d:	75 70                	jne    c0212cef <interrupt_handlers+0x748f>
c0212c7f:	74 5f                	je     c0212ce0 <interrupt_handlers+0x7480>
c0212c81:	68 61 6e 64 6c       	push   $0x6c646e61
c0212c86:	65                   	gs
c0212c87:	72 3a                	jb     c0212cc3 <interrupt_handlers+0x7463>
c0212c89:	46                   	inc    %esi
c0212c8a:	28 30                	sub    %dh,(%eax)
c0212c8c:	2c 31                	sub    $0x31,%al
c0212c8e:	38 29                	cmp    %ch,(%ecx)
c0212c90:	00 6e 3a             	add    %ch,0x3a(%esi)
c0212c93:	70 28                	jo     c0212cbd <interrupt_handlers+0x745d>
c0212c95:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212c98:	29 00                	sub    %eax,(%eax)
c0212c9a:	68 3a 70 28 32       	push   $0x3228703a
c0212c9f:	2c 37                	sub    $0x37,%al
c0212ca1:	29 00                	sub    %eax,(%eax)
c0212ca3:	6e                   	outsb  %ds:(%esi),(%dx)
c0212ca4:	3a 28                	cmp    (%eax),%ch
c0212ca6:	31 2c 35 29 00 69 72 	xor    %ebp,0x72690029(,%esi,1)
c0212cad:	71 5f                	jno    c0212d0e <interrupt_handlers+0x74ae>
c0212caf:	68 61 6e 64 6c       	push   $0x6c646e61
c0212cb4:	65                   	gs
c0212cb5:	72 3a                	jb     c0212cf1 <interrupt_handlers+0x7491>
c0212cb7:	46                   	inc    %esi
c0212cb8:	28 30                	sub    %dh,(%eax)
c0212cba:	2c 31                	sub    $0x31,%al
c0212cbc:	38 29                	cmp    %ch,(%ecx)
c0212cbe:	00 72 65             	add    %dh,0x65(%edx)
c0212cc1:	67 73 3a             	addr16 jae c0212cfe <interrupt_handlers+0x749e>
c0212cc4:	70 28                	jo     c0212cee <interrupt_handlers+0x748e>
c0212cc6:	30 2c 31             	xor    %ch,(%ecx,%esi,1)
c0212cc9:	39 29                	cmp    %ebp,(%ecx)
c0212ccb:	00 69 64             	add    %ch,0x64(%ecx)
c0212cce:	74 5f                	je     c0212d2f <interrupt_handlers+0x74cf>
c0212cd0:	65 6e                	outsb  %gs:(%esi),(%dx)
c0212cd2:	74 72                	je     c0212d46 <interrupt_handlers+0x74e6>
c0212cd4:	69 65 73 3a 47 28 30 	imul   $0x3028473a,0x73(%ebp),%esp
c0212cdb:	2c 32                	sub    $0x32,%al
c0212cdd:	30 29                	xor    %ch,(%ecx)
c0212cdf:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c0212ce4:	2c 32                	sub    $0x32,%al
c0212ce6:	31 29                	xor    %ebp,(%ecx)
c0212ce8:	3d 72 28 30 2c       	cmp    $0x2c302872,%eax
c0212ced:	32 31                	xor    (%ecx),%dh
c0212cef:	29 3b                	sub    %edi,(%ebx)
c0212cf1:	30 3b                	xor    %bh,(%ebx)
c0212cf3:	30 33                	xor    %dh,(%ebx)
c0212cf5:	37                   	aaa    
c0212cf6:	37                   	aaa    
c0212cf7:	37                   	aaa    
c0212cf8:	37                   	aaa    
c0212cf9:	37                   	aaa    
c0212cfa:	37                   	aaa    
c0212cfb:	37                   	aaa    
c0212cfc:	37                   	aaa    
c0212cfd:	37                   	aaa    
c0212cfe:	37                   	aaa    
c0212cff:	3b 3b                	cmp    (%ebx),%edi
c0212d01:	30 3b                	xor    %bh,(%ebx)
c0212d03:	32 35 35 3b 28 32    	xor    0x32283b35,%dh
c0212d09:	2c 32                	sub    $0x32,%al
c0212d0b:	29 00                	sub    %eax,(%eax)
c0212d0d:	69 64 74 5f 70 74 72 	imul   $0x3a727470,0x5f(%esp,%esi,2),%esp
c0212d14:	3a 
c0212d15:	47                   	inc    %edi
c0212d16:	28 32                	sub    %dh,(%edx)
c0212d18:	2c 34                	sub    $0x34,%al
c0212d1a:	29 00                	sub    %eax,(%eax)
c0212d1c:	69 6e 74 65 72 72 75 	imul   $0x75727265,0x74(%esi),%ebp
c0212d23:	70 74                	jo     c0212d99 <interrupt_handlers+0x7539>
c0212d25:	5f                   	pop    %edi
c0212d26:	68 61 6e 64 6c       	push   $0x6c646e61
c0212d2b:	65                   	gs
c0212d2c:	72 73                	jb     c0212da1 <interrupt_handlers+0x7541>
c0212d2e:	3a 47 28             	cmp    0x28(%edi),%al
c0212d31:	30 2c 32             	xor    %ch,(%edx,%esi,1)
c0212d34:	32 29                	xor    (%ecx),%ch
c0212d36:	3d 61 72 28 30       	cmp    $0x30287261,%eax
c0212d3b:	2c 32                	sub    $0x32,%al
c0212d3d:	31 29                	xor    %ebp,(%ecx)
c0212d3f:	3b 30                	cmp    (%eax),%esi
c0212d41:	3b 32                	cmp    (%edx),%esi
c0212d43:	35 35 3b 28 32       	xor    $0x32283b35,%eax
c0212d48:	2c 37                	sub    $0x37,%al
c0212d4a:	29 00                	sub    %eax,(%eax)
	...
