
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
  1000c8:	b8 40 a0 20 c0       	mov    $0xc020a040,%eax
  1000cd:	05 00 20 00 00       	add    $0x2000,%eax
  1000d2:	83 e0 f0             	and    $0xfffffff0,%eax
  1000d5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000d8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000db:	89 c4                	mov    %eax,%esp
  1000dd:	31 ed                	xor    %ebp,%ebp
  1000df:	a1 00 14 10 00       	mov    0x101400,%eax
  1000e4:	a3 20 a0 20 c0       	mov    %eax,0xc020a020
  1000e9:	e8 a2 37 00 c0       	call   c0103890 <kernel_init>
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
c010213a:	e8 79 20 00 00       	call   c01041b8 <isr_handler>
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
c01021de:	e8 37 20 00 00       	call   c010421a <irq_handler>
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
c0102214:	e8 3b 05 00 00       	call   c0102754 <screen_string>
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
c010223e:	e8 26 04 00 00       	call   c0102669 <screen_char>
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
c01022f6:	e8 6e 03 00 00       	call   c0102669 <screen_char>
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
c010235b:	79 03                	jns    c0102360 <printx+0x59>
c010235d:	f7 5d 08             	negl   0x8(%ebp)
c0102360:	8b 45 08             	mov    0x8(%ebp),%eax
c0102363:	89 c2                	mov    %eax,%edx
c0102365:	c1 fa 1f             	sar    $0x1f,%edx
c0102368:	c1 ea 1c             	shr    $0x1c,%edx
c010236b:	01 d0                	add    %edx,%eax
c010236d:	83 e0 0f             	and    $0xf,%eax
c0102370:	29 d0                	sub    %edx,%eax
c0102372:	89 c2                	mov    %eax,%edx
c0102374:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102377:	89 94 85 64 ff ff ff 	mov    %edx,-0x9c(%ebp,%eax,4)
c010237e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102382:	8b 45 08             	mov    0x8(%ebp),%eax
c0102385:	8d 50 0f             	lea    0xf(%eax),%edx
c0102388:	85 c0                	test   %eax,%eax
c010238a:	0f 48 c2             	cmovs  %edx,%eax
c010238d:	c1 f8 04             	sar    $0x4,%eax
c0102390:	89 45 08             	mov    %eax,0x8(%ebp)
c0102393:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102397:	7f c7                	jg     c0102360 <printx+0x59>
c0102399:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c010239d:	eb 2e                	jmp    c01023cd <printx+0xc6>
c010239f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01023a2:	8b 84 85 64 ff ff ff 	mov    -0x9c(%ebp,%eax,4),%eax
c01023a9:	0f b6 44 05 e4       	movzbl -0x1c(%ebp,%eax,1),%eax
c01023ae:	0f be c0             	movsbl %al,%eax
c01023b1:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
c01023b8:	00 
c01023b9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01023c0:	00 
c01023c1:	89 04 24             	mov    %eax,(%esp)
c01023c4:	e8 a0 02 00 00       	call   c0102669 <screen_char>
c01023c9:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
c01023cd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01023d1:	79 cc                	jns    c010239f <printx+0x98>
c01023d3:	c9                   	leave  
c01023d4:	c3                   	ret    

c01023d5 <printk>:
c01023d5:	55                   	push   %ebp
c01023d6:	89 e5                	mov    %esp,%ebp
c01023d8:	83 ec 28             	sub    $0x28,%esp
c01023db:	8d 45 0c             	lea    0xc(%ebp),%eax
c01023de:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01023e1:	8b 45 08             	mov    0x8(%ebp),%eax
c01023e4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01023e7:	89 54 24 04          	mov    %edx,0x4(%esp)
c01023eb:	89 04 24             	mov    %eax,(%esp)
c01023ee:	e8 0f 00 00 00       	call   c0102402 <vprintk>
c01023f3:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01023f6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c01023fd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102400:	c9                   	leave  
c0102401:	c3                   	ret    

c0102402 <vprintk>:
c0102402:	55                   	push   %ebp
c0102403:	89 e5                	mov    %esp,%ebp
c0102405:	83 ec 28             	sub    $0x28,%esp
c0102408:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010240f:	e9 d8 00 00 00       	jmp    c01024ec <vprintk+0xea>
c0102414:	8b 45 08             	mov    0x8(%ebp),%eax
c0102417:	0f b6 00             	movzbl (%eax),%eax
c010241a:	3c 25                	cmp    $0x25,%al
c010241c:	0f 85 b1 00 00 00    	jne    c01024d3 <vprintk+0xd1>
c0102422:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0102426:	8b 45 08             	mov    0x8(%ebp),%eax
c0102429:	0f b6 00             	movzbl (%eax),%eax
c010242c:	3c 63                	cmp    $0x63,%al
c010242e:	75 20                	jne    c0102450 <vprintk+0x4e>
c0102430:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c0102434:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102437:	83 e8 04             	sub    $0x4,%eax
c010243a:	8b 00                	mov    (%eax),%eax
c010243c:	0f be c0             	movsbl %al,%eax
c010243f:	89 04 24             	mov    %eax,(%esp)
c0102442:	e8 d4 fd ff ff       	call   c010221b <printchar>
c0102447:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010244b:	e9 98 00 00 00       	jmp    c01024e8 <vprintk+0xe6>
c0102450:	8b 45 08             	mov    0x8(%ebp),%eax
c0102453:	0f b6 00             	movzbl (%eax),%eax
c0102456:	3c 64                	cmp    $0x64,%al
c0102458:	75 1a                	jne    c0102474 <vprintk+0x72>
c010245a:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c010245e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102461:	83 e8 04             	sub    $0x4,%eax
c0102464:	8b 00                	mov    (%eax),%eax
c0102466:	89 04 24             	mov    %eax,(%esp)
c0102469:	e8 d7 fd ff ff       	call   c0102245 <printi>
c010246e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102472:	eb 74                	jmp    c01024e8 <vprintk+0xe6>
c0102474:	8b 45 08             	mov    0x8(%ebp),%eax
c0102477:	0f b6 00             	movzbl (%eax),%eax
c010247a:	3c 73                	cmp    $0x73,%al
c010247c:	75 1a                	jne    c0102498 <vprintk+0x96>
c010247e:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c0102482:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102485:	83 e8 04             	sub    $0x4,%eax
c0102488:	8b 00                	mov    (%eax),%eax
c010248a:	89 04 24             	mov    %eax,(%esp)
c010248d:	e8 66 fd ff ff       	call   c01021f8 <prints>
c0102492:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102496:	eb 50                	jmp    c01024e8 <vprintk+0xe6>
c0102498:	8b 45 08             	mov    0x8(%ebp),%eax
c010249b:	0f b6 00             	movzbl (%eax),%eax
c010249e:	3c 78                	cmp    $0x78,%al
c01024a0:	75 1a                	jne    c01024bc <vprintk+0xba>
c01024a2:	83 45 0c 04          	addl   $0x4,0xc(%ebp)
c01024a6:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024a9:	83 e8 04             	sub    $0x4,%eax
c01024ac:	8b 00                	mov    (%eax),%eax
c01024ae:	89 04 24             	mov    %eax,(%esp)
c01024b1:	e8 51 fe ff ff       	call   c0102307 <printx>
c01024b6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01024ba:	eb 2c                	jmp    c01024e8 <vprintk+0xe6>
c01024bc:	8b 45 08             	mov    0x8(%ebp),%eax
c01024bf:	0f b6 00             	movzbl (%eax),%eax
c01024c2:	0f be c0             	movsbl %al,%eax
c01024c5:	89 04 24             	mov    %eax,(%esp)
c01024c8:	e8 4e fd ff ff       	call   c010221b <printchar>
c01024cd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01024d1:	eb 15                	jmp    c01024e8 <vprintk+0xe6>
c01024d3:	8b 45 08             	mov    0x8(%ebp),%eax
c01024d6:	0f b6 00             	movzbl (%eax),%eax
c01024d9:	0f be c0             	movsbl %al,%eax
c01024dc:	89 04 24             	mov    %eax,(%esp)
c01024df:	e8 37 fd ff ff       	call   c010221b <printchar>
c01024e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01024e8:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c01024ec:	8b 45 08             	mov    0x8(%ebp),%eax
c01024ef:	0f b6 00             	movzbl (%eax),%eax
c01024f2:	84 c0                	test   %al,%al
c01024f4:	0f 85 1a ff ff ff    	jne    c0102414 <vprintk+0x12>
c01024fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01024fd:	c9                   	leave  
c01024fe:	c3                   	ret    
c01024ff:	90                   	nop

c0102500 <scrooll>:
c0102500:	55                   	push   %ebp
c0102501:	89 e5                	mov    %esp,%ebp
c0102503:	83 ec 10             	sub    $0x10,%esp
c0102506:	c6 45 fb 0f          	movb   $0xf,-0x5(%ebp)
c010250a:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c010250e:	c1 e0 08             	shl    $0x8,%eax
c0102511:	83 c8 20             	or     $0x20,%eax
c0102514:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
c0102518:	0f b7 05 00 60 10 c0 	movzwl 0xc0106000,%eax
c010251f:	66 83 f8 18          	cmp    $0x18,%ax
c0102523:	7e 69                	jle    c010258e <scrooll+0x8e>
c0102525:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010252c:	eb 25                	jmp    c0102553 <scrooll+0x53>
c010252e:	a1 00 50 10 c0       	mov    0xc0105000,%eax
c0102533:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102536:	01 d2                	add    %edx,%edx
c0102538:	01 c2                	add    %eax,%edx
c010253a:	a1 00 50 10 c0       	mov    0xc0105000,%eax
c010253f:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0102542:	83 c1 50             	add    $0x50,%ecx
c0102545:	01 c9                	add    %ecx,%ecx
c0102547:	01 c8                	add    %ecx,%eax
c0102549:	0f b7 00             	movzwl (%eax),%eax
c010254c:	66 89 02             	mov    %ax,(%edx)
c010254f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102553:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%ebp)
c010255a:	7e d2                	jle    c010252e <scrooll+0x2e>
c010255c:	c7 45 fc 80 07 00 00 	movl   $0x780,-0x4(%ebp)
c0102563:	eb 17                	jmp    c010257c <scrooll+0x7c>
c0102565:	a1 00 50 10 c0       	mov    0xc0105000,%eax
c010256a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010256d:	01 d2                	add    %edx,%edx
c010256f:	01 c2                	add    %eax,%edx
c0102571:	0f b7 45 f8          	movzwl -0x8(%ebp),%eax
c0102575:	66 89 02             	mov    %ax,(%edx)
c0102578:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010257c:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
c0102583:	7e e0                	jle    c0102565 <scrooll+0x65>
c0102585:	66 c7 05 00 60 10 c0 	movw   $0x18,0xc0106000
c010258c:	18 00 
c010258e:	c9                   	leave  
c010258f:	c3                   	ret    

c0102590 <move_point>:
c0102590:	55                   	push   %ebp
c0102591:	89 e5                	mov    %esp,%ebp
c0102593:	83 ec 28             	sub    $0x28,%esp
c0102596:	0f b7 05 00 60 10 c0 	movzwl 0xc0106000,%eax
c010259d:	89 c2                	mov    %eax,%edx
c010259f:	89 d0                	mov    %edx,%eax
c01025a1:	c1 e0 02             	shl    $0x2,%eax
c01025a4:	01 d0                	add    %edx,%eax
c01025a6:	c1 e0 04             	shl    $0x4,%eax
c01025a9:	89 c2                	mov    %eax,%edx
c01025ab:	0f b7 05 02 60 10 c0 	movzwl 0xc0106002,%eax
c01025b2:	01 d0                	add    %edx,%eax
c01025b4:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c01025b8:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
c01025bf:	00 
c01025c0:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
c01025c7:	e8 d0 01 00 00       	call   c010279c <outb>
c01025cc:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c01025d0:	66 c1 e8 08          	shr    $0x8,%ax
c01025d4:	0f b6 c0             	movzbl %al,%eax
c01025d7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01025db:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
c01025e2:	e8 b5 01 00 00       	call   c010279c <outb>
c01025e7:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
c01025ee:	00 
c01025ef:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
c01025f6:	e8 a1 01 00 00       	call   c010279c <outb>
c01025fb:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c01025ff:	0f b6 c0             	movzbl %al,%eax
c0102602:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102606:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
c010260d:	e8 8a 01 00 00       	call   c010279c <outb>
c0102612:	c9                   	leave  
c0102613:	c3                   	ret    

c0102614 <screen_clear>:
c0102614:	55                   	push   %ebp
c0102615:	89 e5                	mov    %esp,%ebp
c0102617:	83 ec 18             	sub    $0x18,%esp
c010261a:	66 c7 45 f2 20 07    	movw   $0x720,-0xe(%ebp)
c0102620:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102627:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c010262e:	eb 17                	jmp    c0102647 <screen_clear+0x33>
c0102630:	a1 00 50 10 c0       	mov    0xc0105000,%eax
c0102635:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102638:	01 d2                	add    %edx,%edx
c010263a:	01 c2                	add    %eax,%edx
c010263c:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
c0102640:	66 89 02             	mov    %ax,(%edx)
c0102643:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102647:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
c010264e:	7e e0                	jle    c0102630 <screen_clear+0x1c>
c0102650:	66 c7 05 00 60 10 c0 	movw   $0x0,0xc0106000
c0102657:	00 00 
c0102659:	66 c7 05 02 60 10 c0 	movw   $0x0,0xc0106002
c0102660:	00 00 
c0102662:	e8 29 ff ff ff       	call   c0102590 <move_point>
c0102667:	c9                   	leave  
c0102668:	c3                   	ret    

c0102669 <screen_char>:
c0102669:	55                   	push   %ebp
c010266a:	89 e5                	mov    %esp,%ebp
c010266c:	83 ec 28             	sub    $0x28,%esp
c010266f:	8b 45 08             	mov    0x8(%ebp),%eax
c0102672:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0102675:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102678:	89 c2                	mov    %eax,%edx
c010267a:	8b 45 10             	mov    0x10(%ebp),%eax
c010267d:	09 d0                	or     %edx,%eax
c010267f:	89 c2                	mov    %eax,%edx
c0102681:	c1 e2 08             	shl    $0x8,%edx
c0102684:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
c0102689:	09 d0                	or     %edx,%eax
c010268b:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
c010268f:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
c0102693:	75 1b                	jne    c01026b0 <screen_char+0x47>
c0102695:	0f b7 05 00 60 10 c0 	movzwl 0xc0106000,%eax
c010269c:	83 c0 01             	add    $0x1,%eax
c010269f:	66 a3 00 60 10 c0    	mov    %ax,0xc0106000
c01026a5:	66 c7 05 02 60 10 c0 	movw   $0x0,0xc0106002
c01026ac:	00 00 
c01026ae:	eb 72                	jmp    c0102722 <screen_char+0xb9>
c01026b0:	80 7d e4 09          	cmpb   $0x9,-0x1c(%ebp)
c01026b4:	75 12                	jne    c01026c8 <screen_char+0x5f>
c01026b6:	0f b7 05 02 60 10 c0 	movzwl 0xc0106002,%eax
c01026bd:	83 c0 08             	add    $0x8,%eax
c01026c0:	66 a3 02 60 10 c0    	mov    %ax,0xc0106002
c01026c6:	eb 5a                	jmp    c0102722 <screen_char+0xb9>
c01026c8:	80 7d e4 20          	cmpb   $0x20,-0x1c(%ebp)
c01026cc:	75 12                	jne    c01026e0 <screen_char+0x77>
c01026ce:	0f b7 05 02 60 10 c0 	movzwl 0xc0106002,%eax
c01026d5:	83 c0 01             	add    $0x1,%eax
c01026d8:	66 a3 02 60 10 c0    	mov    %ax,0xc0106002
c01026de:	eb 42                	jmp    c0102722 <screen_char+0xb9>
c01026e0:	8b 0d 00 50 10 c0    	mov    0xc0105000,%ecx
c01026e6:	0f b7 05 00 60 10 c0 	movzwl 0xc0106000,%eax
c01026ed:	0f bf d0             	movswl %ax,%edx
c01026f0:	89 d0                	mov    %edx,%eax
c01026f2:	c1 e0 02             	shl    $0x2,%eax
c01026f5:	01 d0                	add    %edx,%eax
c01026f7:	c1 e0 04             	shl    $0x4,%eax
c01026fa:	89 c2                	mov    %eax,%edx
c01026fc:	0f b7 05 02 60 10 c0 	movzwl 0xc0106002,%eax
c0102703:	98                   	cwtl   
c0102704:	01 d0                	add    %edx,%eax
c0102706:	01 c0                	add    %eax,%eax
c0102708:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c010270b:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c010270f:	66 89 02             	mov    %ax,(%edx)
c0102712:	0f b7 05 02 60 10 c0 	movzwl 0xc0106002,%eax
c0102719:	83 c0 01             	add    $0x1,%eax
c010271c:	66 a3 02 60 10 c0    	mov    %ax,0xc0106002
c0102722:	0f b7 05 02 60 10 c0 	movzwl 0xc0106002,%eax
c0102729:	66 83 f8 50          	cmp    $0x50,%ax
c010272d:	7e 19                	jle    c0102748 <screen_char+0xdf>
c010272f:	0f b7 05 00 60 10 c0 	movzwl 0xc0106000,%eax
c0102736:	83 c0 01             	add    $0x1,%eax
c0102739:	66 a3 00 60 10 c0    	mov    %ax,0xc0106000
c010273f:	66 c7 05 02 60 10 c0 	movw   $0x0,0xc0106002
c0102746:	00 00 
c0102748:	e8 b3 fd ff ff       	call   c0102500 <scrooll>
c010274d:	e8 3e fe ff ff       	call   c0102590 <move_point>
c0102752:	c9                   	leave  
c0102753:	c3                   	ret    

c0102754 <screen_string>:
c0102754:	55                   	push   %ebp
c0102755:	89 e5                	mov    %esp,%ebp
c0102757:	83 ec 28             	sub    $0x28,%esp
c010275a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102761:	eb 28                	jmp    c010278b <screen_string+0x37>
c0102763:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102766:	8b 45 08             	mov    0x8(%ebp),%eax
c0102769:	01 d0                	add    %edx,%eax
c010276b:	0f b6 00             	movzbl (%eax),%eax
c010276e:	0f be c0             	movsbl %al,%eax
c0102771:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102775:	8b 55 10             	mov    0x10(%ebp),%edx
c0102778:	89 54 24 08          	mov    %edx,0x8(%esp)
c010277c:	8b 55 0c             	mov    0xc(%ebp),%edx
c010277f:	89 54 24 04          	mov    %edx,0x4(%esp)
c0102783:	89 04 24             	mov    %eax,(%esp)
c0102786:	e8 de fe ff ff       	call   c0102669 <screen_char>
c010278b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010278e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102791:	01 d0                	add    %edx,%eax
c0102793:	0f b6 00             	movzbl (%eax),%eax
c0102796:	84 c0                	test   %al,%al
c0102798:	75 c9                	jne    c0102763 <screen_string+0xf>
c010279a:	c9                   	leave  
c010279b:	c3                   	ret    

c010279c <outb>:
c010279c:	55                   	push   %ebp
c010279d:	89 e5                	mov    %esp,%ebp
c010279f:	83 ec 08             	sub    $0x8,%esp
c01027a2:	8b 55 08             	mov    0x8(%ebp),%edx
c01027a5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01027a8:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
c01027ac:	88 45 f8             	mov    %al,-0x8(%ebp)
c01027af:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
c01027b3:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
c01027b7:	ee                   	out    %al,(%dx)
c01027b8:	c9                   	leave  
c01027b9:	c3                   	ret    

c01027ba <inb>:
c01027ba:	55                   	push   %ebp
c01027bb:	89 e5                	mov    %esp,%ebp
c01027bd:	53                   	push   %ebx
c01027be:	83 ec 14             	sub    $0x14,%esp
c01027c1:	8b 45 08             	mov    0x8(%ebp),%eax
c01027c4:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
c01027c8:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
c01027cc:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
c01027d0:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
c01027d4:	ec                   	in     (%dx),%al
c01027d5:	89 c3                	mov    %eax,%ebx
c01027d7:	88 5d fb             	mov    %bl,-0x5(%ebp)
c01027da:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
c01027de:	83 c4 14             	add    $0x14,%esp
c01027e1:	5b                   	pop    %ebx
c01027e2:	5d                   	pop    %ebp
c01027e3:	c3                   	ret    

c01027e4 <inw>:
c01027e4:	55                   	push   %ebp
c01027e5:	89 e5                	mov    %esp,%ebp
c01027e7:	53                   	push   %ebx
c01027e8:	83 ec 14             	sub    $0x14,%esp
c01027eb:	8b 45 08             	mov    0x8(%ebp),%eax
c01027ee:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
c01027f2:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
c01027f6:	66 89 55 ea          	mov    %dx,-0x16(%ebp)
c01027fa:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
c01027fe:	66 ed                	in     (%dx),%ax
c0102800:	89 c3                	mov    %eax,%ebx
c0102802:	66 89 5d fa          	mov    %bx,-0x6(%ebp)
c0102806:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
c010280a:	83 c4 14             	add    $0x14,%esp
c010280d:	5b                   	pop    %ebx
c010280e:	5d                   	pop    %ebp
c010280f:	c3                   	ret    

c0102810 <memcpy>:
c0102810:	55                   	push   %ebp
c0102811:	89 e5                	mov    %esp,%ebp
c0102813:	83 ec 10             	sub    $0x10,%esp
c0102816:	8b 45 08             	mov    0x8(%ebp),%eax
c0102819:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010281c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010281f:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102822:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102829:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c010282d:	74 06                	je     c0102835 <memcpy+0x25>
c010282f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102833:	75 1e                	jne    c0102853 <memcpy+0x43>
c0102835:	8b 45 08             	mov    0x8(%ebp),%eax
c0102838:	eb 25                	jmp    c010285f <memcpy+0x4f>
c010283a:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010283d:	0f b6 10             	movzbl (%eax),%edx
c0102840:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102843:	88 10                	mov    %dl,(%eax)
c0102845:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102849:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c010284d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102851:	eb 01                	jmp    c0102854 <memcpy+0x44>
c0102853:	90                   	nop
c0102854:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102857:	3b 45 10             	cmp    0x10(%ebp),%eax
c010285a:	72 de                	jb     c010283a <memcpy+0x2a>
c010285c:	8b 45 08             	mov    0x8(%ebp),%eax
c010285f:	c9                   	leave  
c0102860:	c3                   	ret    

c0102861 <memset>:
c0102861:	55                   	push   %ebp
c0102862:	89 e5                	mov    %esp,%ebp
c0102864:	83 ec 14             	sub    $0x14,%esp
c0102867:	8b 45 0c             	mov    0xc(%ebp),%eax
c010286a:	88 45 ec             	mov    %al,-0x14(%ebp)
c010286d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102870:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102873:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c010287a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0102881:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102885:	75 08                	jne    c010288f <memset+0x2e>
c0102887:	eb 62                	jmp    c01028eb <memset+0x8a>
c0102889:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c010288d:	eb 01                	jmp    c0102890 <memset+0x2f>
c010288f:	90                   	nop
c0102890:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102893:	0f b6 00             	movzbl (%eax),%eax
c0102896:	84 c0                	test   %al,%al
c0102898:	75 ef                	jne    c0102889 <memset+0x28>
c010289a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010289d:	3b 45 10             	cmp    0x10(%ebp),%eax
c01028a0:	77 1d                	ja     c01028bf <memset+0x5e>
c01028a2:	eb 11                	jmp    c01028b5 <memset+0x54>
c01028a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028a7:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c01028ab:	88 10                	mov    %dl,(%eax)
c01028ad:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028b1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01028b5:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01028b8:	3b 45 10             	cmp    0x10(%ebp),%eax
c01028bb:	72 e7                	jb     c01028a4 <memset+0x43>
c01028bd:	eb 22                	jmp    c01028e1 <memset+0x80>
c01028bf:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c01028c6:	eb 11                	jmp    c01028d9 <memset+0x78>
c01028c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028cb:	0f b6 55 ec          	movzbl -0x14(%ebp),%edx
c01028cf:	88 10                	mov    %dl,(%eax)
c01028d1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028d5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01028d9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01028dc:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c01028df:	7c e7                	jl     c01028c8 <memset+0x67>
c01028e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01028e4:	c6 00 00             	movb   $0x0,(%eax)
c01028e7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01028eb:	c9                   	leave  
c01028ec:	c3                   	ret    

c01028ed <bzer>:
c01028ed:	55                   	push   %ebp
c01028ee:	89 e5                	mov    %esp,%ebp
c01028f0:	83 ec 10             	sub    $0x10,%esp
c01028f3:	8b 45 08             	mov    0x8(%ebp),%eax
c01028f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01028f9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102900:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0102907:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c010290b:	75 08                	jne    c0102915 <bzer+0x28>
c010290d:	eb 52                	jmp    c0102961 <bzer+0x74>
c010290f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102913:	eb 01                	jmp    c0102916 <bzer+0x29>
c0102915:	90                   	nop
c0102916:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102919:	0f b6 00             	movzbl (%eax),%eax
c010291c:	84 c0                	test   %al,%al
c010291e:	75 ef                	jne    c010290f <bzer+0x22>
c0102920:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102923:	3b 45 0c             	cmp    0xc(%ebp),%eax
c0102926:	72 1a                	jb     c0102942 <bzer+0x55>
c0102928:	eb 0e                	jmp    c0102938 <bzer+0x4b>
c010292a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010292d:	c6 00 00             	movb   $0x0,(%eax)
c0102930:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102934:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102938:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010293b:	3b 45 0c             	cmp    0xc(%ebp),%eax
c010293e:	72 ea                	jb     c010292a <bzer+0x3d>
c0102940:	eb 1f                	jmp    c0102961 <bzer+0x74>
c0102942:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0102949:	eb 0e                	jmp    c0102959 <bzer+0x6c>
c010294b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010294e:	c6 00 00             	movb   $0x0,(%eax)
c0102951:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102955:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102959:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010295c:	3b 45 fc             	cmp    -0x4(%ebp),%eax
c010295f:	7c ea                	jl     c010294b <bzer+0x5e>
c0102961:	c9                   	leave  
c0102962:	c3                   	ret    

c0102963 <strcmp>:
c0102963:	55                   	push   %ebp
c0102964:	89 e5                	mov    %esp,%ebp
c0102966:	83 ec 10             	sub    $0x10,%esp
c0102969:	8b 45 08             	mov    0x8(%ebp),%eax
c010296c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010296f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102972:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102975:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102978:	0f b6 00             	movzbl (%eax),%eax
c010297b:	88 45 f7             	mov    %al,-0x9(%ebp)
c010297e:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102982:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102985:	0f b6 00             	movzbl (%eax),%eax
c0102988:	88 45 f6             	mov    %al,-0xa(%ebp)
c010298b:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c010298f:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
c0102993:	75 10                	jne    c01029a5 <strcmp+0x42>
c0102995:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
c0102999:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
c010299d:	89 d1                	mov    %edx,%ecx
c010299f:	29 c1                	sub    %eax,%ecx
c01029a1:	89 c8                	mov    %ecx,%eax
c01029a3:	eb 17                	jmp    c01029bc <strcmp+0x59>
c01029a5:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
c01029a9:	3a 45 f6             	cmp    -0xa(%ebp),%al
c01029ac:	74 c7                	je     c0102975 <strcmp+0x12>
c01029ae:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
c01029b2:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
c01029b6:	89 d1                	mov    %edx,%ecx
c01029b8:	29 c1                	sub    %eax,%ecx
c01029ba:	89 c8                	mov    %ecx,%eax
c01029bc:	c9                   	leave  
c01029bd:	c3                   	ret    

c01029be <strcpy>:
c01029be:	55                   	push   %ebp
c01029bf:	89 e5                	mov    %esp,%ebp
c01029c1:	83 ec 10             	sub    $0x10,%esp
c01029c4:	8b 45 08             	mov    0x8(%ebp),%eax
c01029c7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01029ca:	8b 45 0c             	mov    0xc(%ebp),%eax
c01029cd:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01029d0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c01029d4:	74 06                	je     c01029dc <strcpy+0x1e>
c01029d6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c01029da:	75 05                	jne    c01029e1 <strcpy+0x23>
c01029dc:	8b 45 08             	mov    0x8(%ebp),%eax
c01029df:	eb 25                	jmp    c0102a06 <strcpy+0x48>
c01029e1:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01029e4:	0f b6 10             	movzbl (%eax),%edx
c01029e7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01029ea:	88 10                	mov    %dl,(%eax)
c01029ec:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c01029f0:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01029f3:	0f b6 00             	movzbl (%eax),%eax
c01029f6:	84 c0                	test   %al,%al
c01029f8:	0f 95 c0             	setne  %al
c01029fb:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c01029ff:	84 c0                	test   %al,%al
c0102a01:	75 de                	jne    c01029e1 <strcpy+0x23>
c0102a03:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a06:	c9                   	leave  
c0102a07:	c3                   	ret    

c0102a08 <strcat>:
c0102a08:	55                   	push   %ebp
c0102a09:	89 e5                	mov    %esp,%ebp
c0102a0b:	83 ec 10             	sub    $0x10,%esp
c0102a0e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a11:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0102a14:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a17:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0102a1a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
c0102a1e:	74 06                	je     c0102a26 <strcat+0x1e>
c0102a20:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0102a24:	75 07                	jne    c0102a2d <strcat+0x25>
c0102a26:	b8 00 00 00 00       	mov    $0x0,%eax
c0102a2b:	eb 3b                	jmp    c0102a68 <strcat+0x60>
c0102a2d:	90                   	nop
c0102a2e:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102a31:	0f b6 00             	movzbl (%eax),%eax
c0102a34:	84 c0                	test   %al,%al
c0102a36:	0f 95 c0             	setne  %al
c0102a39:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102a3d:	84 c0                	test   %al,%al
c0102a3f:	75 ed                	jne    c0102a2e <strcat+0x26>
c0102a41:	eb 0f                	jmp    c0102a52 <strcat+0x4a>
c0102a43:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a46:	0f b6 10             	movzbl (%eax),%edx
c0102a49:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0102a4c:	88 10                	mov    %dl,(%eax)
c0102a4e:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
c0102a52:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a55:	0f b6 00             	movzbl (%eax),%eax
c0102a58:	84 c0                	test   %al,%al
c0102a5a:	0f 95 c0             	setne  %al
c0102a5d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102a61:	84 c0                	test   %al,%al
c0102a63:	75 de                	jne    c0102a43 <strcat+0x3b>
c0102a65:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a68:	c9                   	leave  
c0102a69:	c3                   	ret    

c0102a6a <strlen>:
c0102a6a:	55                   	push   %ebp
c0102a6b:	89 e5                	mov    %esp,%ebp
c0102a6d:	83 ec 10             	sub    $0x10,%esp
c0102a70:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102a77:	eb 04                	jmp    c0102a7d <strlen+0x13>
c0102a79:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102a7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a80:	0f b6 00             	movzbl (%eax),%eax
c0102a83:	84 c0                	test   %al,%al
c0102a85:	0f 95 c0             	setne  %al
c0102a88:	83 45 08 01          	addl   $0x1,0x8(%ebp)
c0102a8c:	84 c0                	test   %al,%al
c0102a8e:	75 e9                	jne    c0102a79 <strlen+0xf>
c0102a90:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0102a93:	c9                   	leave  
c0102a94:	c3                   	ret    
c0102a95:	66 90                	xchg   %ax,%ax
c0102a97:	90                   	nop

c0102a98 <init_debug>:
c0102a98:	55                   	push   %ebp
c0102a99:	89 e5                	mov    %esp,%ebp
c0102a9b:	83 ec 28             	sub    $0x28,%esp
c0102a9e:	8b 15 20 a0 20 c0    	mov    0xc020a020,%edx
c0102aa4:	8d 45 e8             	lea    -0x18(%ebp),%eax
c0102aa7:	89 54 24 04          	mov    %edx,0x4(%esp)
c0102aab:	89 04 24             	mov    %eax,(%esp)
c0102aae:	e8 69 01 00 00       	call   c0102c1c <elf_form_multiboot>
c0102ab3:	83 ec 04             	sub    $0x4,%esp
c0102ab6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ab9:	a3 04 60 10 c0       	mov    %eax,0xc0106004
c0102abe:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102ac1:	a3 08 60 10 c0       	mov    %eax,0xc0106008
c0102ac6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102ac9:	a3 0c 60 10 c0       	mov    %eax,0xc010600c
c0102ace:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ad1:	a3 10 60 10 c0       	mov    %eax,0xc0106010
c0102ad6:	c9                   	leave  
c0102ad7:	c3                   	ret    

c0102ad8 <print_cur_status>:
c0102ad8:	55                   	push   %ebp
c0102ad9:	89 e5                	mov    %esp,%ebp
c0102adb:	83 ec 28             	sub    $0x28,%esp
c0102ade:	8c 4d f6             	mov    %cs,-0xa(%ebp)
c0102ae1:	8c 5d f4             	mov    %ds,-0xc(%ebp)
c0102ae4:	8c 45 f2             	mov    %es,-0xe(%ebp)
c0102ae7:	8c 55 f0             	mov    %ss,-0x10(%ebp)
c0102aea:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0102aee:	0f b7 c0             	movzwl %ax,%eax
c0102af1:	89 c2                	mov    %eax,%edx
c0102af3:	83 e2 03             	and    $0x3,%edx
c0102af6:	a1 14 60 10 c0       	mov    0xc0106014,%eax
c0102afb:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102aff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b03:	c7 04 24 08 50 10 c0 	movl   $0xc0105008,(%esp)
c0102b0a:	e8 c6 f8 ff ff       	call   c01023d5 <printk>
c0102b0f:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
c0102b13:	0f b7 d0             	movzwl %ax,%edx
c0102b16:	a1 14 60 10 c0       	mov    0xc0106014,%eax
c0102b1b:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b1f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b23:	c7 04 24 15 50 10 c0 	movl   $0xc0105015,(%esp)
c0102b2a:	e8 a6 f8 ff ff       	call   c01023d5 <printk>
c0102b2f:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
c0102b33:	0f b7 d0             	movzwl %ax,%edx
c0102b36:	a1 14 60 10 c0       	mov    0xc0106014,%eax
c0102b3b:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b3f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b43:	c7 04 24 22 50 10 c0 	movl   $0xc0105022,(%esp)
c0102b4a:	e8 86 f8 ff ff       	call   c01023d5 <printk>
c0102b4f:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
c0102b53:	0f b7 d0             	movzwl %ax,%edx
c0102b56:	a1 14 60 10 c0       	mov    0xc0106014,%eax
c0102b5b:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b5f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b63:	c7 04 24 2f 50 10 c0 	movl   $0xc010502f,(%esp)
c0102b6a:	e8 66 f8 ff ff       	call   c01023d5 <printk>
c0102b6f:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
c0102b73:	0f b7 d0             	movzwl %ax,%edx
c0102b76:	a1 14 60 10 c0       	mov    0xc0106014,%eax
c0102b7b:	89 54 24 08          	mov    %edx,0x8(%esp)
c0102b7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b83:	c7 04 24 3c 50 10 c0 	movl   $0xc010503c,(%esp)
c0102b8a:	e8 46 f8 ff ff       	call   c01023d5 <printk>
c0102b8f:	c9                   	leave  
c0102b90:	c3                   	ret    

c0102b91 <panic>:
c0102b91:	55                   	push   %ebp
c0102b92:	89 e5                	mov    %esp,%ebp
c0102b94:	83 ec 18             	sub    $0x18,%esp
c0102b97:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b9a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b9e:	c7 04 24 49 50 10 c0 	movl   $0xc0105049,(%esp)
c0102ba5:	e8 2b f8 ff ff       	call   c01023d5 <printk>
c0102baa:	e8 13 00 00 00       	call   c0102bc2 <print_stack_trace>
c0102baf:	c7 04 24 61 50 10 c0 	movl   $0xc0105061,(%esp)
c0102bb6:	e8 1a f8 ff ff       	call   c01023d5 <printk>
c0102bbb:	e8 18 ff ff ff       	call   c0102ad8 <print_cur_status>
c0102bc0:	eb fe                	jmp    c0102bc0 <panic+0x2f>

c0102bc2 <print_stack_trace>:
c0102bc2:	55                   	push   %ebp
c0102bc3:	89 e5                	mov    %esp,%ebp
c0102bc5:	53                   	push   %ebx
c0102bc6:	83 ec 24             	sub    $0x24,%esp
c0102bc9:	89 eb                	mov    %ebp,%ebx
c0102bcb:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c0102bce:	eb 3f                	jmp    c0102c0f <print_stack_trace+0x4d>
c0102bd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102bd3:	83 c0 04             	add    $0x4,%eax
c0102bd6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102bd9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102bdc:	8b 00                	mov    (%eax),%eax
c0102bde:	c7 44 24 04 04 60 10 	movl   $0xc0106004,0x4(%esp)
c0102be5:	c0 
c0102be6:	89 04 24             	mov    %eax,(%esp)
c0102be9:	e8 55 01 00 00       	call   c0102d43 <elf_look_symbol>
c0102bee:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0102bf1:	8b 12                	mov    (%edx),%edx
c0102bf3:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102bf7:	89 54 24 04          	mov    %edx,0x4(%esp)
c0102bfb:	c7 04 24 67 50 10 c0 	movl   $0xc0105067,(%esp)
c0102c02:	e8 ce f7 ff ff       	call   c01023d5 <printk>
c0102c07:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102c0a:	8b 00                	mov    (%eax),%eax
c0102c0c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102c0f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0102c13:	75 bb                	jne    c0102bd0 <print_stack_trace+0xe>
c0102c15:	83 c4 24             	add    $0x24,%esp
c0102c18:	5b                   	pop    %ebx
c0102c19:	5d                   	pop    %ebp
c0102c1a:	c3                   	ret    
c0102c1b:	90                   	nop

c0102c1c <elf_form_multiboot>:
c0102c1c:	55                   	push   %ebp
c0102c1d:	89 e5                	mov    %esp,%ebp
c0102c1f:	83 ec 38             	sub    $0x38,%esp
c0102c22:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c25:	8b 40 24             	mov    0x24(%eax),%eax
c0102c28:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102c2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c2e:	8b 50 28             	mov    0x28(%eax),%edx
c0102c31:	89 d0                	mov    %edx,%eax
c0102c33:	c1 e0 02             	shl    $0x2,%eax
c0102c36:	01 d0                	add    %edx,%eax
c0102c38:	c1 e0 03             	shl    $0x3,%eax
c0102c3b:	89 c2                	mov    %eax,%edx
c0102c3d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c40:	01 d0                	add    %edx,%eax
c0102c42:	8b 40 0c             	mov    0xc(%eax),%eax
c0102c45:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0102c48:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0102c4f:	e9 bd 00 00 00       	jmp    c0102d11 <elf_form_multiboot+0xf5>
c0102c54:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102c57:	89 d0                	mov    %edx,%eax
c0102c59:	c1 e0 02             	shl    $0x2,%eax
c0102c5c:	01 d0                	add    %edx,%eax
c0102c5e:	c1 e0 03             	shl    $0x3,%eax
c0102c61:	89 c2                	mov    %eax,%edx
c0102c63:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c66:	01 d0                	add    %edx,%eax
c0102c68:	8b 10                	mov    (%eax),%edx
c0102c6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0102c6d:	01 d0                	add    %edx,%eax
c0102c6f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0102c72:	c7 44 24 04 77 50 10 	movl   $0xc0105077,0x4(%esp)
c0102c79:	c0 
c0102c7a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102c7d:	89 04 24             	mov    %eax,(%esp)
c0102c80:	e8 de fc ff ff       	call   c0102963 <strcmp>
c0102c85:	85 c0                	test   %eax,%eax
c0102c87:	75 39                	jne    c0102cc2 <elf_form_multiboot+0xa6>
c0102c89:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102c8c:	89 d0                	mov    %edx,%eax
c0102c8e:	c1 e0 02             	shl    $0x2,%eax
c0102c91:	01 d0                	add    %edx,%eax
c0102c93:	c1 e0 03             	shl    $0x3,%eax
c0102c96:	89 c2                	mov    %eax,%edx
c0102c98:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102c9b:	01 d0                	add    %edx,%eax
c0102c9d:	8b 40 0c             	mov    0xc(%eax),%eax
c0102ca0:	2d 00 00 00 40       	sub    $0x40000000,%eax
c0102ca5:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0102ca8:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102cab:	89 d0                	mov    %edx,%eax
c0102cad:	c1 e0 02             	shl    $0x2,%eax
c0102cb0:	01 d0                	add    %edx,%eax
c0102cb2:	c1 e0 03             	shl    $0x3,%eax
c0102cb5:	89 c2                	mov    %eax,%edx
c0102cb7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102cba:	01 d0                	add    %edx,%eax
c0102cbc:	8b 40 14             	mov    0x14(%eax),%eax
c0102cbf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0102cc2:	c7 44 24 04 7f 50 10 	movl   $0xc010507f,0x4(%esp)
c0102cc9:	c0 
c0102cca:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0102ccd:	89 04 24             	mov    %eax,(%esp)
c0102cd0:	e8 8e fc ff ff       	call   c0102963 <strcmp>
c0102cd5:	85 c0                	test   %eax,%eax
c0102cd7:	75 34                	jne    c0102d0d <elf_form_multiboot+0xf1>
c0102cd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102cdc:	89 d0                	mov    %edx,%eax
c0102cde:	c1 e0 02             	shl    $0x2,%eax
c0102ce1:	01 d0                	add    %edx,%eax
c0102ce3:	c1 e0 03             	shl    $0x3,%eax
c0102ce6:	89 c2                	mov    %eax,%edx
c0102ce8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102ceb:	01 d0                	add    %edx,%eax
c0102ced:	8b 40 0c             	mov    0xc(%eax),%eax
c0102cf0:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0102cf3:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102cf6:	89 d0                	mov    %edx,%eax
c0102cf8:	c1 e0 02             	shl    $0x2,%eax
c0102cfb:	01 d0                	add    %edx,%eax
c0102cfd:	c1 e0 03             	shl    $0x3,%eax
c0102d00:	89 c2                	mov    %eax,%edx
c0102d02:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0102d05:	01 d0                	add    %edx,%eax
c0102d07:	8b 40 14             	mov    0x14(%eax),%eax
c0102d0a:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0102d0d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c0102d11:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0102d14:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d17:	8b 40 1c             	mov    0x1c(%eax),%eax
c0102d1a:	39 c2                	cmp    %eax,%edx
c0102d1c:	0f 82 32 ff ff ff    	jb     c0102c54 <elf_form_multiboot+0x38>
c0102d22:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d25:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0102d28:	89 10                	mov    %edx,(%eax)
c0102d2a:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0102d2d:	89 50 04             	mov    %edx,0x4(%eax)
c0102d30:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0102d33:	89 50 08             	mov    %edx,0x8(%eax)
c0102d36:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0102d39:	89 50 0c             	mov    %edx,0xc(%eax)
c0102d3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d3f:	c9                   	leave  
c0102d40:	c2 04 00             	ret    $0x4

c0102d43 <elf_look_symbol>:
c0102d43:	55                   	push   %ebp
c0102d44:	89 e5                	mov    %esp,%ebp
c0102d46:	83 ec 10             	sub    $0x10,%esp
c0102d49:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0102d50:	eb 78                	jmp    c0102dca <elf_look_symbol+0x87>
c0102d52:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d55:	8b 00                	mov    (%eax),%eax
c0102d57:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102d5a:	c1 e2 04             	shl    $0x4,%edx
c0102d5d:	01 d0                	add    %edx,%eax
c0102d5f:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
c0102d63:	0f b6 c0             	movzbl %al,%eax
c0102d66:	83 e0 0f             	and    $0xf,%eax
c0102d69:	83 f8 02             	cmp    $0x2,%eax
c0102d6c:	75 57                	jne    c0102dc5 <elf_look_symbol+0x82>
c0102d6e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d71:	8b 00                	mov    (%eax),%eax
c0102d73:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102d76:	c1 e2 04             	shl    $0x4,%edx
c0102d79:	01 d0                	add    %edx,%eax
c0102d7b:	8b 40 04             	mov    0x4(%eax),%eax
c0102d7e:	3b 45 08             	cmp    0x8(%ebp),%eax
c0102d81:	77 43                	ja     c0102dc6 <elf_look_symbol+0x83>
c0102d83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d86:	8b 00                	mov    (%eax),%eax
c0102d88:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102d8b:	c1 e2 04             	shl    $0x4,%edx
c0102d8e:	01 d0                	add    %edx,%eax
c0102d90:	8b 50 04             	mov    0x4(%eax),%edx
c0102d93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d96:	8b 00                	mov    (%eax),%eax
c0102d98:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0102d9b:	c1 e1 04             	shl    $0x4,%ecx
c0102d9e:	01 c8                	add    %ecx,%eax
c0102da0:	8b 40 08             	mov    0x8(%eax),%eax
c0102da3:	01 d0                	add    %edx,%eax
c0102da5:	3b 45 08             	cmp    0x8(%ebp),%eax
c0102da8:	76 1c                	jbe    c0102dc6 <elf_look_symbol+0x83>
c0102daa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102dad:	8b 40 08             	mov    0x8(%eax),%eax
c0102db0:	89 c2                	mov    %eax,%edx
c0102db2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102db5:	8b 00                	mov    (%eax),%eax
c0102db7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0102dba:	c1 e1 04             	shl    $0x4,%ecx
c0102dbd:	01 c8                	add    %ecx,%eax
c0102dbf:	8b 00                	mov    (%eax),%eax
c0102dc1:	01 d0                	add    %edx,%eax
c0102dc3:	eb 1e                	jmp    c0102de3 <elf_look_symbol+0xa0>
c0102dc5:	90                   	nop
c0102dc6:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
c0102dca:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0102dcd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102dd0:	8b 40 04             	mov    0x4(%eax),%eax
c0102dd3:	c1 e8 04             	shr    $0x4,%eax
c0102dd6:	39 c2                	cmp    %eax,%edx
c0102dd8:	0f 82 74 ff ff ff    	jb     c0102d52 <elf_look_symbol+0xf>
c0102dde:	b8 00 00 00 00       	mov    $0x0,%eax
c0102de3:	c9                   	leave  
c0102de4:	c3                   	ret    
c0102de5:	66 90                	xchg   %ax,%ax
c0102de7:	90                   	nop

c0102de8 <init_gdt>:
c0102de8:	55                   	push   %ebp
c0102de9:	89 e5                	mov    %esp,%ebp
c0102deb:	83 ec 28             	sub    $0x28,%esp
c0102dee:	66 c7 05 28 80 20 c0 	movw   $0x27,0xc0208028
c0102df5:	27 00 
c0102df7:	b8 00 80 20 c0       	mov    $0xc0208000,%eax
c0102dfc:	a3 2a 80 20 c0       	mov    %eax,0xc020802a
c0102e01:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
c0102e08:	00 
c0102e09:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0102e10:	00 
c0102e11:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
c0102e18:	00 
c0102e19:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102e20:	00 
c0102e21:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0102e28:	e8 bf 00 00 00       	call   c0102eec <gdt_set_gate>
c0102e2d:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102e34:	00 
c0102e35:	c7 44 24 0c 9a 00 00 	movl   $0x9a,0xc(%esp)
c0102e3c:	00 
c0102e3d:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102e44:	ff 
c0102e45:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102e4c:	00 
c0102e4d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0102e54:	e8 93 00 00 00       	call   c0102eec <gdt_set_gate>
c0102e59:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102e60:	00 
c0102e61:	c7 44 24 0c 92 00 00 	movl   $0x92,0xc(%esp)
c0102e68:	00 
c0102e69:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102e70:	ff 
c0102e71:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102e78:	00 
c0102e79:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0102e80:	e8 67 00 00 00       	call   c0102eec <gdt_set_gate>
c0102e85:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102e8c:	00 
c0102e8d:	c7 44 24 0c fa 00 00 	movl   $0xfa,0xc(%esp)
c0102e94:	00 
c0102e95:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102e9c:	ff 
c0102e9d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102ea4:	00 
c0102ea5:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
c0102eac:	e8 3b 00 00 00       	call   c0102eec <gdt_set_gate>
c0102eb1:	c7 44 24 10 cf 00 00 	movl   $0xcf,0x10(%esp)
c0102eb8:	00 
c0102eb9:	c7 44 24 0c f2 00 00 	movl   $0xf2,0xc(%esp)
c0102ec0:	00 
c0102ec1:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
c0102ec8:	ff 
c0102ec9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0102ed0:	00 
c0102ed1:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
c0102ed8:	e8 0f 00 00 00       	call   c0102eec <gdt_set_gate>
c0102edd:	b8 28 80 20 c0       	mov    $0xc0208028,%eax
c0102ee2:	89 04 24             	mov    %eax,(%esp)
c0102ee5:	e8 16 f1 ff ff       	call   c0102000 <gdt_flush>
c0102eea:	c9                   	leave  
c0102eeb:	c3                   	ret    

c0102eec <gdt_set_gate>:
c0102eec:	55                   	push   %ebp
c0102eed:	89 e5                	mov    %esp,%ebp
c0102eef:	83 ec 08             	sub    $0x8,%esp
c0102ef2:	8b 55 14             	mov    0x14(%ebp),%edx
c0102ef5:	8b 45 18             	mov    0x18(%ebp),%eax
c0102ef8:	88 55 fc             	mov    %dl,-0x4(%ebp)
c0102efb:	88 45 f8             	mov    %al,-0x8(%ebp)
c0102efe:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f01:	89 c2                	mov    %eax,%edx
c0102f03:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f06:	66 89 14 c5 02 80 20 	mov    %dx,-0x3fdf7ffe(,%eax,8)
c0102f0d:	c0 
c0102f0e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f11:	c1 e8 10             	shr    $0x10,%eax
c0102f14:	89 c2                	mov    %eax,%edx
c0102f16:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f19:	88 14 c5 04 80 20 c0 	mov    %dl,-0x3fdf7ffc(,%eax,8)
c0102f20:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f23:	c1 e8 18             	shr    $0x18,%eax
c0102f26:	89 c2                	mov    %eax,%edx
c0102f28:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f2b:	88 14 c5 07 80 20 c0 	mov    %dl,-0x3fdf7ff9(,%eax,8)
c0102f32:	8b 45 10             	mov    0x10(%ebp),%eax
c0102f35:	89 c2                	mov    %eax,%edx
c0102f37:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f3a:	66 89 14 c5 00 80 20 	mov    %dx,-0x3fdf8000(,%eax,8)
c0102f41:	c0 
c0102f42:	8b 45 10             	mov    0x10(%ebp),%eax
c0102f45:	c1 e8 10             	shr    $0x10,%eax
c0102f48:	89 c2                	mov    %eax,%edx
c0102f4a:	83 e2 0f             	and    $0xf,%edx
c0102f4d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f50:	88 14 c5 06 80 20 c0 	mov    %dl,-0x3fdf7ffa(,%eax,8)
c0102f57:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f5a:	0f b6 04 c5 06 80 20 	movzbl -0x3fdf7ffa(,%eax,8),%eax
c0102f61:	c0 
c0102f62:	0f b6 55 f8          	movzbl -0x8(%ebp),%edx
c0102f66:	83 e2 f0             	and    $0xfffffff0,%edx
c0102f69:	09 d0                	or     %edx,%eax
c0102f6b:	89 c2                	mov    %eax,%edx
c0102f6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f70:	88 14 c5 06 80 20 c0 	mov    %dl,-0x3fdf7ffa(,%eax,8)
c0102f77:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f7a:	0f b6 55 fc          	movzbl -0x4(%ebp),%edx
c0102f7e:	88 14 c5 05 80 20 c0 	mov    %dl,-0x3fdf7ffb(,%eax,8)
c0102f85:	c9                   	leave  
c0102f86:	c3                   	ret    
c0102f87:	90                   	nop

c0102f88 <init_heap>:
c0102f88:	55                   	push   %ebp
c0102f89:	89 e5                	mov    %esp,%ebp
c0102f8b:	c7 05 18 60 10 c0 00 	movl   $0x0,0xc0106018
c0102f92:	00 00 00 
c0102f95:	5d                   	pop    %ebp
c0102f96:	c3                   	ret    

c0102f97 <kmalloc>:
c0102f97:	55                   	push   %ebp
c0102f98:	89 e5                	mov    %esp,%ebp
c0102f9a:	83 ec 28             	sub    $0x28,%esp
c0102f9d:	83 45 08 0c          	addl   $0xc,0x8(%ebp)
c0102fa1:	a1 18 60 10 c0       	mov    0xc0106018,%eax
c0102fa6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0102fa9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0102fb0:	eb 53                	jmp    c0103005 <kmalloc+0x6e>
c0102fb2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fb5:	0f b6 40 08          	movzbl 0x8(%eax),%eax
c0102fb9:	83 e0 01             	and    $0x1,%eax
c0102fbc:	84 c0                	test   %al,%al
c0102fbe:	75 37                	jne    c0102ff7 <kmalloc+0x60>
c0102fc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fc3:	8b 40 08             	mov    0x8(%eax),%eax
c0102fc6:	d1 e8                	shr    %eax
c0102fc8:	3b 45 08             	cmp    0x8(%ebp),%eax
c0102fcb:	76 2a                	jbe    c0102ff7 <kmalloc+0x60>
c0102fcd:	8b 45 08             	mov    0x8(%ebp),%eax
c0102fd0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102fd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fd7:	89 04 24             	mov    %eax,(%esp)
c0102fda:	e8 ba 02 00 00       	call   c0103299 <split_chunk>
c0102fdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fe2:	0f b6 50 08          	movzbl 0x8(%eax),%edx
c0102fe6:	83 ca 01             	or     $0x1,%edx
c0102fe9:	88 50 08             	mov    %dl,0x8(%eax)
c0102fec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102fef:	83 c0 0c             	add    $0xc,%eax
c0102ff2:	e9 a4 00 00 00       	jmp    c010309b <kmalloc+0x104>
c0102ff7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0102ffa:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0102ffd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103000:	8b 00                	mov    (%eax),%eax
c0103002:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103005:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0103009:	75 a7                	jne    c0102fb2 <kmalloc+0x1b>
c010300b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c010300f:	74 14                	je     c0103025 <kmalloc+0x8e>
c0103011:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103014:	8b 40 08             	mov    0x8(%eax),%eax
c0103017:	d1 e8                	shr    %eax
c0103019:	89 c2                	mov    %eax,%edx
c010301b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010301e:	01 d0                	add    %edx,%eax
c0103020:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103023:	eb 0f                	jmp    c0103034 <kmalloc+0x9d>
c0103025:	c7 45 ec 00 00 00 e0 	movl   $0xe0000000,-0x14(%ebp)
c010302c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010302f:	a3 18 60 10 c0       	mov    %eax,0xc0106018
c0103034:	8b 45 08             	mov    0x8(%ebp),%eax
c0103037:	89 44 24 04          	mov    %eax,0x4(%esp)
c010303b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010303e:	89 04 24             	mov    %eax,(%esp)
c0103041:	e8 57 00 00 00       	call   c010309d <alloc_chunk>
c0103046:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103049:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010304c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010304f:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0103052:	89 50 04             	mov    %edx,0x4(%eax)
c0103055:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103058:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010305e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103061:	0f b6 50 08          	movzbl 0x8(%eax),%edx
c0103065:	83 ca 01             	or     $0x1,%edx
c0103068:	88 50 08             	mov    %dl,0x8(%eax)
c010306b:	8b 45 08             	mov    0x8(%ebp),%eax
c010306e:	89 c2                	mov    %eax,%edx
c0103070:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
c0103076:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103079:	8d 0c 12             	lea    (%edx,%edx,1),%ecx
c010307c:	8b 50 08             	mov    0x8(%eax),%edx
c010307f:	83 e2 01             	and    $0x1,%edx
c0103082:	09 ca                	or     %ecx,%edx
c0103084:	89 50 08             	mov    %edx,0x8(%eax)
c0103087:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c010308b:	74 08                	je     c0103095 <kmalloc+0xfe>
c010308d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103090:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103093:	89 10                	mov    %edx,(%eax)
c0103095:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103098:	83 c0 0c             	add    $0xc,%eax
c010309b:	c9                   	leave  
c010309c:	c3                   	ret    

c010309d <alloc_chunk>:
c010309d:	55                   	push   %ebp
c010309e:	89 e5                	mov    %esp,%ebp
c01030a0:	83 ec 28             	sub    $0x28,%esp
c01030a3:	eb 3b                	jmp    c01030e0 <alloc_chunk+0x43>
c01030a5:	e8 4a 06 00 00       	call   c01036f4 <pmm_alloc_page>
c01030aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01030ad:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c01030b2:	c7 44 24 0c 03 00 00 	movl   $0x3,0xc(%esp)
c01030b9:	00 
c01030ba:	8b 55 f4             	mov    -0xc(%ebp),%edx
c01030bd:	89 54 24 08          	mov    %edx,0x8(%esp)
c01030c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01030c5:	c7 04 24 00 90 20 c0 	movl   $0xc0209000,(%esp)
c01030cc:	e8 19 03 00 00       	call   c01033ea <map>
c01030d1:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c01030d6:	05 00 10 00 00       	add    $0x1000,%eax
c01030db:	a3 04 50 10 c0       	mov    %eax,0xc0105004
c01030e0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01030e3:	8b 55 08             	mov    0x8(%ebp),%edx
c01030e6:	01 c2                	add    %eax,%edx
c01030e8:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c01030ed:	39 c2                	cmp    %eax,%edx
c01030ef:	77 b4                	ja     c01030a5 <alloc_chunk+0x8>
c01030f1:	c9                   	leave  
c01030f2:	c3                   	ret    

c01030f3 <kfree>:
c01030f3:	55                   	push   %ebp
c01030f4:	89 e5                	mov    %esp,%ebp
c01030f6:	83 ec 28             	sub    $0x28,%esp
c01030f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01030fc:	83 e8 0c             	sub    $0xc,%eax
c01030ff:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103102:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103105:	0f b6 50 08          	movzbl 0x8(%eax),%edx
c0103109:	83 e2 fe             	and    $0xfffffffe,%edx
c010310c:	88 50 08             	mov    %dl,0x8(%eax)
c010310f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103112:	89 04 24             	mov    %eax,(%esp)
c0103115:	e8 02 00 00 00       	call   c010311c <glue_chunk>
c010311a:	c9                   	leave  
c010311b:	c3                   	ret    

c010311c <glue_chunk>:
c010311c:	55                   	push   %ebp
c010311d:	89 e5                	mov    %esp,%ebp
c010311f:	83 ec 18             	sub    $0x18,%esp
c0103122:	8b 45 08             	mov    0x8(%ebp),%eax
c0103125:	8b 00                	mov    (%eax),%eax
c0103127:	85 c0                	test   %eax,%eax
c0103129:	74 63                	je     c010318e <glue_chunk+0x72>
c010312b:	8b 45 08             	mov    0x8(%ebp),%eax
c010312e:	8b 00                	mov    (%eax),%eax
c0103130:	0f b6 40 08          	movzbl 0x8(%eax),%eax
c0103134:	83 e0 01             	and    $0x1,%eax
c0103137:	84 c0                	test   %al,%al
c0103139:	75 53                	jne    c010318e <glue_chunk+0x72>
c010313b:	8b 45 08             	mov    0x8(%ebp),%eax
c010313e:	8b 40 08             	mov    0x8(%eax),%eax
c0103141:	d1 e8                	shr    %eax
c0103143:	89 c2                	mov    %eax,%edx
c0103145:	8b 45 08             	mov    0x8(%ebp),%eax
c0103148:	8b 00                	mov    (%eax),%eax
c010314a:	8b 40 08             	mov    0x8(%eax),%eax
c010314d:	d1 e8                	shr    %eax
c010314f:	01 d0                	add    %edx,%eax
c0103151:	89 c2                	mov    %eax,%edx
c0103153:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
c0103159:	8b 45 08             	mov    0x8(%ebp),%eax
c010315c:	8d 0c 12             	lea    (%edx,%edx,1),%ecx
c010315f:	8b 50 08             	mov    0x8(%eax),%edx
c0103162:	83 e2 01             	and    $0x1,%edx
c0103165:	09 ca                	or     %ecx,%edx
c0103167:	89 50 08             	mov    %edx,0x8(%eax)
c010316a:	8b 45 08             	mov    0x8(%ebp),%eax
c010316d:	8b 00                	mov    (%eax),%eax
c010316f:	8b 00                	mov    (%eax),%eax
c0103171:	85 c0                	test   %eax,%eax
c0103173:	74 0d                	je     c0103182 <glue_chunk+0x66>
c0103175:	8b 45 08             	mov    0x8(%ebp),%eax
c0103178:	8b 00                	mov    (%eax),%eax
c010317a:	8b 00                	mov    (%eax),%eax
c010317c:	8b 55 08             	mov    0x8(%ebp),%edx
c010317f:	89 50 04             	mov    %edx,0x4(%eax)
c0103182:	8b 45 08             	mov    0x8(%ebp),%eax
c0103185:	8b 00                	mov    (%eax),%eax
c0103187:	8b 10                	mov    (%eax),%edx
c0103189:	8b 45 08             	mov    0x8(%ebp),%eax
c010318c:	89 10                	mov    %edx,(%eax)
c010318e:	8b 45 08             	mov    0x8(%ebp),%eax
c0103191:	8b 40 04             	mov    0x4(%eax),%eax
c0103194:	85 c0                	test   %eax,%eax
c0103196:	74 62                	je     c01031fa <glue_chunk+0xde>
c0103198:	8b 45 08             	mov    0x8(%ebp),%eax
c010319b:	8b 40 04             	mov    0x4(%eax),%eax
c010319e:	0f b6 40 08          	movzbl 0x8(%eax),%eax
c01031a2:	83 e0 01             	and    $0x1,%eax
c01031a5:	84 c0                	test   %al,%al
c01031a7:	75 51                	jne    c01031fa <glue_chunk+0xde>
c01031a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01031ac:	8b 40 04             	mov    0x4(%eax),%eax
c01031af:	8b 55 08             	mov    0x8(%ebp),%edx
c01031b2:	8b 52 04             	mov    0x4(%edx),%edx
c01031b5:	8b 52 08             	mov    0x8(%edx),%edx
c01031b8:	d1 ea                	shr    %edx
c01031ba:	89 d1                	mov    %edx,%ecx
c01031bc:	8b 55 08             	mov    0x8(%ebp),%edx
c01031bf:	8b 52 08             	mov    0x8(%edx),%edx
c01031c2:	d1 ea                	shr    %edx
c01031c4:	01 ca                	add    %ecx,%edx
c01031c6:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
c01031cc:	8d 0c 12             	lea    (%edx,%edx,1),%ecx
c01031cf:	8b 50 08             	mov    0x8(%eax),%edx
c01031d2:	83 e2 01             	and    $0x1,%edx
c01031d5:	09 ca                	or     %ecx,%edx
c01031d7:	89 50 08             	mov    %edx,0x8(%eax)
c01031da:	8b 45 08             	mov    0x8(%ebp),%eax
c01031dd:	8b 00                	mov    (%eax),%eax
c01031df:	85 c0                	test   %eax,%eax
c01031e1:	74 0e                	je     c01031f1 <glue_chunk+0xd5>
c01031e3:	8b 45 08             	mov    0x8(%ebp),%eax
c01031e6:	8b 00                	mov    (%eax),%eax
c01031e8:	8b 55 08             	mov    0x8(%ebp),%edx
c01031eb:	8b 52 04             	mov    0x4(%edx),%edx
c01031ee:	89 50 04             	mov    %edx,0x4(%eax)
c01031f1:	8b 45 08             	mov    0x8(%ebp),%eax
c01031f4:	8b 40 04             	mov    0x4(%eax),%eax
c01031f7:	89 45 08             	mov    %eax,0x8(%ebp)
c01031fa:	8b 45 08             	mov    0x8(%ebp),%eax
c01031fd:	8b 00                	mov    (%eax),%eax
c01031ff:	85 c0                	test   %eax,%eax
c0103201:	75 0b                	jne    c010320e <glue_chunk+0xf2>
c0103203:	8b 45 08             	mov    0x8(%ebp),%eax
c0103206:	89 04 24             	mov    %eax,(%esp)
c0103209:	e8 02 00 00 00       	call   c0103210 <free_chunk>
c010320e:	c9                   	leave  
c010320f:	c3                   	ret    

c0103210 <free_chunk>:
c0103210:	55                   	push   %ebp
c0103211:	89 e5                	mov    %esp,%ebp
c0103213:	83 ec 28             	sub    $0x28,%esp
c0103216:	8b 45 08             	mov    0x8(%ebp),%eax
c0103219:	8b 40 04             	mov    0x4(%eax),%eax
c010321c:	85 c0                	test   %eax,%eax
c010321e:	75 0c                	jne    c010322c <free_chunk+0x1c>
c0103220:	c7 05 18 60 10 c0 00 	movl   $0x0,0xc0106018
c0103227:	00 00 00 
c010322a:	eb 59                	jmp    c0103285 <free_chunk+0x75>
c010322c:	8b 45 08             	mov    0x8(%ebp),%eax
c010322f:	8b 40 04             	mov    0x4(%eax),%eax
c0103232:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0103238:	eb 4b                	jmp    c0103285 <free_chunk+0x75>
c010323a:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c010323f:	2d 00 10 00 00       	sub    $0x1000,%eax
c0103244:	a3 04 50 10 c0       	mov    %eax,0xc0105004
c0103249:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c010324e:	8d 55 f4             	lea    -0xc(%ebp),%edx
c0103251:	89 54 24 08          	mov    %edx,0x8(%esp)
c0103255:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103259:	c7 04 24 00 90 20 c0 	movl   $0xc0209000,(%esp)
c0103260:	e8 8b 02 00 00       	call   c01034f0 <get_mapping>
c0103265:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c010326a:	89 44 24 04          	mov    %eax,0x4(%esp)
c010326e:	c7 04 24 00 90 20 c0 	movl   $0xc0209000,(%esp)
c0103275:	e8 1a 02 00 00       	call   c0103494 <unmap>
c010327a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010327d:	89 04 24             	mov    %eax,(%esp)
c0103280:	e8 91 04 00 00       	call   c0103716 <pmm_free_page>
c0103285:	a1 04 50 10 c0       	mov    0xc0105004,%eax
c010328a:	8d 90 00 f0 ff ff    	lea    -0x1000(%eax),%edx
c0103290:	8b 45 08             	mov    0x8(%ebp),%eax
c0103293:	39 c2                	cmp    %eax,%edx
c0103295:	73 a3                	jae    c010323a <free_chunk+0x2a>
c0103297:	c9                   	leave  
c0103298:	c3                   	ret    

c0103299 <split_chunk>:
c0103299:	55                   	push   %ebp
c010329a:	89 e5                	mov    %esp,%ebp
c010329c:	83 ec 10             	sub    $0x10,%esp
c010329f:	8b 45 08             	mov    0x8(%ebp),%eax
c01032a2:	8b 40 08             	mov    0x8(%eax),%eax
c01032a5:	d1 e8                	shr    %eax
c01032a7:	2b 45 0c             	sub    0xc(%ebp),%eax
c01032aa:	83 f8 0c             	cmp    $0xc,%eax
c01032ad:	76 7a                	jbe    c0103329 <split_chunk+0x90>
c01032af:	8b 45 08             	mov    0x8(%ebp),%eax
c01032b2:	8b 40 08             	mov    0x8(%eax),%eax
c01032b5:	d1 e8                	shr    %eax
c01032b7:	89 c2                	mov    %eax,%edx
c01032b9:	8b 45 08             	mov    0x8(%ebp),%eax
c01032bc:	01 d0                	add    %edx,%eax
c01032be:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01032c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01032c4:	8b 55 08             	mov    0x8(%ebp),%edx
c01032c7:	89 50 04             	mov    %edx,0x4(%eax)
c01032ca:	8b 45 08             	mov    0x8(%ebp),%eax
c01032cd:	8b 10                	mov    (%eax),%edx
c01032cf:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01032d2:	89 10                	mov    %edx,(%eax)
c01032d4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01032d7:	0f b6 50 08          	movzbl 0x8(%eax),%edx
c01032db:	83 e2 fe             	and    $0xfffffffe,%edx
c01032de:	88 50 08             	mov    %dl,0x8(%eax)
c01032e1:	8b 45 08             	mov    0x8(%ebp),%eax
c01032e4:	8b 40 08             	mov    0x8(%eax),%eax
c01032e7:	d1 e8                	shr    %eax
c01032e9:	2b 45 0c             	sub    0xc(%ebp),%eax
c01032ec:	89 c2                	mov    %eax,%edx
c01032ee:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
c01032f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01032f7:	8d 0c 12             	lea    (%edx,%edx,1),%ecx
c01032fa:	8b 50 08             	mov    0x8(%eax),%edx
c01032fd:	83 e2 01             	and    $0x1,%edx
c0103300:	09 ca                	or     %ecx,%edx
c0103302:	89 50 08             	mov    %edx,0x8(%eax)
c0103305:	8b 45 08             	mov    0x8(%ebp),%eax
c0103308:	8b 55 fc             	mov    -0x4(%ebp),%edx
c010330b:	89 10                	mov    %edx,(%eax)
c010330d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103310:	89 c2                	mov    %eax,%edx
c0103312:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
c0103318:	8b 45 08             	mov    0x8(%ebp),%eax
c010331b:	8d 0c 12             	lea    (%edx,%edx,1),%ecx
c010331e:	8b 50 08             	mov    0x8(%eax),%edx
c0103321:	83 e2 01             	and    $0x1,%edx
c0103324:	09 ca                	or     %ecx,%edx
c0103326:	89 50 08             	mov    %edx,0x8(%eax)
c0103329:	c9                   	leave  
c010332a:	c3                   	ret    
c010332b:	90                   	nop

c010332c <init_vmm>:
c010332c:	55                   	push   %ebp
c010332d:	89 e5                	mov    %esp,%ebp
c010332f:	83 ec 38             	sub    $0x38,%esp
c0103332:	c7 45 ec 00 03 00 00 	movl   $0x300,-0x14(%ebp)
c0103339:	8b 45 ec             	mov    -0x14(%ebp),%eax
c010333c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010333f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0103346:	eb 27                	jmp    c010336f <init_vmm+0x43>
c0103348:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010334b:	c1 e0 0c             	shl    $0xc,%eax
c010334e:	05 00 70 10 c0       	add    $0xc0107000,%eax
c0103353:	05 00 00 00 40       	add    $0x40000000,%eax
c0103358:	89 c2                	mov    %eax,%edx
c010335a:	83 ca 03             	or     $0x3,%edx
c010335d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103360:	89 14 85 00 90 20 c0 	mov    %edx,-0x3fdf7000(,%eax,4)
c0103367:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c010336b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
c010336f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103372:	83 e8 80             	sub    $0xffffff80,%eax
c0103375:	3b 45 f4             	cmp    -0xc(%ebp),%eax
c0103378:	77 ce                	ja     c0103348 <init_vmm+0x1c>
c010337a:	c7 45 e8 00 70 10 c0 	movl   $0xc0107000,-0x18(%ebp)
c0103381:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
c0103388:	eb 1e                	jmp    c01033a8 <init_vmm+0x7c>
c010338a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010338d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103394:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0103397:	01 d0                	add    %edx,%eax
c0103399:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010339c:	c1 e2 0c             	shl    $0xc,%edx
c010339f:	83 ca 03             	or     $0x3,%edx
c01033a2:	89 10                	mov    %edx,(%eax)
c01033a4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
c01033a8:	81 7d f4 ff ff 01 00 	cmpl   $0x1ffff,-0xc(%ebp)
c01033af:	76 d9                	jbe    c010338a <init_vmm+0x5e>
c01033b1:	b8 00 90 20 c0       	mov    $0xc0209000,%eax
c01033b6:	05 00 00 00 40       	add    $0x40000000,%eax
c01033bb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01033be:	c7 44 24 04 88 35 10 	movl   $0xc0103588,0x4(%esp)
c01033c5:	c0 
c01033c6:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
c01033cd:	e8 2c 0e 00 00       	call   c01041fe <register_interrupt_handler>
c01033d2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01033d5:	89 04 24             	mov    %eax,(%esp)
c01033d8:	e8 02 00 00 00       	call   c01033df <switch_pgd>
c01033dd:	c9                   	leave  
c01033de:	c3                   	ret    

c01033df <switch_pgd>:
c01033df:	55                   	push   %ebp
c01033e0:	89 e5                	mov    %esp,%ebp
c01033e2:	8b 45 08             	mov    0x8(%ebp),%eax
c01033e5:	0f 22 d8             	mov    %eax,%cr3
c01033e8:	5d                   	pop    %ebp
c01033e9:	c3                   	ret    

c01033ea <map>:
c01033ea:	55                   	push   %ebp
c01033eb:	89 e5                	mov    %esp,%ebp
c01033ed:	83 ec 28             	sub    $0x28,%esp
c01033f0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033f3:	c1 e8 16             	shr    $0x16,%eax
c01033f6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c01033f9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033fc:	c1 e8 0c             	shr    $0xc,%eax
c01033ff:	25 ff 03 00 00       	and    $0x3ff,%eax
c0103404:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103407:	8b 45 f0             	mov    -0x10(%ebp),%eax
c010340a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103411:	8b 45 08             	mov    0x8(%ebp),%eax
c0103414:	01 d0                	add    %edx,%eax
c0103416:	8b 00                	mov    (%eax),%eax
c0103418:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010341d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103420:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0103424:	75 3f                	jne    c0103465 <map+0x7b>
c0103426:	e8 c9 02 00 00       	call   c01036f4 <pmm_alloc_page>
c010342b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010342e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103431:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103438:	8b 45 08             	mov    0x8(%ebp),%eax
c010343b:	01 d0                	add    %edx,%eax
c010343d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0103440:	83 ca 03             	or     $0x3,%edx
c0103443:	89 10                	mov    %edx,(%eax)
c0103445:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103448:	2d 00 00 00 40       	sub    $0x40000000,%eax
c010344d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103450:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
c0103457:	00 
c0103458:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010345b:	89 04 24             	mov    %eax,(%esp)
c010345e:	e8 8a f4 ff ff       	call   c01028ed <bzer>
c0103463:	eb 0b                	jmp    c0103470 <map+0x86>
c0103465:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103468:	2d 00 00 00 40       	sub    $0x40000000,%eax
c010346d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103470:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0103473:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c010347a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010347d:	01 c2                	add    %eax,%edx
c010347f:	8b 45 10             	mov    0x10(%ebp),%eax
c0103482:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103487:	0b 45 14             	or     0x14(%ebp),%eax
c010348a:	89 02                	mov    %eax,(%edx)
c010348c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010348f:	0f 01 38             	invlpg (%eax)
c0103492:	c9                   	leave  
c0103493:	c3                   	ret    

c0103494 <unmap>:
c0103494:	55                   	push   %ebp
c0103495:	89 e5                	mov    %esp,%ebp
c0103497:	83 ec 10             	sub    $0x10,%esp
c010349a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010349d:	c1 e8 16             	shr    $0x16,%eax
c01034a0:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01034a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01034a6:	c1 e8 0c             	shr    $0xc,%eax
c01034a9:	25 ff 03 00 00       	and    $0x3ff,%eax
c01034ae:	89 45 f8             	mov    %eax,-0x8(%ebp)
c01034b1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01034b4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01034bb:	8b 45 08             	mov    0x8(%ebp),%eax
c01034be:	01 d0                	add    %edx,%eax
c01034c0:	8b 00                	mov    (%eax),%eax
c01034c2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01034c7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c01034ca:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c01034ce:	74 1d                	je     c01034ed <unmap+0x59>
c01034d0:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01034d3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c01034da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01034dd:	01 d0                	add    %edx,%eax
c01034df:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01034e5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01034e8:	0f 01 38             	invlpg (%eax)
c01034eb:	eb 01                	jmp    c01034ee <unmap+0x5a>
c01034ed:	90                   	nop
c01034ee:	c9                   	leave  
c01034ef:	c3                   	ret    

c01034f0 <get_mapping>:
c01034f0:	55                   	push   %ebp
c01034f1:	89 e5                	mov    %esp,%ebp
c01034f3:	83 ec 10             	sub    $0x10,%esp
c01034f6:	8b 45 0c             	mov    0xc(%ebp),%eax
c01034f9:	c1 e8 16             	shr    $0x16,%eax
c01034fc:	89 45 fc             	mov    %eax,-0x4(%ebp)
c01034ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103502:	c1 e8 0c             	shr    $0xc,%eax
c0103505:	25 ff 03 00 00       	and    $0x3ff,%eax
c010350a:	89 45 f8             	mov    %eax,-0x8(%ebp)
c010350d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103510:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103517:	8b 45 08             	mov    0x8(%ebp),%eax
c010351a:	01 d0                	add    %edx,%eax
c010351c:	8b 00                	mov    (%eax),%eax
c010351e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0103523:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103526:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c010352a:	75 07                	jne    c0103533 <get_mapping+0x43>
c010352c:	b8 00 00 00 00       	mov    $0x0,%eax
c0103531:	eb 50                	jmp    c0103583 <get_mapping+0x93>
c0103533:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103536:	2d 00 00 00 40       	sub    $0x40000000,%eax
c010353b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010353e:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0103541:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103548:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010354b:	01 d0                	add    %edx,%eax
c010354d:	8b 00                	mov    (%eax),%eax
c010354f:	85 c0                	test   %eax,%eax
c0103551:	74 2b                	je     c010357e <get_mapping+0x8e>
c0103553:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c0103557:	74 25                	je     c010357e <get_mapping+0x8e>
c0103559:	8b 45 f8             	mov    -0x8(%ebp),%eax
c010355c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0103563:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103566:	01 d0                	add    %edx,%eax
c0103568:	8b 00                	mov    (%eax),%eax
c010356a:	89 c2                	mov    %eax,%edx
c010356c:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0103572:	8b 45 10             	mov    0x10(%ebp),%eax
c0103575:	89 10                	mov    %edx,(%eax)
c0103577:	b8 01 00 00 00       	mov    $0x1,%eax
c010357c:	eb 05                	jmp    c0103583 <get_mapping+0x93>
c010357e:	b8 00 00 00 00       	mov    $0x0,%eax
c0103583:	c9                   	leave  
c0103584:	c3                   	ret    
c0103585:	66 90                	xchg   %ax,%ax
c0103587:	90                   	nop

c0103588 <page_fault>:
c0103588:	55                   	push   %ebp
c0103589:	89 e5                	mov    %esp,%ebp
c010358b:	53                   	push   %ebx
c010358c:	83 ec 24             	sub    $0x24,%esp
c010358f:	0f 20 d3             	mov    %cr2,%ebx
c0103592:	89 5d f4             	mov    %ebx,-0xc(%ebp)
c0103595:	8b 45 08             	mov    0x8(%ebp),%eax
c0103598:	8b 40 2c             	mov    0x2c(%eax),%eax
c010359b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c010359e:	89 54 24 08          	mov    %edx,0x8(%esp)
c01035a2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035a6:	c7 04 24 88 50 10 c0 	movl   $0xc0105088,(%esp)
c01035ad:	e8 23 ee ff ff       	call   c01023d5 <printk>
c01035b2:	8b 45 08             	mov    0x8(%ebp),%eax
c01035b5:	8b 40 28             	mov    0x28(%eax),%eax
c01035b8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035bc:	c7 04 24 bb 50 10 c0 	movl   $0xc01050bb,(%esp)
c01035c3:	e8 0d ee ff ff       	call   c01023d5 <printk>
c01035c8:	8b 45 08             	mov    0x8(%ebp),%eax
c01035cb:	8b 40 28             	mov    0x28(%eax),%eax
c01035ce:	83 e0 01             	and    $0x1,%eax
c01035d1:	85 c0                	test   %eax,%eax
c01035d3:	75 0c                	jne    c01035e1 <page_fault+0x59>
c01035d5:	c7 04 24 cc 50 10 c0 	movl   $0xc01050cc,(%esp)
c01035dc:	e8 f4 ed ff ff       	call   c01023d5 <printk>
c01035e1:	8b 45 08             	mov    0x8(%ebp),%eax
c01035e4:	8b 40 28             	mov    0x28(%eax),%eax
c01035e7:	83 e0 02             	and    $0x2,%eax
c01035ea:	85 c0                	test   %eax,%eax
c01035ec:	74 0e                	je     c01035fc <page_fault+0x74>
c01035ee:	c7 04 24 ed 50 10 c0 	movl   $0xc01050ed,(%esp)
c01035f5:	e8 db ed ff ff       	call   c01023d5 <printk>
c01035fa:	eb 0c                	jmp    c0103608 <page_fault+0x80>
c01035fc:	c7 04 24 fb 50 10 c0 	movl   $0xc01050fb,(%esp)
c0103603:	e8 cd ed ff ff       	call   c01023d5 <printk>
c0103608:	8b 45 08             	mov    0x8(%ebp),%eax
c010360b:	8b 40 28             	mov    0x28(%eax),%eax
c010360e:	83 e0 04             	and    $0x4,%eax
c0103611:	85 c0                	test   %eax,%eax
c0103613:	74 0e                	je     c0103623 <page_fault+0x9b>
c0103615:	c7 04 24 07 51 10 c0 	movl   $0xc0105107,(%esp)
c010361c:	e8 b4 ed ff ff       	call   c01023d5 <printk>
c0103621:	eb 0c                	jmp    c010362f <page_fault+0xa7>
c0103623:	c7 04 24 16 51 10 c0 	movl   $0xc0105116,(%esp)
c010362a:	e8 a6 ed ff ff       	call   c01023d5 <printk>
c010362f:	8b 45 08             	mov    0x8(%ebp),%eax
c0103632:	8b 40 28             	mov    0x28(%eax),%eax
c0103635:	83 e0 08             	and    $0x8,%eax
c0103638:	85 c0                	test   %eax,%eax
c010363a:	74 0c                	je     c0103648 <page_fault+0xc0>
c010363c:	c7 04 24 28 51 10 c0 	movl   $0xc0105128,(%esp)
c0103643:	e8 8d ed ff ff       	call   c01023d5 <printk>
c0103648:	8b 45 08             	mov    0x8(%ebp),%eax
c010364b:	8b 40 28             	mov    0x28(%eax),%eax
c010364e:	83 e0 10             	and    $0x10,%eax
c0103651:	85 c0                	test   %eax,%eax
c0103653:	74 0c                	je     c0103661 <page_fault+0xd9>
c0103655:	c7 04 24 4c 51 10 c0 	movl   $0xc010514c,(%esp)
c010365c:	e8 74 ed ff ff       	call   c01023d5 <printk>
c0103661:	eb fe                	jmp    c0103661 <page_fault+0xd9>
c0103663:	90                   	nop

c0103664 <show_memory_map>:
c0103664:	55                   	push   %ebp
c0103665:	89 e5                	mov    %esp,%ebp
c0103667:	56                   	push   %esi
c0103668:	53                   	push   %ebx
c0103669:	83 ec 30             	sub    $0x30,%esp
c010366c:	a1 20 a0 20 c0       	mov    0xc020a020,%eax
c0103671:	8b 40 30             	mov    0x30(%eax),%eax
c0103674:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103677:	a1 20 a0 20 c0       	mov    0xc020a020,%eax
c010367c:	8b 40 2c             	mov    0x2c(%eax),%eax
c010367f:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0103682:	c7 04 24 7c 51 10 c0 	movl   $0xc010517c,(%esp)
c0103689:	e8 47 ed ff ff       	call   c01023d5 <printk>
c010368e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103691:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103694:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0103697:	89 45 f4             	mov    %eax,-0xc(%ebp)
c010369a:	eb 42                	jmp    c01036de <show_memory_map+0x7a>
c010369c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010369f:	8b 70 14             	mov    0x14(%eax),%esi
c01036a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01036a5:	8b 58 0c             	mov    0xc(%eax),%ebx
c01036a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01036ab:	8b 48 10             	mov    0x10(%eax),%ecx
c01036ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01036b1:	8b 50 04             	mov    0x4(%eax),%edx
c01036b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01036b7:	8b 40 08             	mov    0x8(%eax),%eax
c01036ba:	89 74 24 14          	mov    %esi,0x14(%esp)
c01036be:	89 5c 24 10          	mov    %ebx,0x10(%esp)
c01036c2:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
c01036c6:	89 54 24 08          	mov    %edx,0x8(%esp)
c01036ca:	89 44 24 04          	mov    %eax,0x4(%esp)
c01036ce:	c7 04 24 8c 51 10 c0 	movl   $0xc010518c,(%esp)
c01036d5:	e8 fb ec ff ff       	call   c01023d5 <printk>
c01036da:	83 45 f4 18          	addl   $0x18,-0xc(%ebp)
c01036de:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01036e1:	8b 55 ec             	mov    -0x14(%ebp),%edx
c01036e4:	8b 4d f0             	mov    -0x10(%ebp),%ecx
c01036e7:	01 ca                	add    %ecx,%edx
c01036e9:	39 d0                	cmp    %edx,%eax
c01036eb:	72 af                	jb     c010369c <show_memory_map+0x38>
c01036ed:	83 c4 30             	add    $0x30,%esp
c01036f0:	5b                   	pop    %ebx
c01036f1:	5e                   	pop    %esi
c01036f2:	5d                   	pop    %ebp
c01036f3:	c3                   	ret    

c01036f4 <pmm_alloc_page>:
c01036f4:	55                   	push   %ebp
c01036f5:	89 e5                	mov    %esp,%ebp
c01036f7:	83 ec 10             	sub    $0x10,%esp
c01036fa:	a1 00 70 20 c0       	mov    0xc0207000,%eax
c01036ff:	8b 14 85 00 70 18 c0 	mov    -0x3fe79000(,%eax,4),%edx
c0103706:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0103709:	83 e8 01             	sub    $0x1,%eax
c010370c:	a3 00 70 20 c0       	mov    %eax,0xc0207000
c0103711:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103714:	c9                   	leave  
c0103715:	c3                   	ret    

c0103716 <pmm_free_page>:
c0103716:	55                   	push   %ebp
c0103717:	89 e5                	mov    %esp,%ebp
c0103719:	a1 00 70 20 c0       	mov    0xc0207000,%eax
c010371e:	83 c0 01             	add    $0x1,%eax
c0103721:	a3 00 70 20 c0       	mov    %eax,0xc0207000
c0103726:	a1 00 70 20 c0       	mov    0xc0207000,%eax
c010372b:	8b 55 08             	mov    0x8(%ebp),%edx
c010372e:	89 14 85 00 70 18 c0 	mov    %edx,-0x3fe79000(,%eax,4)
c0103735:	5d                   	pop    %ebp
c0103736:	c3                   	ret    

c0103737 <init_pmm>:
c0103737:	55                   	push   %ebp
c0103738:	89 e5                	mov    %esp,%ebp
c010373a:	83 ec 24             	sub    $0x24,%esp
c010373d:	a1 20 a0 20 c0       	mov    0xc020a020,%eax
c0103742:	8b 40 30             	mov    0x30(%eax),%eax
c0103745:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103748:	a1 20 a0 20 c0       	mov    0xc020a020,%eax
c010374d:	8b 50 2c             	mov    0x2c(%eax),%edx
c0103750:	89 d0                	mov    %edx,%eax
c0103752:	01 c0                	add    %eax,%eax
c0103754:	01 d0                	add    %edx,%eax
c0103756:	c1 e0 03             	shl    $0x3,%eax
c0103759:	89 c2                	mov    %eax,%edx
c010375b:	a1 20 a0 20 c0       	mov    0xc020a020,%eax
c0103760:	8b 40 30             	mov    0x30(%eax),%eax
c0103763:	01 d0                	add    %edx,%eax
c0103765:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0103768:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010376b:	89 45 fc             	mov    %eax,-0x4(%ebp)
c010376e:	eb 76                	jmp    c01037e6 <init_pmm+0xaf>
c0103770:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0103773:	8b 40 14             	mov    0x14(%eax),%eax
c0103776:	83 f8 01             	cmp    $0x1,%eax
c0103779:	75 67                	jne    c01037e2 <init_pmm+0xab>
c010377b:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010377e:	8b 40 04             	mov    0x4(%eax),%eax
c0103781:	3d 00 00 10 00       	cmp    $0x100000,%eax
c0103786:	75 5a                	jne    c01037e2 <init_pmm+0xab>
c0103788:	8b 45 fc             	mov    -0x4(%ebp),%eax
c010378b:	8b 50 04             	mov    0x4(%eax),%edx
c010378e:	b8 00 00 10 c0       	mov    $0xc0100000,%eax
c0103793:	29 c2                	sub    %eax,%edx
c0103795:	b8 00 40 21 c0       	mov    $0xc0214000,%eax
c010379a:	01 d0                	add    %edx,%eax
c010379c:	89 45 f8             	mov    %eax,-0x8(%ebp)
c010379f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01037a2:	8b 50 04             	mov    0x4(%eax),%edx
c01037a5:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01037a8:	8b 40 0c             	mov    0xc(%eax),%eax
c01037ab:	01 d0                	add    %edx,%eax
c01037ad:	89 45 ec             	mov    %eax,-0x14(%ebp)
c01037b0:	eb 1f                	jmp    c01037d1 <init_pmm+0x9a>
c01037b2:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01037b5:	89 04 24             	mov    %eax,(%esp)
c01037b8:	e8 59 ff ff ff       	call   c0103716 <pmm_free_page>
c01037bd:	81 45 f8 00 10 00 00 	addl   $0x1000,-0x8(%ebp)
c01037c4:	a1 00 a0 20 c0       	mov    0xc020a000,%eax
c01037c9:	83 c0 01             	add    $0x1,%eax
c01037cc:	a3 00 a0 20 c0       	mov    %eax,0xc020a000
c01037d1:	8b 45 f8             	mov    -0x8(%ebp),%eax
c01037d4:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c01037d7:	73 09                	jae    c01037e2 <init_pmm+0xab>
c01037d9:	81 7d f8 00 00 00 20 	cmpl   $0x20000000,-0x8(%ebp)
c01037e0:	76 d0                	jbe    c01037b2 <init_pmm+0x7b>
c01037e2:	83 45 fc 18          	addl   $0x18,-0x4(%ebp)
c01037e6:	8b 45 fc             	mov    -0x4(%ebp),%eax
c01037e9:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c01037ec:	72 82                	jb     c0103770 <init_pmm+0x39>
c01037ee:	c9                   	leave  
c01037ef:	c3                   	ret    

c01037f0 <timer_callback>:
c01037f0:	55                   	push   %ebp
c01037f1:	89 e5                	mov    %esp,%ebp
c01037f3:	83 ec 18             	sub    $0x18,%esp
c01037f6:	a1 04 70 20 c0       	mov    0xc0207004,%eax
c01037fb:	89 c2                	mov    %eax,%edx
c01037fd:	83 c0 01             	add    $0x1,%eax
c0103800:	a3 04 70 20 c0       	mov    %eax,0xc0207004
c0103805:	89 54 24 04          	mov    %edx,0x4(%esp)
c0103809:	c7 04 24 be 51 10 c0 	movl   $0xc01051be,(%esp)
c0103810:	e8 c0 eb ff ff       	call   c01023d5 <printk>
c0103815:	c9                   	leave  
c0103816:	c3                   	ret    

c0103817 <init_timer>:
c0103817:	55                   	push   %ebp
c0103818:	89 e5                	mov    %esp,%ebp
c010381a:	83 ec 28             	sub    $0x28,%esp
c010381d:	c7 44 24 04 f0 37 10 	movl   $0xc01037f0,0x4(%esp)
c0103824:	c0 
c0103825:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c010382c:	e8 cd 09 00 00       	call   c01041fe <register_interrupt_handler>
c0103831:	b8 dc 34 12 00       	mov    $0x1234dc,%eax
c0103836:	ba 00 00 00 00       	mov    $0x0,%edx
c010383b:	f7 75 08             	divl   0x8(%ebp)
c010383e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0103841:	c7 44 24 04 36 00 00 	movl   $0x36,0x4(%esp)
c0103848:	00 
c0103849:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
c0103850:	e8 47 ef ff ff       	call   c010279c <outb>
c0103855:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0103858:	88 45 f3             	mov    %al,-0xd(%ebp)
c010385b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c010385e:	c1 e8 08             	shr    $0x8,%eax
c0103861:	88 45 f2             	mov    %al,-0xe(%ebp)
c0103864:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
c0103868:	89 44 24 04          	mov    %eax,0x4(%esp)
c010386c:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0103873:	e8 24 ef ff ff       	call   c010279c <outb>
c0103878:	0f b6 45 f2          	movzbl -0xe(%ebp),%eax
c010387c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103880:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
c0103887:	e8 10 ef ff ff       	call   c010279c <outb>
c010388c:	c9                   	leave  
c010388d:	c3                   	ret    
c010388e:	66 90                	xchg   %ax,%ax

c0103890 <kernel_init>:
c0103890:	55                   	push   %ebp
c0103891:	89 e5                	mov    %esp,%ebp
c0103893:	83 ec 28             	sub    $0x28,%esp
c0103896:	e8 fd f1 ff ff       	call   c0102a98 <init_debug>
c010389b:	e8 48 f5 ff ff       	call   c0102de8 <init_gdt>
c01038a0:	e8 7f 00 00 00       	call   c0103924 <init_idt>
c01038a5:	c7 45 f4 c8 51 10 c0 	movl   $0xc01051c8,-0xc(%ebp)
c01038ac:	e8 63 ed ff ff       	call   c0102614 <screen_clear>
c01038b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c01038b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01038b8:	c7 04 24 d5 51 10 c0 	movl   $0xc01051d5,(%esp)
c01038bf:	e8 11 eb ff ff       	call   c01023d5 <printk>
c01038c4:	c7 44 24 04 00 00 10 	movl   $0xc0100000,0x4(%esp)
c01038cb:	c0 
c01038cc:	c7 04 24 d9 51 10 c0 	movl   $0xc01051d9,(%esp)
c01038d3:	e8 fd ea ff ff       	call   c01023d5 <printk>
c01038d8:	c7 44 24 04 00 40 21 	movl   $0xc0214000,0x4(%esp)
c01038df:	c0 
c01038e0:	c7 04 24 f7 51 10 c0 	movl   $0xc01051f7,(%esp)
c01038e7:	e8 e9 ea ff ff       	call   c01023d5 <printk>
c01038ec:	b8 00 40 21 c0       	mov    $0xc0214000,%eax
c01038f1:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
c01038f7:	b8 00 00 10 c0       	mov    $0xc0100000,%eax
c01038fc:	89 d1                	mov    %edx,%ecx
c01038fe:	29 c1                	sub    %eax,%ecx
c0103900:	89 c8                	mov    %ecx,%eax
c0103902:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
c0103908:	85 c0                	test   %eax,%eax
c010390a:	0f 48 c2             	cmovs  %edx,%eax
c010390d:	c1 f8 0a             	sar    $0xa,%eax
c0103910:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103914:	c7 04 24 14 52 10 c0 	movl   $0xc0105214,(%esp)
c010391b:	e8 b5 ea ff ff       	call   c01023d5 <printk>
c0103920:	f4                   	hlt    
c0103921:	eb fd                	jmp    c0103920 <kernel_init+0x90>
c0103923:	90                   	nop

c0103924 <init_idt>:
c0103924:	55                   	push   %ebp
c0103925:	89 e5                	mov    %esp,%ebp
c0103927:	83 ec 18             	sub    $0x18,%esp
c010392a:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c0103931:	00 
c0103932:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0103939:	e8 5e ee ff ff       	call   c010279c <outb>
c010393e:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
c0103945:	00 
c0103946:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c010394d:	e8 4a ee ff ff       	call   c010279c <outb>
c0103952:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0103959:	00 
c010395a:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103961:	e8 36 ee ff ff       	call   c010279c <outb>
c0103966:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
c010396d:	00 
c010396e:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c0103975:	e8 22 ee ff ff       	call   c010279c <outb>
c010397a:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0103981:	00 
c0103982:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103989:	e8 0e ee ff ff       	call   c010279c <outb>
c010398e:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
c0103995:	00 
c0103996:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c010399d:	e8 fa ed ff ff       	call   c010279c <outb>
c01039a2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c01039a9:	00 
c01039aa:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c01039b1:	e8 e6 ed ff ff       	call   c010279c <outb>
c01039b6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c01039bd:	00 
c01039be:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c01039c5:	e8 d2 ed ff ff       	call   c010279c <outb>
c01039ca:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01039d1:	00 
c01039d2:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c01039d9:	e8 be ed ff ff       	call   c010279c <outb>
c01039de:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01039e5:	00 
c01039e6:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
c01039ed:	e8 aa ed ff ff       	call   c010279c <outb>
c01039f2:	b8 5a 21 10 c0       	mov    $0xc010215a,%eax
c01039f7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01039fe:	00 
c01039ff:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a06:	00 
c0103a07:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a0b:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c0103a12:	e8 3a 07 00 00       	call   c0104151 <idt_set_gate>
c0103a17:	b8 61 21 10 c0       	mov    $0xc0102161,%eax
c0103a1c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a23:	00 
c0103a24:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a2b:	00 
c0103a2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a30:	c7 04 24 21 00 00 00 	movl   $0x21,(%esp)
c0103a37:	e8 15 07 00 00       	call   c0104151 <idt_set_gate>
c0103a3c:	b8 68 21 10 c0       	mov    $0xc0102168,%eax
c0103a41:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a48:	00 
c0103a49:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a50:	00 
c0103a51:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a55:	c7 04 24 22 00 00 00 	movl   $0x22,(%esp)
c0103a5c:	e8 f0 06 00 00       	call   c0104151 <idt_set_gate>
c0103a61:	b8 6f 21 10 c0       	mov    $0xc010216f,%eax
c0103a66:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a6d:	00 
c0103a6e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a75:	00 
c0103a76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a7a:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
c0103a81:	e8 cb 06 00 00       	call   c0104151 <idt_set_gate>
c0103a86:	b8 76 21 10 c0       	mov    $0xc0102176,%eax
c0103a8b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103a92:	00 
c0103a93:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103a9a:	00 
c0103a9b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a9f:	c7 04 24 24 00 00 00 	movl   $0x24,(%esp)
c0103aa6:	e8 a6 06 00 00       	call   c0104151 <idt_set_gate>
c0103aab:	b8 7d 21 10 c0       	mov    $0xc010217d,%eax
c0103ab0:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ab7:	00 
c0103ab8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103abf:	00 
c0103ac0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ac4:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
c0103acb:	e8 81 06 00 00       	call   c0104151 <idt_set_gate>
c0103ad0:	b8 84 21 10 c0       	mov    $0xc0102184,%eax
c0103ad5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103adc:	00 
c0103add:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ae4:	00 
c0103ae5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ae9:	c7 04 24 26 00 00 00 	movl   $0x26,(%esp)
c0103af0:	e8 5c 06 00 00       	call   c0104151 <idt_set_gate>
c0103af5:	b8 8b 21 10 c0       	mov    $0xc010218b,%eax
c0103afa:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b01:	00 
c0103b02:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b09:	00 
c0103b0a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b0e:	c7 04 24 27 00 00 00 	movl   $0x27,(%esp)
c0103b15:	e8 37 06 00 00       	call   c0104151 <idt_set_gate>
c0103b1a:	b8 92 21 10 c0       	mov    $0xc0102192,%eax
c0103b1f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b26:	00 
c0103b27:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b2e:	00 
c0103b2f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b33:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
c0103b3a:	e8 12 06 00 00       	call   c0104151 <idt_set_gate>
c0103b3f:	b8 99 21 10 c0       	mov    $0xc0102199,%eax
c0103b44:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b4b:	00 
c0103b4c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b53:	00 
c0103b54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b58:	c7 04 24 29 00 00 00 	movl   $0x29,(%esp)
c0103b5f:	e8 ed 05 00 00       	call   c0104151 <idt_set_gate>
c0103b64:	b8 a0 21 10 c0       	mov    $0xc01021a0,%eax
c0103b69:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b70:	00 
c0103b71:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b78:	00 
c0103b79:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103b7d:	c7 04 24 2a 00 00 00 	movl   $0x2a,(%esp)
c0103b84:	e8 c8 05 00 00       	call   c0104151 <idt_set_gate>
c0103b89:	b8 a7 21 10 c0       	mov    $0xc01021a7,%eax
c0103b8e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103b95:	00 
c0103b96:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103b9d:	00 
c0103b9e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ba2:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
c0103ba9:	e8 a3 05 00 00       	call   c0104151 <idt_set_gate>
c0103bae:	b8 ae 21 10 c0       	mov    $0xc01021ae,%eax
c0103bb3:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103bba:	00 
c0103bbb:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103bc2:	00 
c0103bc3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bc7:	c7 04 24 2c 00 00 00 	movl   $0x2c,(%esp)
c0103bce:	e8 7e 05 00 00       	call   c0104151 <idt_set_gate>
c0103bd3:	b8 b5 21 10 c0       	mov    $0xc01021b5,%eax
c0103bd8:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103bdf:	00 
c0103be0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103be7:	00 
c0103be8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103bec:	c7 04 24 2d 00 00 00 	movl   $0x2d,(%esp)
c0103bf3:	e8 59 05 00 00       	call   c0104151 <idt_set_gate>
c0103bf8:	b8 bc 21 10 c0       	mov    $0xc01021bc,%eax
c0103bfd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c04:	00 
c0103c05:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c0c:	00 
c0103c0d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c11:	c7 04 24 2e 00 00 00 	movl   $0x2e,(%esp)
c0103c18:	e8 34 05 00 00       	call   c0104151 <idt_set_gate>
c0103c1d:	b8 c3 21 10 c0       	mov    $0xc01021c3,%eax
c0103c22:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c29:	00 
c0103c2a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c31:	00 
c0103c32:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c36:	c7 04 24 2f 00 00 00 	movl   $0x2f,(%esp)
c0103c3d:	e8 0f 05 00 00       	call   c0104151 <idt_set_gate>
c0103c42:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
c0103c49:	00 
c0103c4a:	c7 04 24 60 c8 20 c0 	movl   $0xc020c860,(%esp)
c0103c51:	e8 97 ec ff ff       	call   c01028ed <bzer>
c0103c56:	66 c7 05 40 c0 20 c0 	movw   $0x7ff,0xc020c040
c0103c5d:	ff 07 
c0103c5f:	b8 60 c0 20 c0       	mov    $0xc020c060,%eax
c0103c64:	a3 42 c0 20 c0       	mov    %eax,0xc020c042
c0103c69:	c7 44 24 04 00 08 00 	movl   $0x800,0x4(%esp)
c0103c70:	00 
c0103c71:	c7 04 24 60 c0 20 c0 	movl   $0xc020c060,(%esp)
c0103c78:	e8 70 ec ff ff       	call   c01028ed <bzer>
c0103c7d:	b8 20 20 10 c0       	mov    $0xc0102020,%eax
c0103c82:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103c89:	00 
c0103c8a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103c91:	00 
c0103c92:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103c96:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
c0103c9d:	e8 af 04 00 00       	call   c0104151 <idt_set_gate>
c0103ca2:	b8 2a 20 10 c0       	mov    $0xc010202a,%eax
c0103ca7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103cae:	00 
c0103caf:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cb6:	00 
c0103cb7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103cbb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
c0103cc2:	e8 8a 04 00 00       	call   c0104151 <idt_set_gate>
c0103cc7:	b8 34 20 10 c0       	mov    $0xc0102034,%eax
c0103ccc:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103cd3:	00 
c0103cd4:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103cdb:	00 
c0103cdc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ce0:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
c0103ce7:	e8 65 04 00 00       	call   c0104151 <idt_set_gate>
c0103cec:	b8 3e 20 10 c0       	mov    $0xc010203e,%eax
c0103cf1:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103cf8:	00 
c0103cf9:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d00:	00 
c0103d01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d05:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
c0103d0c:	e8 40 04 00 00       	call   c0104151 <idt_set_gate>
c0103d11:	b8 48 20 10 c0       	mov    $0xc0102048,%eax
c0103d16:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d1d:	00 
c0103d1e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d25:	00 
c0103d26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d2a:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
c0103d31:	e8 1b 04 00 00       	call   c0104151 <idt_set_gate>
c0103d36:	b8 52 20 10 c0       	mov    $0xc0102052,%eax
c0103d3b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d42:	00 
c0103d43:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d4a:	00 
c0103d4b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d4f:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
c0103d56:	e8 f6 03 00 00       	call   c0104151 <idt_set_gate>
c0103d5b:	b8 5c 20 10 c0       	mov    $0xc010205c,%eax
c0103d60:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d67:	00 
c0103d68:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d6f:	00 
c0103d70:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d74:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
c0103d7b:	e8 d1 03 00 00       	call   c0104151 <idt_set_gate>
c0103d80:	b8 66 20 10 c0       	mov    $0xc0102066,%eax
c0103d85:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103d8c:	00 
c0103d8d:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103d94:	00 
c0103d95:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d99:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
c0103da0:	e8 ac 03 00 00       	call   c0104151 <idt_set_gate>
c0103da5:	b8 70 20 10 c0       	mov    $0xc0102070,%eax
c0103daa:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103db1:	00 
c0103db2:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103db9:	00 
c0103dba:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103dbe:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
c0103dc5:	e8 87 03 00 00       	call   c0104151 <idt_set_gate>
c0103dca:	b8 78 20 10 c0       	mov    $0xc0102078,%eax
c0103dcf:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103dd6:	00 
c0103dd7:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103dde:	00 
c0103ddf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103de3:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
c0103dea:	e8 62 03 00 00       	call   c0104151 <idt_set_gate>
c0103def:	b8 82 20 10 c0       	mov    $0xc0102082,%eax
c0103df4:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103dfb:	00 
c0103dfc:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103e03:	00 
c0103e04:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e08:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
c0103e0f:	e8 3d 03 00 00       	call   c0104151 <idt_set_gate>
c0103e14:	b8 8a 20 10 c0       	mov    $0xc010208a,%eax
c0103e19:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103e20:	00 
c0103e21:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103e28:	00 
c0103e29:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e2d:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
c0103e34:	e8 18 03 00 00       	call   c0104151 <idt_set_gate>
c0103e39:	b8 92 20 10 c0       	mov    $0xc0102092,%eax
c0103e3e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103e45:	00 
c0103e46:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103e4d:	00 
c0103e4e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e52:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
c0103e59:	e8 f3 02 00 00       	call   c0104151 <idt_set_gate>
c0103e5e:	b8 9a 20 10 c0       	mov    $0xc010209a,%eax
c0103e63:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103e6a:	00 
c0103e6b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103e72:	00 
c0103e73:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e77:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
c0103e7e:	e8 ce 02 00 00       	call   c0104151 <idt_set_gate>
c0103e83:	b8 a2 20 10 c0       	mov    $0xc01020a2,%eax
c0103e88:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103e8f:	00 
c0103e90:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103e97:	00 
c0103e98:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e9c:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
c0103ea3:	e8 a9 02 00 00       	call   c0104151 <idt_set_gate>
c0103ea8:	b8 a7 20 10 c0       	mov    $0xc01020a7,%eax
c0103ead:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103eb4:	00 
c0103eb5:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ebc:	00 
c0103ebd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ec1:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
c0103ec8:	e8 84 02 00 00       	call   c0104151 <idt_set_gate>
c0103ecd:	b8 ae 20 10 c0       	mov    $0xc01020ae,%eax
c0103ed2:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103ed9:	00 
c0103eda:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103ee1:	00 
c0103ee2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ee6:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
c0103eed:	e8 5f 02 00 00       	call   c0104151 <idt_set_gate>
c0103ef2:	b8 b5 20 10 c0       	mov    $0xc01020b5,%eax
c0103ef7:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103efe:	00 
c0103eff:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103f06:	00 
c0103f07:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103f0b:	c7 04 24 11 00 00 00 	movl   $0x11,(%esp)
c0103f12:	e8 3a 02 00 00       	call   c0104151 <idt_set_gate>
c0103f17:	b8 ba 20 10 c0       	mov    $0xc01020ba,%eax
c0103f1c:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103f23:	00 
c0103f24:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103f2b:	00 
c0103f2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103f30:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
c0103f37:	e8 15 02 00 00       	call   c0104151 <idt_set_gate>
c0103f3c:	b8 c1 20 10 c0       	mov    $0xc01020c1,%eax
c0103f41:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103f48:	00 
c0103f49:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103f50:	00 
c0103f51:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103f55:	c7 04 24 13 00 00 00 	movl   $0x13,(%esp)
c0103f5c:	e8 f0 01 00 00       	call   c0104151 <idt_set_gate>
c0103f61:	b8 c8 20 10 c0       	mov    $0xc01020c8,%eax
c0103f66:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103f6d:	00 
c0103f6e:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103f75:	00 
c0103f76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103f7a:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
c0103f81:	e8 cb 01 00 00       	call   c0104151 <idt_set_gate>
c0103f86:	b8 cf 20 10 c0       	mov    $0xc01020cf,%eax
c0103f8b:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103f92:	00 
c0103f93:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103f9a:	00 
c0103f9b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103f9f:	c7 04 24 15 00 00 00 	movl   $0x15,(%esp)
c0103fa6:	e8 a6 01 00 00       	call   c0104151 <idt_set_gate>
c0103fab:	b8 d6 20 10 c0       	mov    $0xc01020d6,%eax
c0103fb0:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103fb7:	00 
c0103fb8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103fbf:	00 
c0103fc0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103fc4:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
c0103fcb:	e8 81 01 00 00       	call   c0104151 <idt_set_gate>
c0103fd0:	b8 dd 20 10 c0       	mov    $0xc01020dd,%eax
c0103fd5:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0103fdc:	00 
c0103fdd:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0103fe4:	00 
c0103fe5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103fe9:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
c0103ff0:	e8 5c 01 00 00       	call   c0104151 <idt_set_gate>
c0103ff5:	b8 e4 20 10 c0       	mov    $0xc01020e4,%eax
c0103ffa:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0104001:	00 
c0104002:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0104009:	00 
c010400a:	89 44 24 04          	mov    %eax,0x4(%esp)
c010400e:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
c0104015:	e8 37 01 00 00       	call   c0104151 <idt_set_gate>
c010401a:	b8 eb 20 10 c0       	mov    $0xc01020eb,%eax
c010401f:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0104026:	00 
c0104027:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010402e:	00 
c010402f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104033:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
c010403a:	e8 12 01 00 00       	call   c0104151 <idt_set_gate>
c010403f:	b8 f2 20 10 c0       	mov    $0xc01020f2,%eax
c0104044:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c010404b:	00 
c010404c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0104053:	00 
c0104054:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104058:	c7 04 24 1a 00 00 00 	movl   $0x1a,(%esp)
c010405f:	e8 ed 00 00 00       	call   c0104151 <idt_set_gate>
c0104064:	b8 f9 20 10 c0       	mov    $0xc01020f9,%eax
c0104069:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0104070:	00 
c0104071:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0104078:	00 
c0104079:	89 44 24 04          	mov    %eax,0x4(%esp)
c010407d:	c7 04 24 1b 00 00 00 	movl   $0x1b,(%esp)
c0104084:	e8 c8 00 00 00       	call   c0104151 <idt_set_gate>
c0104089:	b8 00 21 10 c0       	mov    $0xc0102100,%eax
c010408e:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0104095:	00 
c0104096:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010409d:	00 
c010409e:	89 44 24 04          	mov    %eax,0x4(%esp)
c01040a2:	c7 04 24 1c 00 00 00 	movl   $0x1c,(%esp)
c01040a9:	e8 a3 00 00 00       	call   c0104151 <idt_set_gate>
c01040ae:	b8 07 21 10 c0       	mov    $0xc0102107,%eax
c01040b3:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01040ba:	00 
c01040bb:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01040c2:	00 
c01040c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01040c7:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
c01040ce:	e8 7e 00 00 00       	call   c0104151 <idt_set_gate>
c01040d3:	b8 0e 21 10 c0       	mov    $0xc010210e,%eax
c01040d8:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c01040df:	00 
c01040e0:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c01040e7:	00 
c01040e8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01040ec:	c7 04 24 1e 00 00 00 	movl   $0x1e,(%esp)
c01040f3:	e8 59 00 00 00       	call   c0104151 <idt_set_gate>
c01040f8:	b8 15 21 10 c0       	mov    $0xc0102115,%eax
c01040fd:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0104104:	00 
c0104105:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c010410c:	00 
c010410d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104111:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
c0104118:	e8 34 00 00 00       	call   c0104151 <idt_set_gate>
c010411d:	b8 1c 21 10 c0       	mov    $0xc010211c,%eax
c0104122:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
c0104129:	00 
c010412a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
c0104131:	00 
c0104132:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104136:	c7 04 24 ff 00 00 00 	movl   $0xff,(%esp)
c010413d:	e8 0f 00 00 00       	call   c0104151 <idt_set_gate>
c0104142:	b8 40 c0 20 c0       	mov    $0xc020c040,%eax
c0104147:	89 04 24             	mov    %eax,(%esp)
c010414a:	e8 03 e0 ff ff       	call   c0102152 <idt_flush>
c010414f:	c9                   	leave  
c0104150:	c3                   	ret    

c0104151 <idt_set_gate>:
c0104151:	55                   	push   %ebp
c0104152:	89 e5                	mov    %esp,%ebp
c0104154:	83 ec 0c             	sub    $0xc,%esp
c0104157:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010415a:	8b 55 10             	mov    0x10(%ebp),%edx
c010415d:	8b 45 14             	mov    0x14(%ebp),%eax
c0104160:	88 4d fc             	mov    %cl,-0x4(%ebp)
c0104163:	66 89 55 f8          	mov    %dx,-0x8(%ebp)
c0104167:	88 45 f4             	mov    %al,-0xc(%ebp)
c010416a:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010416e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0104171:	66 89 14 c5 60 c0 20 	mov    %dx,-0x3fdf3fa0(,%eax,8)
c0104178:	c0 
c0104179:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010417d:	8b 55 0c             	mov    0xc(%ebp),%edx
c0104180:	c1 ea 10             	shr    $0x10,%edx
c0104183:	66 89 14 c5 66 c0 20 	mov    %dx,-0x3fdf3f9a(,%eax,8)
c010418a:	c0 
c010418b:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010418f:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
c0104193:	66 89 14 c5 62 c0 20 	mov    %dx,-0x3fdf3f9e(,%eax,8)
c010419a:	c0 
c010419b:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010419f:	c6 04 c5 64 c0 20 c0 	movb   $0x0,-0x3fdf3f9c(,%eax,8)
c01041a6:	00 
c01041a7:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c01041ab:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
c01041af:	88 14 c5 65 c0 20 c0 	mov    %dl,-0x3fdf3f9b(,%eax,8)
c01041b6:	c9                   	leave  
c01041b7:	c3                   	ret    

c01041b8 <isr_handler>:
c01041b8:	55                   	push   %ebp
c01041b9:	89 e5                	mov    %esp,%ebp
c01041bb:	83 ec 18             	sub    $0x18,%esp
c01041be:	8b 45 08             	mov    0x8(%ebp),%eax
c01041c1:	8b 40 24             	mov    0x24(%eax),%eax
c01041c4:	8b 04 85 60 c8 20 c0 	mov    -0x3fdf37a0(,%eax,4),%eax
c01041cb:	85 c0                	test   %eax,%eax
c01041cd:	74 17                	je     c01041e6 <isr_handler+0x2e>
c01041cf:	8b 45 08             	mov    0x8(%ebp),%eax
c01041d2:	8b 40 24             	mov    0x24(%eax),%eax
c01041d5:	8b 04 85 60 c8 20 c0 	mov    -0x3fdf37a0(,%eax,4),%eax
c01041dc:	8b 55 08             	mov    0x8(%ebp),%edx
c01041df:	89 14 24             	mov    %edx,(%esp)
c01041e2:	ff d0                	call   *%eax
c01041e4:	eb 16                	jmp    c01041fc <isr_handler+0x44>
c01041e6:	8b 45 08             	mov    0x8(%ebp),%eax
c01041e9:	8b 40 24             	mov    0x24(%eax),%eax
c01041ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c01041f0:	c7 04 24 33 52 10 c0 	movl   $0xc0105233,(%esp)
c01041f7:	e8 d9 e1 ff ff       	call   c01023d5 <printk>
c01041fc:	c9                   	leave  
c01041fd:	c3                   	ret    

c01041fe <register_interrupt_handler>:
c01041fe:	55                   	push   %ebp
c01041ff:	89 e5                	mov    %esp,%ebp
c0104201:	83 ec 04             	sub    $0x4,%esp
c0104204:	8b 45 08             	mov    0x8(%ebp),%eax
c0104207:	88 45 fc             	mov    %al,-0x4(%ebp)
c010420a:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
c010420e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0104211:	89 14 85 60 c8 20 c0 	mov    %edx,-0x3fdf37a0(,%eax,4)
c0104218:	c9                   	leave  
c0104219:	c3                   	ret    

c010421a <irq_handler>:
c010421a:	55                   	push   %ebp
c010421b:	89 e5                	mov    %esp,%ebp
c010421d:	83 ec 18             	sub    $0x18,%esp
c0104220:	8b 45 08             	mov    0x8(%ebp),%eax
c0104223:	8b 40 24             	mov    0x24(%eax),%eax
c0104226:	83 f8 27             	cmp    $0x27,%eax
c0104229:	76 14                	jbe    c010423f <irq_handler+0x25>
c010422b:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0104232:	00 
c0104233:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
c010423a:	e8 5d e5 ff ff       	call   c010279c <outb>
c010423f:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
c0104246:	00 
c0104247:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
c010424e:	e8 49 e5 ff ff       	call   c010279c <outb>
c0104253:	8b 45 08             	mov    0x8(%ebp),%eax
c0104256:	8b 40 24             	mov    0x24(%eax),%eax
c0104259:	8b 04 85 60 c8 20 c0 	mov    -0x3fdf37a0(,%eax,4),%eax
c0104260:	85 c0                	test   %eax,%eax
c0104262:	74 15                	je     c0104279 <irq_handler+0x5f>
c0104264:	8b 45 08             	mov    0x8(%ebp),%eax
c0104267:	8b 40 24             	mov    0x24(%eax),%eax
c010426a:	8b 04 85 60 c8 20 c0 	mov    -0x3fdf37a0(,%eax,4),%eax
c0104271:	8b 55 08             	mov    0x8(%ebp),%edx
c0104274:	89 14 24             	mov    %edx,(%esp)
c0104277:	ff d0                	call   *%eax
c0104279:	c9                   	leave  
c010427a:	c3                   	ret    
c010427b:	66 90                	xchg   %ax,%ax
c010427d:	66 90                	xchg   %ax,%ax
c010427f:	66 90                	xchg   %ax,%ax
c0104281:	66 90                	xchg   %ax,%ax
c0104283:	66 90                	xchg   %ax,%ax
c0104285:	66 90                	xchg   %ax,%ax
c0104287:	66 90                	xchg   %ax,%ax
c0104289:	66 90                	xchg   %ax,%ax
c010428b:	66 90                	xchg   %ax,%ax
c010428d:	66 90                	xchg   %ax,%ax
c010428f:	66 90                	xchg   %ax,%ax
c0104291:	66 90                	xchg   %ax,%ax
c0104293:	66 90                	xchg   %ax,%ax
c0104295:	66 90                	xchg   %ax,%ax
c0104297:	66 90                	xchg   %ax,%ax
c0104299:	66 90                	xchg   %ax,%ax
c010429b:	66 90                	xchg   %ax,%ax
c010429d:	66 90                	xchg   %ax,%ax
c010429f:	66 90                	xchg   %ax,%ax
c01042a1:	66 90                	xchg   %ax,%ax
c01042a3:	66 90                	xchg   %ax,%ax
c01042a5:	66 90                	xchg   %ax,%ax
c01042a7:	66 90                	xchg   %ax,%ax
c01042a9:	66 90                	xchg   %ax,%ax
c01042ab:	66 90                	xchg   %ax,%ax
c01042ad:	66 90                	xchg   %ax,%ax
c01042af:	66 90                	xchg   %ax,%ax
c01042b1:	66 90                	xchg   %ax,%ax
c01042b3:	66 90                	xchg   %ax,%ax
c01042b5:	66 90                	xchg   %ax,%ax
c01042b7:	66 90                	xchg   %ax,%ax
c01042b9:	66 90                	xchg   %ax,%ax
c01042bb:	66 90                	xchg   %ax,%ax
c01042bd:	66 90                	xchg   %ax,%ax
c01042bf:	66 90                	xchg   %ax,%ax
c01042c1:	66 90                	xchg   %ax,%ax
c01042c3:	66 90                	xchg   %ax,%ax
c01042c5:	66 90                	xchg   %ax,%ax
c01042c7:	66 90                	xchg   %ax,%ax
c01042c9:	66 90                	xchg   %ax,%ax
c01042cb:	66 90                	xchg   %ax,%ax
c01042cd:	66 90                	xchg   %ax,%ax
c01042cf:	66 90                	xchg   %ax,%ax
c01042d1:	66 90                	xchg   %ax,%ax
c01042d3:	66 90                	xchg   %ax,%ax
c01042d5:	66 90                	xchg   %ax,%ax
c01042d7:	66 90                	xchg   %ax,%ax
c01042d9:	66 90                	xchg   %ax,%ax
c01042db:	66 90                	xchg   %ax,%ax
c01042dd:	66 90                	xchg   %ax,%ax
c01042df:	66 90                	xchg   %ax,%ax
c01042e1:	66 90                	xchg   %ax,%ax
c01042e3:	66 90                	xchg   %ax,%ax
c01042e5:	66 90                	xchg   %ax,%ax
c01042e7:	66 90                	xchg   %ax,%ax
c01042e9:	66 90                	xchg   %ax,%ax
c01042eb:	66 90                	xchg   %ax,%ax
c01042ed:	66 90                	xchg   %ax,%ax
c01042ef:	66 90                	xchg   %ax,%ax
c01042f1:	66 90                	xchg   %ax,%ax
c01042f3:	66 90                	xchg   %ax,%ax
c01042f5:	66 90                	xchg   %ax,%ax
c01042f7:	66 90                	xchg   %ax,%ax
c01042f9:	66 90                	xchg   %ax,%ax
c01042fb:	66 90                	xchg   %ax,%ax
c01042fd:	66 90                	xchg   %ax,%ax
c01042ff:	66 90                	xchg   %ax,%ax
c0104301:	66 90                	xchg   %ax,%ax
c0104303:	66 90                	xchg   %ax,%ax
c0104305:	66 90                	xchg   %ax,%ax
c0104307:	66 90                	xchg   %ax,%ax
c0104309:	66 90                	xchg   %ax,%ax
c010430b:	66 90                	xchg   %ax,%ax
c010430d:	66 90                	xchg   %ax,%ax
c010430f:	66 90                	xchg   %ax,%ax
c0104311:	66 90                	xchg   %ax,%ax
c0104313:	66 90                	xchg   %ax,%ax
c0104315:	66 90                	xchg   %ax,%ax
c0104317:	66 90                	xchg   %ax,%ax
c0104319:	66 90                	xchg   %ax,%ax
c010431b:	66 90                	xchg   %ax,%ax
c010431d:	66 90                	xchg   %ax,%ax
c010431f:	66 90                	xchg   %ax,%ax
c0104321:	66 90                	xchg   %ax,%ax
c0104323:	66 90                	xchg   %ax,%ax
c0104325:	66 90                	xchg   %ax,%ax
c0104327:	66 90                	xchg   %ax,%ax
c0104329:	66 90                	xchg   %ax,%ax
c010432b:	66 90                	xchg   %ax,%ax
c010432d:	66 90                	xchg   %ax,%ax
c010432f:	66 90                	xchg   %ax,%ax
c0104331:	66 90                	xchg   %ax,%ax
c0104333:	66 90                	xchg   %ax,%ax
c0104335:	66 90                	xchg   %ax,%ax
c0104337:	66 90                	xchg   %ax,%ax
c0104339:	66 90                	xchg   %ax,%ax
c010433b:	66 90                	xchg   %ax,%ax
c010433d:	66 90                	xchg   %ax,%ax
c010433f:	66 90                	xchg   %ax,%ax
c0104341:	66 90                	xchg   %ax,%ax
c0104343:	66 90                	xchg   %ax,%ax
c0104345:	66 90                	xchg   %ax,%ax
c0104347:	66 90                	xchg   %ax,%ax
c0104349:	66 90                	xchg   %ax,%ax
c010434b:	66 90                	xchg   %ax,%ax
c010434d:	66 90                	xchg   %ax,%ax
c010434f:	66 90                	xchg   %ax,%ax
c0104351:	66 90                	xchg   %ax,%ax
c0104353:	66 90                	xchg   %ax,%ax
c0104355:	66 90                	xchg   %ax,%ax
c0104357:	66 90                	xchg   %ax,%ax
c0104359:	66 90                	xchg   %ax,%ax
c010435b:	66 90                	xchg   %ax,%ax
c010435d:	66 90                	xchg   %ax,%ax
c010435f:	66 90                	xchg   %ax,%ax
c0104361:	66 90                	xchg   %ax,%ax
c0104363:	66 90                	xchg   %ax,%ax
c0104365:	66 90                	xchg   %ax,%ax
c0104367:	66 90                	xchg   %ax,%ax
c0104369:	66 90                	xchg   %ax,%ax
c010436b:	66 90                	xchg   %ax,%ax
c010436d:	66 90                	xchg   %ax,%ax
c010436f:	66 90                	xchg   %ax,%ax
c0104371:	66 90                	xchg   %ax,%ax
c0104373:	66 90                	xchg   %ax,%ax
c0104375:	66 90                	xchg   %ax,%ax
c0104377:	66 90                	xchg   %ax,%ax
c0104379:	66 90                	xchg   %ax,%ax
c010437b:	66 90                	xchg   %ax,%ax
c010437d:	66 90                	xchg   %ax,%ax
c010437f:	66 90                	xchg   %ax,%ax
c0104381:	66 90                	xchg   %ax,%ax
c0104383:	66 90                	xchg   %ax,%ax
c0104385:	66 90                	xchg   %ax,%ax
c0104387:	66 90                	xchg   %ax,%ax
c0104389:	66 90                	xchg   %ax,%ax
c010438b:	66 90                	xchg   %ax,%ax
c010438d:	66 90                	xchg   %ax,%ax
c010438f:	66 90                	xchg   %ax,%ax
c0104391:	66 90                	xchg   %ax,%ax
c0104393:	66 90                	xchg   %ax,%ax
c0104395:	66 90                	xchg   %ax,%ax
c0104397:	66 90                	xchg   %ax,%ax
c0104399:	66 90                	xchg   %ax,%ax
c010439b:	66 90                	xchg   %ax,%ax
c010439d:	66 90                	xchg   %ax,%ax
c010439f:	66 90                	xchg   %ax,%ax
c01043a1:	66 90                	xchg   %ax,%ax
c01043a3:	66 90                	xchg   %ax,%ax
c01043a5:	66 90                	xchg   %ax,%ax
c01043a7:	66 90                	xchg   %ax,%ax
c01043a9:	66 90                	xchg   %ax,%ax
c01043ab:	66 90                	xchg   %ax,%ax
c01043ad:	66 90                	xchg   %ax,%ax
c01043af:	66 90                	xchg   %ax,%ax
c01043b1:	66 90                	xchg   %ax,%ax
c01043b3:	66 90                	xchg   %ax,%ax
c01043b5:	66 90                	xchg   %ax,%ax
c01043b7:	66 90                	xchg   %ax,%ax
c01043b9:	66 90                	xchg   %ax,%ax
c01043bb:	66 90                	xchg   %ax,%ax
c01043bd:	66 90                	xchg   %ax,%ax
c01043bf:	66 90                	xchg   %ax,%ax
c01043c1:	66 90                	xchg   %ax,%ax
c01043c3:	66 90                	xchg   %ax,%ax
c01043c5:	66 90                	xchg   %ax,%ax
c01043c7:	66 90                	xchg   %ax,%ax
c01043c9:	66 90                	xchg   %ax,%ax
c01043cb:	66 90                	xchg   %ax,%ax
c01043cd:	66 90                	xchg   %ax,%ax
c01043cf:	66 90                	xchg   %ax,%ax
c01043d1:	66 90                	xchg   %ax,%ax
c01043d3:	66 90                	xchg   %ax,%ax
c01043d5:	66 90                	xchg   %ax,%ax
c01043d7:	66 90                	xchg   %ax,%ax
c01043d9:	66 90                	xchg   %ax,%ax
c01043db:	66 90                	xchg   %ax,%ax
c01043dd:	66 90                	xchg   %ax,%ax
c01043df:	66 90                	xchg   %ax,%ax
c01043e1:	66 90                	xchg   %ax,%ax
c01043e3:	66 90                	xchg   %ax,%ax
c01043e5:	66 90                	xchg   %ax,%ax
c01043e7:	66 90                	xchg   %ax,%ax
c01043e9:	66 90                	xchg   %ax,%ax
c01043eb:	66 90                	xchg   %ax,%ax
c01043ed:	66 90                	xchg   %ax,%ax
c01043ef:	66 90                	xchg   %ax,%ax
c01043f1:	66 90                	xchg   %ax,%ax
c01043f3:	66 90                	xchg   %ax,%ax
c01043f5:	66 90                	xchg   %ax,%ax
c01043f7:	66 90                	xchg   %ax,%ax
c01043f9:	66 90                	xchg   %ax,%ax
c01043fb:	66 90                	xchg   %ax,%ax
c01043fd:	66 90                	xchg   %ax,%ax
c01043ff:	66 90                	xchg   %ax,%ax
c0104401:	66 90                	xchg   %ax,%ax
c0104403:	66 90                	xchg   %ax,%ax
c0104405:	66 90                	xchg   %ax,%ax
c0104407:	66 90                	xchg   %ax,%ax
c0104409:	66 90                	xchg   %ax,%ax
c010440b:	66 90                	xchg   %ax,%ax
c010440d:	66 90                	xchg   %ax,%ax
c010440f:	66 90                	xchg   %ax,%ax
c0104411:	66 90                	xchg   %ax,%ax
c0104413:	66 90                	xchg   %ax,%ax
c0104415:	66 90                	xchg   %ax,%ax
c0104417:	66 90                	xchg   %ax,%ax
c0104419:	66 90                	xchg   %ax,%ax
c010441b:	66 90                	xchg   %ax,%ax
c010441d:	66 90                	xchg   %ax,%ax
c010441f:	66 90                	xchg   %ax,%ax
c0104421:	66 90                	xchg   %ax,%ax
c0104423:	66 90                	xchg   %ax,%ax
c0104425:	66 90                	xchg   %ax,%ax
c0104427:	66 90                	xchg   %ax,%ax
c0104429:	66 90                	xchg   %ax,%ax
c010442b:	66 90                	xchg   %ax,%ax
c010442d:	66 90                	xchg   %ax,%ax
c010442f:	66 90                	xchg   %ax,%ax
c0104431:	66 90                	xchg   %ax,%ax
c0104433:	66 90                	xchg   %ax,%ax
c0104435:	66 90                	xchg   %ax,%ax
c0104437:	66 90                	xchg   %ax,%ax
c0104439:	66 90                	xchg   %ax,%ax
c010443b:	66 90                	xchg   %ax,%ax
c010443d:	66 90                	xchg   %ax,%ax
c010443f:	66 90                	xchg   %ax,%ax
c0104441:	66 90                	xchg   %ax,%ax
c0104443:	66 90                	xchg   %ax,%ax
c0104445:	66 90                	xchg   %ax,%ax
c0104447:	66 90                	xchg   %ax,%ax
c0104449:	66 90                	xchg   %ax,%ax
c010444b:	66 90                	xchg   %ax,%ax
c010444d:	66 90                	xchg   %ax,%ax
c010444f:	66 90                	xchg   %ax,%ax
c0104451:	66 90                	xchg   %ax,%ax
c0104453:	66 90                	xchg   %ax,%ax
c0104455:	66 90                	xchg   %ax,%ax
c0104457:	66 90                	xchg   %ax,%ax
c0104459:	66 90                	xchg   %ax,%ax
c010445b:	66 90                	xchg   %ax,%ax
c010445d:	66 90                	xchg   %ax,%ax
c010445f:	66 90                	xchg   %ax,%ax
c0104461:	66 90                	xchg   %ax,%ax
c0104463:	66 90                	xchg   %ax,%ax
c0104465:	66 90                	xchg   %ax,%ax
c0104467:	66 90                	xchg   %ax,%ax
c0104469:	66 90                	xchg   %ax,%ax
c010446b:	66 90                	xchg   %ax,%ax
c010446d:	66 90                	xchg   %ax,%ax
c010446f:	66 90                	xchg   %ax,%ax
c0104471:	66 90                	xchg   %ax,%ax
c0104473:	66 90                	xchg   %ax,%ax
c0104475:	66 90                	xchg   %ax,%ax
c0104477:	66 90                	xchg   %ax,%ax
c0104479:	66 90                	xchg   %ax,%ax
c010447b:	66 90                	xchg   %ax,%ax
c010447d:	66 90                	xchg   %ax,%ax
c010447f:	66 90                	xchg   %ax,%ax
c0104481:	66 90                	xchg   %ax,%ax
c0104483:	66 90                	xchg   %ax,%ax
c0104485:	66 90                	xchg   %ax,%ax
c0104487:	66 90                	xchg   %ax,%ax
c0104489:	66 90                	xchg   %ax,%ax
c010448b:	66 90                	xchg   %ax,%ax
c010448d:	66 90                	xchg   %ax,%ax
c010448f:	66 90                	xchg   %ax,%ax
c0104491:	66 90                	xchg   %ax,%ax
c0104493:	66 90                	xchg   %ax,%ax
c0104495:	66 90                	xchg   %ax,%ax
c0104497:	66 90                	xchg   %ax,%ax
c0104499:	66 90                	xchg   %ax,%ax
c010449b:	66 90                	xchg   %ax,%ax
c010449d:	66 90                	xchg   %ax,%ax
c010449f:	66 90                	xchg   %ax,%ax
c01044a1:	66 90                	xchg   %ax,%ax
c01044a3:	66 90                	xchg   %ax,%ax
c01044a5:	66 90                	xchg   %ax,%ax
c01044a7:	66 90                	xchg   %ax,%ax
c01044a9:	66 90                	xchg   %ax,%ax
c01044ab:	66 90                	xchg   %ax,%ax
c01044ad:	66 90                	xchg   %ax,%ax
c01044af:	66 90                	xchg   %ax,%ax
c01044b1:	66 90                	xchg   %ax,%ax
c01044b3:	66 90                	xchg   %ax,%ax
c01044b5:	66 90                	xchg   %ax,%ax
c01044b7:	66 90                	xchg   %ax,%ax
c01044b9:	66 90                	xchg   %ax,%ax
c01044bb:	66 90                	xchg   %ax,%ax
c01044bd:	66 90                	xchg   %ax,%ax
c01044bf:	66 90                	xchg   %ax,%ax
c01044c1:	66 90                	xchg   %ax,%ax
c01044c3:	66 90                	xchg   %ax,%ax
c01044c5:	66 90                	xchg   %ax,%ax
c01044c7:	66 90                	xchg   %ax,%ax
c01044c9:	66 90                	xchg   %ax,%ax
c01044cb:	66 90                	xchg   %ax,%ax
c01044cd:	66 90                	xchg   %ax,%ax
c01044cf:	66 90                	xchg   %ax,%ax
c01044d1:	66 90                	xchg   %ax,%ax
c01044d3:	66 90                	xchg   %ax,%ax
c01044d5:	66 90                	xchg   %ax,%ax
c01044d7:	66 90                	xchg   %ax,%ax
c01044d9:	66 90                	xchg   %ax,%ax
c01044db:	66 90                	xchg   %ax,%ax
c01044dd:	66 90                	xchg   %ax,%ax
c01044df:	66 90                	xchg   %ax,%ax
c01044e1:	66 90                	xchg   %ax,%ax
c01044e3:	66 90                	xchg   %ax,%ax
c01044e5:	66 90                	xchg   %ax,%ax
c01044e7:	66 90                	xchg   %ax,%ax
c01044e9:	66 90                	xchg   %ax,%ax
c01044eb:	66 90                	xchg   %ax,%ax
c01044ed:	66 90                	xchg   %ax,%ax
c01044ef:	66 90                	xchg   %ax,%ax
c01044f1:	66 90                	xchg   %ax,%ax
c01044f3:	66 90                	xchg   %ax,%ax
c01044f5:	66 90                	xchg   %ax,%ax
c01044f7:	66 90                	xchg   %ax,%ax
c01044f9:	66 90                	xchg   %ax,%ax
c01044fb:	66 90                	xchg   %ax,%ax
c01044fd:	66 90                	xchg   %ax,%ax
c01044ff:	66 90                	xchg   %ax,%ax
c0104501:	66 90                	xchg   %ax,%ax
c0104503:	66 90                	xchg   %ax,%ax
c0104505:	66 90                	xchg   %ax,%ax
c0104507:	66 90                	xchg   %ax,%ax
c0104509:	66 90                	xchg   %ax,%ax
c010450b:	66 90                	xchg   %ax,%ax
c010450d:	66 90                	xchg   %ax,%ax
c010450f:	66 90                	xchg   %ax,%ax
c0104511:	66 90                	xchg   %ax,%ax
c0104513:	66 90                	xchg   %ax,%ax
c0104515:	66 90                	xchg   %ax,%ax
c0104517:	66 90                	xchg   %ax,%ax
c0104519:	66 90                	xchg   %ax,%ax
c010451b:	66 90                	xchg   %ax,%ax
c010451d:	66 90                	xchg   %ax,%ax
c010451f:	66 90                	xchg   %ax,%ax
c0104521:	66 90                	xchg   %ax,%ax
c0104523:	66 90                	xchg   %ax,%ax
c0104525:	66 90                	xchg   %ax,%ax
c0104527:	66 90                	xchg   %ax,%ax
c0104529:	66 90                	xchg   %ax,%ax
c010452b:	66 90                	xchg   %ax,%ax
c010452d:	66 90                	xchg   %ax,%ax
c010452f:	66 90                	xchg   %ax,%ax
c0104531:	66 90                	xchg   %ax,%ax
c0104533:	66 90                	xchg   %ax,%ax
c0104535:	66 90                	xchg   %ax,%ax
c0104537:	66 90                	xchg   %ax,%ax
c0104539:	66 90                	xchg   %ax,%ax
c010453b:	66 90                	xchg   %ax,%ax
c010453d:	66 90                	xchg   %ax,%ax
c010453f:	66 90                	xchg   %ax,%ax
c0104541:	66 90                	xchg   %ax,%ax
c0104543:	66 90                	xchg   %ax,%ax
c0104545:	66 90                	xchg   %ax,%ax
c0104547:	66 90                	xchg   %ax,%ax
c0104549:	66 90                	xchg   %ax,%ax
c010454b:	66 90                	xchg   %ax,%ax
c010454d:	66 90                	xchg   %ax,%ax
c010454f:	66 90                	xchg   %ax,%ax
c0104551:	66 90                	xchg   %ax,%ax
c0104553:	66 90                	xchg   %ax,%ax
c0104555:	66 90                	xchg   %ax,%ax
c0104557:	66 90                	xchg   %ax,%ax
c0104559:	66 90                	xchg   %ax,%ax
c010455b:	66 90                	xchg   %ax,%ax
c010455d:	66 90                	xchg   %ax,%ax
c010455f:	66 90                	xchg   %ax,%ax
c0104561:	66 90                	xchg   %ax,%ax
c0104563:	66 90                	xchg   %ax,%ax
c0104565:	66 90                	xchg   %ax,%ax
c0104567:	66 90                	xchg   %ax,%ax
c0104569:	66 90                	xchg   %ax,%ax
c010456b:	66 90                	xchg   %ax,%ax
c010456d:	66 90                	xchg   %ax,%ax
c010456f:	66 90                	xchg   %ax,%ax
c0104571:	66 90                	xchg   %ax,%ax
c0104573:	66 90                	xchg   %ax,%ax
c0104575:	66 90                	xchg   %ax,%ax
c0104577:	66 90                	xchg   %ax,%ax
c0104579:	66 90                	xchg   %ax,%ax
c010457b:	66 90                	xchg   %ax,%ax
c010457d:	66 90                	xchg   %ax,%ax
c010457f:	66 90                	xchg   %ax,%ax
c0104581:	66 90                	xchg   %ax,%ax
c0104583:	66 90                	xchg   %ax,%ax
c0104585:	66 90                	xchg   %ax,%ax
c0104587:	66 90                	xchg   %ax,%ax
c0104589:	66 90                	xchg   %ax,%ax
c010458b:	66 90                	xchg   %ax,%ax
c010458d:	66 90                	xchg   %ax,%ax
c010458f:	66 90                	xchg   %ax,%ax
c0104591:	66 90                	xchg   %ax,%ax
c0104593:	66 90                	xchg   %ax,%ax
c0104595:	66 90                	xchg   %ax,%ax
c0104597:	66 90                	xchg   %ax,%ax
c0104599:	66 90                	xchg   %ax,%ax
c010459b:	66 90                	xchg   %ax,%ax
c010459d:	66 90                	xchg   %ax,%ax
c010459f:	66 90                	xchg   %ax,%ax
c01045a1:	66 90                	xchg   %ax,%ax
c01045a3:	66 90                	xchg   %ax,%ax
c01045a5:	66 90                	xchg   %ax,%ax
c01045a7:	66 90                	xchg   %ax,%ax
c01045a9:	66 90                	xchg   %ax,%ax
c01045ab:	66 90                	xchg   %ax,%ax
c01045ad:	66 90                	xchg   %ax,%ax
c01045af:	66 90                	xchg   %ax,%ax
c01045b1:	66 90                	xchg   %ax,%ax
c01045b3:	66 90                	xchg   %ax,%ax
c01045b5:	66 90                	xchg   %ax,%ax
c01045b7:	66 90                	xchg   %ax,%ax
c01045b9:	66 90                	xchg   %ax,%ax
c01045bb:	66 90                	xchg   %ax,%ax
c01045bd:	66 90                	xchg   %ax,%ax
c01045bf:	66 90                	xchg   %ax,%ax
c01045c1:	66 90                	xchg   %ax,%ax
c01045c3:	66 90                	xchg   %ax,%ax
c01045c5:	66 90                	xchg   %ax,%ax
c01045c7:	66 90                	xchg   %ax,%ax
c01045c9:	66 90                	xchg   %ax,%ax
c01045cb:	66 90                	xchg   %ax,%ax
c01045cd:	66 90                	xchg   %ax,%ax
c01045cf:	66 90                	xchg   %ax,%ax
c01045d1:	66 90                	xchg   %ax,%ax
c01045d3:	66 90                	xchg   %ax,%ax
c01045d5:	66 90                	xchg   %ax,%ax
c01045d7:	66 90                	xchg   %ax,%ax
c01045d9:	66 90                	xchg   %ax,%ax
c01045db:	66 90                	xchg   %ax,%ax
c01045dd:	66 90                	xchg   %ax,%ax
c01045df:	66 90                	xchg   %ax,%ax
c01045e1:	66 90                	xchg   %ax,%ax
c01045e3:	66 90                	xchg   %ax,%ax
c01045e5:	66 90                	xchg   %ax,%ax
c01045e7:	66 90                	xchg   %ax,%ax
c01045e9:	66 90                	xchg   %ax,%ax
c01045eb:	66 90                	xchg   %ax,%ax
c01045ed:	66 90                	xchg   %ax,%ax
c01045ef:	66 90                	xchg   %ax,%ax
c01045f1:	66 90                	xchg   %ax,%ax
c01045f3:	66 90                	xchg   %ax,%ax
c01045f5:	66 90                	xchg   %ax,%ax
c01045f7:	66 90                	xchg   %ax,%ax
c01045f9:	66 90                	xchg   %ax,%ax
c01045fb:	66 90                	xchg   %ax,%ax
c01045fd:	66 90                	xchg   %ax,%ax
c01045ff:	66 90                	xchg   %ax,%ax
c0104601:	66 90                	xchg   %ax,%ax
c0104603:	66 90                	xchg   %ax,%ax
c0104605:	66 90                	xchg   %ax,%ax
c0104607:	66 90                	xchg   %ax,%ax
c0104609:	66 90                	xchg   %ax,%ax
c010460b:	66 90                	xchg   %ax,%ax
c010460d:	66 90                	xchg   %ax,%ax
c010460f:	66 90                	xchg   %ax,%ax
c0104611:	66 90                	xchg   %ax,%ax
c0104613:	66 90                	xchg   %ax,%ax
c0104615:	66 90                	xchg   %ax,%ax
c0104617:	66 90                	xchg   %ax,%ax
c0104619:	66 90                	xchg   %ax,%ax
c010461b:	66 90                	xchg   %ax,%ax
c010461d:	66 90                	xchg   %ax,%ax
c010461f:	66 90                	xchg   %ax,%ax
c0104621:	66 90                	xchg   %ax,%ax
c0104623:	66 90                	xchg   %ax,%ax
c0104625:	66 90                	xchg   %ax,%ax
c0104627:	66 90                	xchg   %ax,%ax
c0104629:	66 90                	xchg   %ax,%ax
c010462b:	66 90                	xchg   %ax,%ax
c010462d:	66 90                	xchg   %ax,%ax
c010462f:	66 90                	xchg   %ax,%ax
c0104631:	66 90                	xchg   %ax,%ax
c0104633:	66 90                	xchg   %ax,%ax
c0104635:	66 90                	xchg   %ax,%ax
c0104637:	66 90                	xchg   %ax,%ax
c0104639:	66 90                	xchg   %ax,%ax
c010463b:	66 90                	xchg   %ax,%ax
c010463d:	66 90                	xchg   %ax,%ax
c010463f:	66 90                	xchg   %ax,%ax
c0104641:	66 90                	xchg   %ax,%ax
c0104643:	66 90                	xchg   %ax,%ax
c0104645:	66 90                	xchg   %ax,%ax
c0104647:	66 90                	xchg   %ax,%ax
c0104649:	66 90                	xchg   %ax,%ax
c010464b:	66 90                	xchg   %ax,%ax
c010464d:	66 90                	xchg   %ax,%ax
c010464f:	66 90                	xchg   %ax,%ax
c0104651:	66 90                	xchg   %ax,%ax
c0104653:	66 90                	xchg   %ax,%ax
c0104655:	66 90                	xchg   %ax,%ax
c0104657:	66 90                	xchg   %ax,%ax
c0104659:	66 90                	xchg   %ax,%ax
c010465b:	66 90                	xchg   %ax,%ax
c010465d:	66 90                	xchg   %ax,%ax
c010465f:	66 90                	xchg   %ax,%ax
c0104661:	66 90                	xchg   %ax,%ax
c0104663:	66 90                	xchg   %ax,%ax
c0104665:	66 90                	xchg   %ax,%ax
c0104667:	66 90                	xchg   %ax,%ax
c0104669:	66 90                	xchg   %ax,%ax
c010466b:	66 90                	xchg   %ax,%ax
c010466d:	66 90                	xchg   %ax,%ax
c010466f:	66 90                	xchg   %ax,%ax
c0104671:	66 90                	xchg   %ax,%ax
c0104673:	66 90                	xchg   %ax,%ax
c0104675:	66 90                	xchg   %ax,%ax
c0104677:	66 90                	xchg   %ax,%ax
c0104679:	66 90                	xchg   %ax,%ax
c010467b:	66 90                	xchg   %ax,%ax
c010467d:	66 90                	xchg   %ax,%ax
c010467f:	66 90                	xchg   %ax,%ax
c0104681:	66 90                	xchg   %ax,%ax
c0104683:	66 90                	xchg   %ax,%ax
c0104685:	66 90                	xchg   %ax,%ax
c0104687:	66 90                	xchg   %ax,%ax
c0104689:	66 90                	xchg   %ax,%ax
c010468b:	66 90                	xchg   %ax,%ax
c010468d:	66 90                	xchg   %ax,%ax
c010468f:	66 90                	xchg   %ax,%ax
c0104691:	66 90                	xchg   %ax,%ax
c0104693:	66 90                	xchg   %ax,%ax
c0104695:	66 90                	xchg   %ax,%ax
c0104697:	66 90                	xchg   %ax,%ax
c0104699:	66 90                	xchg   %ax,%ax
c010469b:	66 90                	xchg   %ax,%ax
c010469d:	66 90                	xchg   %ax,%ax
c010469f:	66 90                	xchg   %ax,%ax
c01046a1:	66 90                	xchg   %ax,%ax
c01046a3:	66 90                	xchg   %ax,%ax
c01046a5:	66 90                	xchg   %ax,%ax
c01046a7:	66 90                	xchg   %ax,%ax
c01046a9:	66 90                	xchg   %ax,%ax
c01046ab:	66 90                	xchg   %ax,%ax
c01046ad:	66 90                	xchg   %ax,%ax
c01046af:	66 90                	xchg   %ax,%ax
c01046b1:	66 90                	xchg   %ax,%ax
c01046b3:	66 90                	xchg   %ax,%ax
c01046b5:	66 90                	xchg   %ax,%ax
c01046b7:	66 90                	xchg   %ax,%ax
c01046b9:	66 90                	xchg   %ax,%ax
c01046bb:	66 90                	xchg   %ax,%ax
c01046bd:	66 90                	xchg   %ax,%ax
c01046bf:	66 90                	xchg   %ax,%ax
c01046c1:	66 90                	xchg   %ax,%ax
c01046c3:	66 90                	xchg   %ax,%ax
c01046c5:	66 90                	xchg   %ax,%ax
c01046c7:	66 90                	xchg   %ax,%ax
c01046c9:	66 90                	xchg   %ax,%ax
c01046cb:	66 90                	xchg   %ax,%ax
c01046cd:	66 90                	xchg   %ax,%ax
c01046cf:	66 90                	xchg   %ax,%ax
c01046d1:	66 90                	xchg   %ax,%ax
c01046d3:	66 90                	xchg   %ax,%ax
c01046d5:	66 90                	xchg   %ax,%ax
c01046d7:	66 90                	xchg   %ax,%ax
c01046d9:	66 90                	xchg   %ax,%ax
c01046db:	66 90                	xchg   %ax,%ax
c01046dd:	66 90                	xchg   %ax,%ax
c01046df:	66 90                	xchg   %ax,%ax
c01046e1:	66 90                	xchg   %ax,%ax
c01046e3:	66 90                	xchg   %ax,%ax
c01046e5:	66 90                	xchg   %ax,%ax
c01046e7:	66 90                	xchg   %ax,%ax
c01046e9:	66 90                	xchg   %ax,%ax
c01046eb:	66 90                	xchg   %ax,%ax
c01046ed:	66 90                	xchg   %ax,%ax
c01046ef:	66 90                	xchg   %ax,%ax
c01046f1:	66 90                	xchg   %ax,%ax
c01046f3:	66 90                	xchg   %ax,%ax
c01046f5:	66 90                	xchg   %ax,%ax
c01046f7:	66 90                	xchg   %ax,%ax
c01046f9:	66 90                	xchg   %ax,%ax
c01046fb:	66 90                	xchg   %ax,%ax
c01046fd:	66 90                	xchg   %ax,%ax
c01046ff:	66 90                	xchg   %ax,%ax
c0104701:	66 90                	xchg   %ax,%ax
c0104703:	66 90                	xchg   %ax,%ax
c0104705:	66 90                	xchg   %ax,%ax
c0104707:	66 90                	xchg   %ax,%ax
c0104709:	66 90                	xchg   %ax,%ax
c010470b:	66 90                	xchg   %ax,%ax
c010470d:	66 90                	xchg   %ax,%ax
c010470f:	66 90                	xchg   %ax,%ax
c0104711:	66 90                	xchg   %ax,%ax
c0104713:	66 90                	xchg   %ax,%ax
c0104715:	66 90                	xchg   %ax,%ax
c0104717:	66 90                	xchg   %ax,%ax
c0104719:	66 90                	xchg   %ax,%ax
c010471b:	66 90                	xchg   %ax,%ax
c010471d:	66 90                	xchg   %ax,%ax
c010471f:	66 90                	xchg   %ax,%ax
c0104721:	66 90                	xchg   %ax,%ax
c0104723:	66 90                	xchg   %ax,%ax
c0104725:	66 90                	xchg   %ax,%ax
c0104727:	66 90                	xchg   %ax,%ax
c0104729:	66 90                	xchg   %ax,%ax
c010472b:	66 90                	xchg   %ax,%ax
c010472d:	66 90                	xchg   %ax,%ax
c010472f:	66 90                	xchg   %ax,%ax
c0104731:	66 90                	xchg   %ax,%ax
c0104733:	66 90                	xchg   %ax,%ax
c0104735:	66 90                	xchg   %ax,%ax
c0104737:	66 90                	xchg   %ax,%ax
c0104739:	66 90                	xchg   %ax,%ax
c010473b:	66 90                	xchg   %ax,%ax
c010473d:	66 90                	xchg   %ax,%ax
c010473f:	66 90                	xchg   %ax,%ax
c0104741:	66 90                	xchg   %ax,%ax
c0104743:	66 90                	xchg   %ax,%ax
c0104745:	66 90                	xchg   %ax,%ax
c0104747:	66 90                	xchg   %ax,%ax
c0104749:	66 90                	xchg   %ax,%ax
c010474b:	66 90                	xchg   %ax,%ax
c010474d:	66 90                	xchg   %ax,%ax
c010474f:	66 90                	xchg   %ax,%ax
c0104751:	66 90                	xchg   %ax,%ax
c0104753:	66 90                	xchg   %ax,%ax
c0104755:	66 90                	xchg   %ax,%ax
c0104757:	66 90                	xchg   %ax,%ax
c0104759:	66 90                	xchg   %ax,%ax
c010475b:	66 90                	xchg   %ax,%ax
c010475d:	66 90                	xchg   %ax,%ax
c010475f:	66 90                	xchg   %ax,%ax
c0104761:	66 90                	xchg   %ax,%ax
c0104763:	66 90                	xchg   %ax,%ax
c0104765:	66 90                	xchg   %ax,%ax
c0104767:	66 90                	xchg   %ax,%ax
c0104769:	66 90                	xchg   %ax,%ax
c010476b:	66 90                	xchg   %ax,%ax
c010476d:	66 90                	xchg   %ax,%ax
c010476f:	66 90                	xchg   %ax,%ax
c0104771:	66 90                	xchg   %ax,%ax
c0104773:	66 90                	xchg   %ax,%ax
c0104775:	66 90                	xchg   %ax,%ax
c0104777:	66 90                	xchg   %ax,%ax
c0104779:	66 90                	xchg   %ax,%ax
c010477b:	66 90                	xchg   %ax,%ax
c010477d:	66 90                	xchg   %ax,%ax
c010477f:	66 90                	xchg   %ax,%ax
c0104781:	66 90                	xchg   %ax,%ax
c0104783:	66 90                	xchg   %ax,%ax
c0104785:	66 90                	xchg   %ax,%ax
c0104787:	66 90                	xchg   %ax,%ax
c0104789:	66 90                	xchg   %ax,%ax
c010478b:	66 90                	xchg   %ax,%ax
c010478d:	66 90                	xchg   %ax,%ax
c010478f:	66 90                	xchg   %ax,%ax
c0104791:	66 90                	xchg   %ax,%ax
c0104793:	66 90                	xchg   %ax,%ax
c0104795:	66 90                	xchg   %ax,%ax
c0104797:	66 90                	xchg   %ax,%ax
c0104799:	66 90                	xchg   %ax,%ax
c010479b:	66 90                	xchg   %ax,%ax
c010479d:	66 90                	xchg   %ax,%ax
c010479f:	66 90                	xchg   %ax,%ax
c01047a1:	66 90                	xchg   %ax,%ax
c01047a3:	66 90                	xchg   %ax,%ax
c01047a5:	66 90                	xchg   %ax,%ax
c01047a7:	66 90                	xchg   %ax,%ax
c01047a9:	66 90                	xchg   %ax,%ax
c01047ab:	66 90                	xchg   %ax,%ax
c01047ad:	66 90                	xchg   %ax,%ax
c01047af:	66 90                	xchg   %ax,%ax
c01047b1:	66 90                	xchg   %ax,%ax
c01047b3:	66 90                	xchg   %ax,%ax
c01047b5:	66 90                	xchg   %ax,%ax
c01047b7:	66 90                	xchg   %ax,%ax
c01047b9:	66 90                	xchg   %ax,%ax
c01047bb:	66 90                	xchg   %ax,%ax
c01047bd:	66 90                	xchg   %ax,%ax
c01047bf:	66 90                	xchg   %ax,%ax
c01047c1:	66 90                	xchg   %ax,%ax
c01047c3:	66 90                	xchg   %ax,%ax
c01047c5:	66 90                	xchg   %ax,%ax
c01047c7:	66 90                	xchg   %ax,%ax
c01047c9:	66 90                	xchg   %ax,%ax
c01047cb:	66 90                	xchg   %ax,%ax
c01047cd:	66 90                	xchg   %ax,%ax
c01047cf:	66 90                	xchg   %ax,%ax
c01047d1:	66 90                	xchg   %ax,%ax
c01047d3:	66 90                	xchg   %ax,%ax
c01047d5:	66 90                	xchg   %ax,%ax
c01047d7:	66 90                	xchg   %ax,%ax
c01047d9:	66 90                	xchg   %ax,%ax
c01047db:	66 90                	xchg   %ax,%ax
c01047dd:	66 90                	xchg   %ax,%ax
c01047df:	66 90                	xchg   %ax,%ax
c01047e1:	66 90                	xchg   %ax,%ax
c01047e3:	66 90                	xchg   %ax,%ax
c01047e5:	66 90                	xchg   %ax,%ax
c01047e7:	66 90                	xchg   %ax,%ax
c01047e9:	66 90                	xchg   %ax,%ax
c01047eb:	66 90                	xchg   %ax,%ax
c01047ed:	66 90                	xchg   %ax,%ax
c01047ef:	66 90                	xchg   %ax,%ax
c01047f1:	66 90                	xchg   %ax,%ax
c01047f3:	66 90                	xchg   %ax,%ax
c01047f5:	66 90                	xchg   %ax,%ax
c01047f7:	66 90                	xchg   %ax,%ax
c01047f9:	66 90                	xchg   %ax,%ax
c01047fb:	66 90                	xchg   %ax,%ax
c01047fd:	66 90                	xchg   %ax,%ax
c01047ff:	66 90                	xchg   %ax,%ax
c0104801:	66 90                	xchg   %ax,%ax
c0104803:	66 90                	xchg   %ax,%ax
c0104805:	66 90                	xchg   %ax,%ax
c0104807:	66 90                	xchg   %ax,%ax
c0104809:	66 90                	xchg   %ax,%ax
c010480b:	66 90                	xchg   %ax,%ax
c010480d:	66 90                	xchg   %ax,%ax
c010480f:	66 90                	xchg   %ax,%ax
c0104811:	66 90                	xchg   %ax,%ax
c0104813:	66 90                	xchg   %ax,%ax
c0104815:	66 90                	xchg   %ax,%ax
c0104817:	66 90                	xchg   %ax,%ax
c0104819:	66 90                	xchg   %ax,%ax
c010481b:	66 90                	xchg   %ax,%ax
c010481d:	66 90                	xchg   %ax,%ax
c010481f:	66 90                	xchg   %ax,%ax
c0104821:	66 90                	xchg   %ax,%ax
c0104823:	66 90                	xchg   %ax,%ax
c0104825:	66 90                	xchg   %ax,%ax
c0104827:	66 90                	xchg   %ax,%ax
c0104829:	66 90                	xchg   %ax,%ax
c010482b:	66 90                	xchg   %ax,%ax
c010482d:	66 90                	xchg   %ax,%ax
c010482f:	66 90                	xchg   %ax,%ax
c0104831:	66 90                	xchg   %ax,%ax
c0104833:	66 90                	xchg   %ax,%ax
c0104835:	66 90                	xchg   %ax,%ax
c0104837:	66 90                	xchg   %ax,%ax
c0104839:	66 90                	xchg   %ax,%ax
c010483b:	66 90                	xchg   %ax,%ax
c010483d:	66 90                	xchg   %ax,%ax
c010483f:	66 90                	xchg   %ax,%ax
c0104841:	66 90                	xchg   %ax,%ax
c0104843:	66 90                	xchg   %ax,%ax
c0104845:	66 90                	xchg   %ax,%ax
c0104847:	66 90                	xchg   %ax,%ax
c0104849:	66 90                	xchg   %ax,%ax
c010484b:	66 90                	xchg   %ax,%ax
c010484d:	66 90                	xchg   %ax,%ax
c010484f:	66 90                	xchg   %ax,%ax
c0104851:	66 90                	xchg   %ax,%ax
c0104853:	66 90                	xchg   %ax,%ax
c0104855:	66 90                	xchg   %ax,%ax
c0104857:	66 90                	xchg   %ax,%ax
c0104859:	66 90                	xchg   %ax,%ax
c010485b:	66 90                	xchg   %ax,%ax
c010485d:	66 90                	xchg   %ax,%ax
c010485f:	66 90                	xchg   %ax,%ax
c0104861:	66 90                	xchg   %ax,%ax
c0104863:	66 90                	xchg   %ax,%ax
c0104865:	66 90                	xchg   %ax,%ax
c0104867:	66 90                	xchg   %ax,%ax
c0104869:	66 90                	xchg   %ax,%ax
c010486b:	66 90                	xchg   %ax,%ax
c010486d:	66 90                	xchg   %ax,%ax
c010486f:	66 90                	xchg   %ax,%ax
c0104871:	66 90                	xchg   %ax,%ax
c0104873:	66 90                	xchg   %ax,%ax
c0104875:	66 90                	xchg   %ax,%ax
c0104877:	66 90                	xchg   %ax,%ax
c0104879:	66 90                	xchg   %ax,%ax
c010487b:	66 90                	xchg   %ax,%ax
c010487d:	66 90                	xchg   %ax,%ax
c010487f:	66 90                	xchg   %ax,%ax
c0104881:	66 90                	xchg   %ax,%ax
c0104883:	66 90                	xchg   %ax,%ax
c0104885:	66 90                	xchg   %ax,%ax
c0104887:	66 90                	xchg   %ax,%ax
c0104889:	66 90                	xchg   %ax,%ax
c010488b:	66 90                	xchg   %ax,%ax
c010488d:	66 90                	xchg   %ax,%ax
c010488f:	66 90                	xchg   %ax,%ax
c0104891:	66 90                	xchg   %ax,%ax
c0104893:	66 90                	xchg   %ax,%ax
c0104895:	66 90                	xchg   %ax,%ax
c0104897:	66 90                	xchg   %ax,%ax
c0104899:	66 90                	xchg   %ax,%ax
c010489b:	66 90                	xchg   %ax,%ax
c010489d:	66 90                	xchg   %ax,%ax
c010489f:	66 90                	xchg   %ax,%ax
c01048a1:	66 90                	xchg   %ax,%ax
c01048a3:	66 90                	xchg   %ax,%ax
c01048a5:	66 90                	xchg   %ax,%ax
c01048a7:	66 90                	xchg   %ax,%ax
c01048a9:	66 90                	xchg   %ax,%ax
c01048ab:	66 90                	xchg   %ax,%ax
c01048ad:	66 90                	xchg   %ax,%ax
c01048af:	66 90                	xchg   %ax,%ax
c01048b1:	66 90                	xchg   %ax,%ax
c01048b3:	66 90                	xchg   %ax,%ax
c01048b5:	66 90                	xchg   %ax,%ax
c01048b7:	66 90                	xchg   %ax,%ax
c01048b9:	66 90                	xchg   %ax,%ax
c01048bb:	66 90                	xchg   %ax,%ax
c01048bd:	66 90                	xchg   %ax,%ax
c01048bf:	66 90                	xchg   %ax,%ax
c01048c1:	66 90                	xchg   %ax,%ax
c01048c3:	66 90                	xchg   %ax,%ax
c01048c5:	66 90                	xchg   %ax,%ax
c01048c7:	66 90                	xchg   %ax,%ax
c01048c9:	66 90                	xchg   %ax,%ax
c01048cb:	66 90                	xchg   %ax,%ax
c01048cd:	66 90                	xchg   %ax,%ax
c01048cf:	66 90                	xchg   %ax,%ax
c01048d1:	66 90                	xchg   %ax,%ax
c01048d3:	66 90                	xchg   %ax,%ax
c01048d5:	66 90                	xchg   %ax,%ax
c01048d7:	66 90                	xchg   %ax,%ax
c01048d9:	66 90                	xchg   %ax,%ax
c01048db:	66 90                	xchg   %ax,%ax
c01048dd:	66 90                	xchg   %ax,%ax
c01048df:	66 90                	xchg   %ax,%ax
c01048e1:	66 90                	xchg   %ax,%ax
c01048e3:	66 90                	xchg   %ax,%ax
c01048e5:	66 90                	xchg   %ax,%ax
c01048e7:	66 90                	xchg   %ax,%ax
c01048e9:	66 90                	xchg   %ax,%ax
c01048eb:	66 90                	xchg   %ax,%ax
c01048ed:	66 90                	xchg   %ax,%ax
c01048ef:	66 90                	xchg   %ax,%ax
c01048f1:	66 90                	xchg   %ax,%ax
c01048f3:	66 90                	xchg   %ax,%ax
c01048f5:	66 90                	xchg   %ax,%ax
c01048f7:	66 90                	xchg   %ax,%ax
c01048f9:	66 90                	xchg   %ax,%ax
c01048fb:	66 90                	xchg   %ax,%ax
c01048fd:	66 90                	xchg   %ax,%ax
c01048ff:	66 90                	xchg   %ax,%ax
c0104901:	66 90                	xchg   %ax,%ax
c0104903:	66 90                	xchg   %ax,%ax
c0104905:	66 90                	xchg   %ax,%ax
c0104907:	66 90                	xchg   %ax,%ax
c0104909:	66 90                	xchg   %ax,%ax
c010490b:	66 90                	xchg   %ax,%ax
c010490d:	66 90                	xchg   %ax,%ax
c010490f:	66 90                	xchg   %ax,%ax
c0104911:	66 90                	xchg   %ax,%ax
c0104913:	66 90                	xchg   %ax,%ax
c0104915:	66 90                	xchg   %ax,%ax
c0104917:	66 90                	xchg   %ax,%ax
c0104919:	66 90                	xchg   %ax,%ax
c010491b:	66 90                	xchg   %ax,%ax
c010491d:	66 90                	xchg   %ax,%ax
c010491f:	66 90                	xchg   %ax,%ax
c0104921:	66 90                	xchg   %ax,%ax
c0104923:	66 90                	xchg   %ax,%ax
c0104925:	66 90                	xchg   %ax,%ax
c0104927:	66 90                	xchg   %ax,%ax
c0104929:	66 90                	xchg   %ax,%ax
c010492b:	66 90                	xchg   %ax,%ax
c010492d:	66 90                	xchg   %ax,%ax
c010492f:	66 90                	xchg   %ax,%ax
c0104931:	66 90                	xchg   %ax,%ax
c0104933:	66 90                	xchg   %ax,%ax
c0104935:	66 90                	xchg   %ax,%ax
c0104937:	66 90                	xchg   %ax,%ax
c0104939:	66 90                	xchg   %ax,%ax
c010493b:	66 90                	xchg   %ax,%ax
c010493d:	66 90                	xchg   %ax,%ax
c010493f:	66 90                	xchg   %ax,%ax
c0104941:	66 90                	xchg   %ax,%ax
c0104943:	66 90                	xchg   %ax,%ax
c0104945:	66 90                	xchg   %ax,%ax
c0104947:	66 90                	xchg   %ax,%ax
c0104949:	66 90                	xchg   %ax,%ax
c010494b:	66 90                	xchg   %ax,%ax
c010494d:	66 90                	xchg   %ax,%ax
c010494f:	66 90                	xchg   %ax,%ax
c0104951:	66 90                	xchg   %ax,%ax
c0104953:	66 90                	xchg   %ax,%ax
c0104955:	66 90                	xchg   %ax,%ax
c0104957:	66 90                	xchg   %ax,%ax
c0104959:	66 90                	xchg   %ax,%ax
c010495b:	66 90                	xchg   %ax,%ax
c010495d:	66 90                	xchg   %ax,%ax
c010495f:	66 90                	xchg   %ax,%ax
c0104961:	66 90                	xchg   %ax,%ax
c0104963:	66 90                	xchg   %ax,%ax
c0104965:	66 90                	xchg   %ax,%ax
c0104967:	66 90                	xchg   %ax,%ax
c0104969:	66 90                	xchg   %ax,%ax
c010496b:	66 90                	xchg   %ax,%ax
c010496d:	66 90                	xchg   %ax,%ax
c010496f:	66 90                	xchg   %ax,%ax
c0104971:	66 90                	xchg   %ax,%ax
c0104973:	66 90                	xchg   %ax,%ax
c0104975:	66 90                	xchg   %ax,%ax
c0104977:	66 90                	xchg   %ax,%ax
c0104979:	66 90                	xchg   %ax,%ax
c010497b:	66 90                	xchg   %ax,%ax
c010497d:	66 90                	xchg   %ax,%ax
c010497f:	66 90                	xchg   %ax,%ax
c0104981:	66 90                	xchg   %ax,%ax
c0104983:	66 90                	xchg   %ax,%ax
c0104985:	66 90                	xchg   %ax,%ax
c0104987:	66 90                	xchg   %ax,%ax
c0104989:	66 90                	xchg   %ax,%ax
c010498b:	66 90                	xchg   %ax,%ax
c010498d:	66 90                	xchg   %ax,%ax
c010498f:	66 90                	xchg   %ax,%ax
c0104991:	66 90                	xchg   %ax,%ax
c0104993:	66 90                	xchg   %ax,%ax
c0104995:	66 90                	xchg   %ax,%ax
c0104997:	66 90                	xchg   %ax,%ax
c0104999:	66 90                	xchg   %ax,%ax
c010499b:	66 90                	xchg   %ax,%ax
c010499d:	66 90                	xchg   %ax,%ax
c010499f:	66 90                	xchg   %ax,%ax
c01049a1:	66 90                	xchg   %ax,%ax
c01049a3:	66 90                	xchg   %ax,%ax
c01049a5:	66 90                	xchg   %ax,%ax
c01049a7:	66 90                	xchg   %ax,%ax
c01049a9:	66 90                	xchg   %ax,%ax
c01049ab:	66 90                	xchg   %ax,%ax
c01049ad:	66 90                	xchg   %ax,%ax
c01049af:	66 90                	xchg   %ax,%ax
c01049b1:	66 90                	xchg   %ax,%ax
c01049b3:	66 90                	xchg   %ax,%ax
c01049b5:	66 90                	xchg   %ax,%ax
c01049b7:	66 90                	xchg   %ax,%ax
c01049b9:	66 90                	xchg   %ax,%ax
c01049bb:	66 90                	xchg   %ax,%ax
c01049bd:	66 90                	xchg   %ax,%ax
c01049bf:	66 90                	xchg   %ax,%ax
c01049c1:	66 90                	xchg   %ax,%ax
c01049c3:	66 90                	xchg   %ax,%ax
c01049c5:	66 90                	xchg   %ax,%ax
c01049c7:	66 90                	xchg   %ax,%ax
c01049c9:	66 90                	xchg   %ax,%ax
c01049cb:	66 90                	xchg   %ax,%ax
c01049cd:	66 90                	xchg   %ax,%ax
c01049cf:	66 90                	xchg   %ax,%ax
c01049d1:	66 90                	xchg   %ax,%ax
c01049d3:	66 90                	xchg   %ax,%ax
c01049d5:	66 90                	xchg   %ax,%ax
c01049d7:	66 90                	xchg   %ax,%ax
c01049d9:	66 90                	xchg   %ax,%ax
c01049db:	66 90                	xchg   %ax,%ax
c01049dd:	66 90                	xchg   %ax,%ax
c01049df:	66 90                	xchg   %ax,%ax
c01049e1:	66 90                	xchg   %ax,%ax
c01049e3:	66 90                	xchg   %ax,%ax
c01049e5:	66 90                	xchg   %ax,%ax
c01049e7:	66 90                	xchg   %ax,%ax
c01049e9:	66 90                	xchg   %ax,%ax
c01049eb:	66 90                	xchg   %ax,%ax
c01049ed:	66 90                	xchg   %ax,%ax
c01049ef:	66 90                	xchg   %ax,%ax
c01049f1:	66 90                	xchg   %ax,%ax
c01049f3:	66 90                	xchg   %ax,%ax
c01049f5:	66 90                	xchg   %ax,%ax
c01049f7:	66 90                	xchg   %ax,%ax
c01049f9:	66 90                	xchg   %ax,%ax
c01049fb:	66 90                	xchg   %ax,%ax
c01049fd:	66 90                	xchg   %ax,%ax
c01049ff:	66 90                	xchg   %ax,%ax
c0104a01:	66 90                	xchg   %ax,%ax
c0104a03:	66 90                	xchg   %ax,%ax
c0104a05:	66 90                	xchg   %ax,%ax
c0104a07:	66 90                	xchg   %ax,%ax
c0104a09:	66 90                	xchg   %ax,%ax
c0104a0b:	66 90                	xchg   %ax,%ax
c0104a0d:	66 90                	xchg   %ax,%ax
c0104a0f:	66 90                	xchg   %ax,%ax
c0104a11:	66 90                	xchg   %ax,%ax
c0104a13:	66 90                	xchg   %ax,%ax
c0104a15:	66 90                	xchg   %ax,%ax
c0104a17:	66 90                	xchg   %ax,%ax
c0104a19:	66 90                	xchg   %ax,%ax
c0104a1b:	66 90                	xchg   %ax,%ax
c0104a1d:	66 90                	xchg   %ax,%ax
c0104a1f:	66 90                	xchg   %ax,%ax
c0104a21:	66 90                	xchg   %ax,%ax
c0104a23:	66 90                	xchg   %ax,%ax
c0104a25:	66 90                	xchg   %ax,%ax
c0104a27:	66 90                	xchg   %ax,%ax
c0104a29:	66 90                	xchg   %ax,%ax
c0104a2b:	66 90                	xchg   %ax,%ax
c0104a2d:	66 90                	xchg   %ax,%ax
c0104a2f:	66 90                	xchg   %ax,%ax
c0104a31:	66 90                	xchg   %ax,%ax
c0104a33:	66 90                	xchg   %ax,%ax
c0104a35:	66 90                	xchg   %ax,%ax
c0104a37:	66 90                	xchg   %ax,%ax
c0104a39:	66 90                	xchg   %ax,%ax
c0104a3b:	66 90                	xchg   %ax,%ax
c0104a3d:	66 90                	xchg   %ax,%ax
c0104a3f:	66 90                	xchg   %ax,%ax
c0104a41:	66 90                	xchg   %ax,%ax
c0104a43:	66 90                	xchg   %ax,%ax
c0104a45:	66 90                	xchg   %ax,%ax
c0104a47:	66 90                	xchg   %ax,%ax
c0104a49:	66 90                	xchg   %ax,%ax
c0104a4b:	66 90                	xchg   %ax,%ax
c0104a4d:	66 90                	xchg   %ax,%ax
c0104a4f:	66 90                	xchg   %ax,%ax
c0104a51:	66 90                	xchg   %ax,%ax
c0104a53:	66 90                	xchg   %ax,%ax
c0104a55:	66 90                	xchg   %ax,%ax
c0104a57:	66 90                	xchg   %ax,%ax
c0104a59:	66 90                	xchg   %ax,%ax
c0104a5b:	66 90                	xchg   %ax,%ax
c0104a5d:	66 90                	xchg   %ax,%ax
c0104a5f:	66 90                	xchg   %ax,%ax
c0104a61:	66 90                	xchg   %ax,%ax
c0104a63:	66 90                	xchg   %ax,%ax
c0104a65:	66 90                	xchg   %ax,%ax
c0104a67:	66 90                	xchg   %ax,%ax
c0104a69:	66 90                	xchg   %ax,%ax
c0104a6b:	66 90                	xchg   %ax,%ax
c0104a6d:	66 90                	xchg   %ax,%ax
c0104a6f:	66 90                	xchg   %ax,%ax
c0104a71:	66 90                	xchg   %ax,%ax
c0104a73:	66 90                	xchg   %ax,%ax
c0104a75:	66 90                	xchg   %ax,%ax
c0104a77:	66 90                	xchg   %ax,%ax
c0104a79:	66 90                	xchg   %ax,%ax
c0104a7b:	66 90                	xchg   %ax,%ax
c0104a7d:	66 90                	xchg   %ax,%ax
c0104a7f:	66 90                	xchg   %ax,%ax
c0104a81:	66 90                	xchg   %ax,%ax
c0104a83:	66 90                	xchg   %ax,%ax
c0104a85:	66 90                	xchg   %ax,%ax
c0104a87:	66 90                	xchg   %ax,%ax
c0104a89:	66 90                	xchg   %ax,%ax
c0104a8b:	66 90                	xchg   %ax,%ax
c0104a8d:	66 90                	xchg   %ax,%ax
c0104a8f:	66 90                	xchg   %ax,%ax
c0104a91:	66 90                	xchg   %ax,%ax
c0104a93:	66 90                	xchg   %ax,%ax
c0104a95:	66 90                	xchg   %ax,%ax
c0104a97:	66 90                	xchg   %ax,%ax
c0104a99:	66 90                	xchg   %ax,%ax
c0104a9b:	66 90                	xchg   %ax,%ax
c0104a9d:	66 90                	xchg   %ax,%ax
c0104a9f:	66 90                	xchg   %ax,%ax
c0104aa1:	66 90                	xchg   %ax,%ax
c0104aa3:	66 90                	xchg   %ax,%ax
c0104aa5:	66 90                	xchg   %ax,%ax
c0104aa7:	66 90                	xchg   %ax,%ax
c0104aa9:	66 90                	xchg   %ax,%ax
c0104aab:	66 90                	xchg   %ax,%ax
c0104aad:	66 90                	xchg   %ax,%ax
c0104aaf:	66 90                	xchg   %ax,%ax
c0104ab1:	66 90                	xchg   %ax,%ax
c0104ab3:	66 90                	xchg   %ax,%ax
c0104ab5:	66 90                	xchg   %ax,%ax
c0104ab7:	66 90                	xchg   %ax,%ax
c0104ab9:	66 90                	xchg   %ax,%ax
c0104abb:	66 90                	xchg   %ax,%ax
c0104abd:	66 90                	xchg   %ax,%ax
c0104abf:	66 90                	xchg   %ax,%ax
c0104ac1:	66 90                	xchg   %ax,%ax
c0104ac3:	66 90                	xchg   %ax,%ax
c0104ac5:	66 90                	xchg   %ax,%ax
c0104ac7:	66 90                	xchg   %ax,%ax
c0104ac9:	66 90                	xchg   %ax,%ax
c0104acb:	66 90                	xchg   %ax,%ax
c0104acd:	66 90                	xchg   %ax,%ax
c0104acf:	66 90                	xchg   %ax,%ax
c0104ad1:	66 90                	xchg   %ax,%ax
c0104ad3:	66 90                	xchg   %ax,%ax
c0104ad5:	66 90                	xchg   %ax,%ax
c0104ad7:	66 90                	xchg   %ax,%ax
c0104ad9:	66 90                	xchg   %ax,%ax
c0104adb:	66 90                	xchg   %ax,%ax
c0104add:	66 90                	xchg   %ax,%ax
c0104adf:	66 90                	xchg   %ax,%ax
c0104ae1:	66 90                	xchg   %ax,%ax
c0104ae3:	66 90                	xchg   %ax,%ax
c0104ae5:	66 90                	xchg   %ax,%ax
c0104ae7:	66 90                	xchg   %ax,%ax
c0104ae9:	66 90                	xchg   %ax,%ax
c0104aeb:	66 90                	xchg   %ax,%ax
c0104aed:	66 90                	xchg   %ax,%ax
c0104aef:	66 90                	xchg   %ax,%ax
c0104af1:	66 90                	xchg   %ax,%ax
c0104af3:	66 90                	xchg   %ax,%ax
c0104af5:	66 90                	xchg   %ax,%ax
c0104af7:	66 90                	xchg   %ax,%ax
c0104af9:	66 90                	xchg   %ax,%ax
c0104afb:	66 90                	xchg   %ax,%ax
c0104afd:	66 90                	xchg   %ax,%ax
c0104aff:	66 90                	xchg   %ax,%ax
c0104b01:	66 90                	xchg   %ax,%ax
c0104b03:	66 90                	xchg   %ax,%ax
c0104b05:	66 90                	xchg   %ax,%ax
c0104b07:	66 90                	xchg   %ax,%ax
c0104b09:	66 90                	xchg   %ax,%ax
c0104b0b:	66 90                	xchg   %ax,%ax
c0104b0d:	66 90                	xchg   %ax,%ax
c0104b0f:	66 90                	xchg   %ax,%ax
c0104b11:	66 90                	xchg   %ax,%ax
c0104b13:	66 90                	xchg   %ax,%ax
c0104b15:	66 90                	xchg   %ax,%ax
c0104b17:	66 90                	xchg   %ax,%ax
c0104b19:	66 90                	xchg   %ax,%ax
c0104b1b:	66 90                	xchg   %ax,%ax
c0104b1d:	66 90                	xchg   %ax,%ax
c0104b1f:	66 90                	xchg   %ax,%ax
c0104b21:	66 90                	xchg   %ax,%ax
c0104b23:	66 90                	xchg   %ax,%ax
c0104b25:	66 90                	xchg   %ax,%ax
c0104b27:	66 90                	xchg   %ax,%ax
c0104b29:	66 90                	xchg   %ax,%ax
c0104b2b:	66 90                	xchg   %ax,%ax
c0104b2d:	66 90                	xchg   %ax,%ax
c0104b2f:	66 90                	xchg   %ax,%ax
c0104b31:	66 90                	xchg   %ax,%ax
c0104b33:	66 90                	xchg   %ax,%ax
c0104b35:	66 90                	xchg   %ax,%ax
c0104b37:	66 90                	xchg   %ax,%ax
c0104b39:	66 90                	xchg   %ax,%ax
c0104b3b:	66 90                	xchg   %ax,%ax
c0104b3d:	66 90                	xchg   %ax,%ax
c0104b3f:	66 90                	xchg   %ax,%ax
c0104b41:	66 90                	xchg   %ax,%ax
c0104b43:	66 90                	xchg   %ax,%ax
c0104b45:	66 90                	xchg   %ax,%ax
c0104b47:	66 90                	xchg   %ax,%ax
c0104b49:	66 90                	xchg   %ax,%ax
c0104b4b:	66 90                	xchg   %ax,%ax
c0104b4d:	66 90                	xchg   %ax,%ax
c0104b4f:	66 90                	xchg   %ax,%ax
c0104b51:	66 90                	xchg   %ax,%ax
c0104b53:	66 90                	xchg   %ax,%ax
c0104b55:	66 90                	xchg   %ax,%ax
c0104b57:	66 90                	xchg   %ax,%ax
c0104b59:	66 90                	xchg   %ax,%ax
c0104b5b:	66 90                	xchg   %ax,%ax
c0104b5d:	66 90                	xchg   %ax,%ax
c0104b5f:	66 90                	xchg   %ax,%ax
c0104b61:	66 90                	xchg   %ax,%ax
c0104b63:	66 90                	xchg   %ax,%ax
c0104b65:	66 90                	xchg   %ax,%ax
c0104b67:	66 90                	xchg   %ax,%ax
c0104b69:	66 90                	xchg   %ax,%ax
c0104b6b:	66 90                	xchg   %ax,%ax
c0104b6d:	66 90                	xchg   %ax,%ax
c0104b6f:	66 90                	xchg   %ax,%ax
c0104b71:	66 90                	xchg   %ax,%ax
c0104b73:	66 90                	xchg   %ax,%ax
c0104b75:	66 90                	xchg   %ax,%ax
c0104b77:	66 90                	xchg   %ax,%ax
c0104b79:	66 90                	xchg   %ax,%ax
c0104b7b:	66 90                	xchg   %ax,%ax
c0104b7d:	66 90                	xchg   %ax,%ax
c0104b7f:	66 90                	xchg   %ax,%ax
c0104b81:	66 90                	xchg   %ax,%ax
c0104b83:	66 90                	xchg   %ax,%ax
c0104b85:	66 90                	xchg   %ax,%ax
c0104b87:	66 90                	xchg   %ax,%ax
c0104b89:	66 90                	xchg   %ax,%ax
c0104b8b:	66 90                	xchg   %ax,%ax
c0104b8d:	66 90                	xchg   %ax,%ax
c0104b8f:	66 90                	xchg   %ax,%ax
c0104b91:	66 90                	xchg   %ax,%ax
c0104b93:	66 90                	xchg   %ax,%ax
c0104b95:	66 90                	xchg   %ax,%ax
c0104b97:	66 90                	xchg   %ax,%ax
c0104b99:	66 90                	xchg   %ax,%ax
c0104b9b:	66 90                	xchg   %ax,%ax
c0104b9d:	66 90                	xchg   %ax,%ax
c0104b9f:	66 90                	xchg   %ax,%ax
c0104ba1:	66 90                	xchg   %ax,%ax
c0104ba3:	66 90                	xchg   %ax,%ax
c0104ba5:	66 90                	xchg   %ax,%ax
c0104ba7:	66 90                	xchg   %ax,%ax
c0104ba9:	66 90                	xchg   %ax,%ax
c0104bab:	66 90                	xchg   %ax,%ax
c0104bad:	66 90                	xchg   %ax,%ax
c0104baf:	66 90                	xchg   %ax,%ax
c0104bb1:	66 90                	xchg   %ax,%ax
c0104bb3:	66 90                	xchg   %ax,%ax
c0104bb5:	66 90                	xchg   %ax,%ax
c0104bb7:	66 90                	xchg   %ax,%ax
c0104bb9:	66 90                	xchg   %ax,%ax
c0104bbb:	66 90                	xchg   %ax,%ax
c0104bbd:	66 90                	xchg   %ax,%ax
c0104bbf:	66 90                	xchg   %ax,%ax
c0104bc1:	66 90                	xchg   %ax,%ax
c0104bc3:	66 90                	xchg   %ax,%ax
c0104bc5:	66 90                	xchg   %ax,%ax
c0104bc7:	66 90                	xchg   %ax,%ax
c0104bc9:	66 90                	xchg   %ax,%ax
c0104bcb:	66 90                	xchg   %ax,%ax
c0104bcd:	66 90                	xchg   %ax,%ax
c0104bcf:	66 90                	xchg   %ax,%ax
c0104bd1:	66 90                	xchg   %ax,%ax
c0104bd3:	66 90                	xchg   %ax,%ax
c0104bd5:	66 90                	xchg   %ax,%ax
c0104bd7:	66 90                	xchg   %ax,%ax
c0104bd9:	66 90                	xchg   %ax,%ax
c0104bdb:	66 90                	xchg   %ax,%ax
c0104bdd:	66 90                	xchg   %ax,%ax
c0104bdf:	66 90                	xchg   %ax,%ax
c0104be1:	66 90                	xchg   %ax,%ax
c0104be3:	66 90                	xchg   %ax,%ax
c0104be5:	66 90                	xchg   %ax,%ax
c0104be7:	66 90                	xchg   %ax,%ax
c0104be9:	66 90                	xchg   %ax,%ax
c0104beb:	66 90                	xchg   %ax,%ax
c0104bed:	66 90                	xchg   %ax,%ax
c0104bef:	66 90                	xchg   %ax,%ax
c0104bf1:	66 90                	xchg   %ax,%ax
c0104bf3:	66 90                	xchg   %ax,%ax
c0104bf5:	66 90                	xchg   %ax,%ax
c0104bf7:	66 90                	xchg   %ax,%ax
c0104bf9:	66 90                	xchg   %ax,%ax
c0104bfb:	66 90                	xchg   %ax,%ax
c0104bfd:	66 90                	xchg   %ax,%ax
c0104bff:	66 90                	xchg   %ax,%ax
c0104c01:	66 90                	xchg   %ax,%ax
c0104c03:	66 90                	xchg   %ax,%ax
c0104c05:	66 90                	xchg   %ax,%ax
c0104c07:	66 90                	xchg   %ax,%ax
c0104c09:	66 90                	xchg   %ax,%ax
c0104c0b:	66 90                	xchg   %ax,%ax
c0104c0d:	66 90                	xchg   %ax,%ax
c0104c0f:	66 90                	xchg   %ax,%ax
c0104c11:	66 90                	xchg   %ax,%ax
c0104c13:	66 90                	xchg   %ax,%ax
c0104c15:	66 90                	xchg   %ax,%ax
c0104c17:	66 90                	xchg   %ax,%ax
c0104c19:	66 90                	xchg   %ax,%ax
c0104c1b:	66 90                	xchg   %ax,%ax
c0104c1d:	66 90                	xchg   %ax,%ax
c0104c1f:	66 90                	xchg   %ax,%ax
c0104c21:	66 90                	xchg   %ax,%ax
c0104c23:	66 90                	xchg   %ax,%ax
c0104c25:	66 90                	xchg   %ax,%ax
c0104c27:	66 90                	xchg   %ax,%ax
c0104c29:	66 90                	xchg   %ax,%ax
c0104c2b:	66 90                	xchg   %ax,%ax
c0104c2d:	66 90                	xchg   %ax,%ax
c0104c2f:	66 90                	xchg   %ax,%ax
c0104c31:	66 90                	xchg   %ax,%ax
c0104c33:	66 90                	xchg   %ax,%ax
c0104c35:	66 90                	xchg   %ax,%ax
c0104c37:	66 90                	xchg   %ax,%ax
c0104c39:	66 90                	xchg   %ax,%ax
c0104c3b:	66 90                	xchg   %ax,%ax
c0104c3d:	66 90                	xchg   %ax,%ax
c0104c3f:	66 90                	xchg   %ax,%ax
c0104c41:	66 90                	xchg   %ax,%ax
c0104c43:	66 90                	xchg   %ax,%ax
c0104c45:	66 90                	xchg   %ax,%ax
c0104c47:	66 90                	xchg   %ax,%ax
c0104c49:	66 90                	xchg   %ax,%ax
c0104c4b:	66 90                	xchg   %ax,%ax
c0104c4d:	66 90                	xchg   %ax,%ax
c0104c4f:	66 90                	xchg   %ax,%ax
c0104c51:	66 90                	xchg   %ax,%ax
c0104c53:	66 90                	xchg   %ax,%ax
c0104c55:	66 90                	xchg   %ax,%ax
c0104c57:	66 90                	xchg   %ax,%ax
c0104c59:	66 90                	xchg   %ax,%ax
c0104c5b:	66 90                	xchg   %ax,%ax
c0104c5d:	66 90                	xchg   %ax,%ax
c0104c5f:	66 90                	xchg   %ax,%ax
c0104c61:	66 90                	xchg   %ax,%ax
c0104c63:	66 90                	xchg   %ax,%ax
c0104c65:	66 90                	xchg   %ax,%ax
c0104c67:	66 90                	xchg   %ax,%ax
c0104c69:	66 90                	xchg   %ax,%ax
c0104c6b:	66 90                	xchg   %ax,%ax
c0104c6d:	66 90                	xchg   %ax,%ax
c0104c6f:	66 90                	xchg   %ax,%ax
c0104c71:	66 90                	xchg   %ax,%ax
c0104c73:	66 90                	xchg   %ax,%ax
c0104c75:	66 90                	xchg   %ax,%ax
c0104c77:	66 90                	xchg   %ax,%ax
c0104c79:	66 90                	xchg   %ax,%ax
c0104c7b:	66 90                	xchg   %ax,%ax
c0104c7d:	66 90                	xchg   %ax,%ax
c0104c7f:	66 90                	xchg   %ax,%ax
c0104c81:	66 90                	xchg   %ax,%ax
c0104c83:	66 90                	xchg   %ax,%ax
c0104c85:	66 90                	xchg   %ax,%ax
c0104c87:	66 90                	xchg   %ax,%ax
c0104c89:	66 90                	xchg   %ax,%ax
c0104c8b:	66 90                	xchg   %ax,%ax
c0104c8d:	66 90                	xchg   %ax,%ax
c0104c8f:	66 90                	xchg   %ax,%ax
c0104c91:	66 90                	xchg   %ax,%ax
c0104c93:	66 90                	xchg   %ax,%ax
c0104c95:	66 90                	xchg   %ax,%ax
c0104c97:	66 90                	xchg   %ax,%ax
c0104c99:	66 90                	xchg   %ax,%ax
c0104c9b:	66 90                	xchg   %ax,%ax
c0104c9d:	66 90                	xchg   %ax,%ax
c0104c9f:	66 90                	xchg   %ax,%ax
c0104ca1:	66 90                	xchg   %ax,%ax
c0104ca3:	66 90                	xchg   %ax,%ax
c0104ca5:	66 90                	xchg   %ax,%ax
c0104ca7:	66 90                	xchg   %ax,%ax
c0104ca9:	66 90                	xchg   %ax,%ax
c0104cab:	66 90                	xchg   %ax,%ax
c0104cad:	66 90                	xchg   %ax,%ax
c0104caf:	66 90                	xchg   %ax,%ax
c0104cb1:	66 90                	xchg   %ax,%ax
c0104cb3:	66 90                	xchg   %ax,%ax
c0104cb5:	66 90                	xchg   %ax,%ax
c0104cb7:	66 90                	xchg   %ax,%ax
c0104cb9:	66 90                	xchg   %ax,%ax
c0104cbb:	66 90                	xchg   %ax,%ax
c0104cbd:	66 90                	xchg   %ax,%ax
c0104cbf:	66 90                	xchg   %ax,%ax
c0104cc1:	66 90                	xchg   %ax,%ax
c0104cc3:	66 90                	xchg   %ax,%ax
c0104cc5:	66 90                	xchg   %ax,%ax
c0104cc7:	66 90                	xchg   %ax,%ax
c0104cc9:	66 90                	xchg   %ax,%ax
c0104ccb:	66 90                	xchg   %ax,%ax
c0104ccd:	66 90                	xchg   %ax,%ax
c0104ccf:	66 90                	xchg   %ax,%ax
c0104cd1:	66 90                	xchg   %ax,%ax
c0104cd3:	66 90                	xchg   %ax,%ax
c0104cd5:	66 90                	xchg   %ax,%ax
c0104cd7:	66 90                	xchg   %ax,%ax
c0104cd9:	66 90                	xchg   %ax,%ax
c0104cdb:	66 90                	xchg   %ax,%ax
c0104cdd:	66 90                	xchg   %ax,%ax
c0104cdf:	66 90                	xchg   %ax,%ax
c0104ce1:	66 90                	xchg   %ax,%ax
c0104ce3:	66 90                	xchg   %ax,%ax
c0104ce5:	66 90                	xchg   %ax,%ax
c0104ce7:	66 90                	xchg   %ax,%ax
c0104ce9:	66 90                	xchg   %ax,%ax
c0104ceb:	66 90                	xchg   %ax,%ax
c0104ced:	66 90                	xchg   %ax,%ax
c0104cef:	66 90                	xchg   %ax,%ax
c0104cf1:	66 90                	xchg   %ax,%ax
c0104cf3:	66 90                	xchg   %ax,%ax
c0104cf5:	66 90                	xchg   %ax,%ax
c0104cf7:	66 90                	xchg   %ax,%ax
c0104cf9:	66 90                	xchg   %ax,%ax
c0104cfb:	66 90                	xchg   %ax,%ax
c0104cfd:	66 90                	xchg   %ax,%ax
c0104cff:	66 90                	xchg   %ax,%ax
c0104d01:	66 90                	xchg   %ax,%ax
c0104d03:	66 90                	xchg   %ax,%ax
c0104d05:	66 90                	xchg   %ax,%ax
c0104d07:	66 90                	xchg   %ax,%ax
c0104d09:	66 90                	xchg   %ax,%ax
c0104d0b:	66 90                	xchg   %ax,%ax
c0104d0d:	66 90                	xchg   %ax,%ax
c0104d0f:	66 90                	xchg   %ax,%ax
c0104d11:	66 90                	xchg   %ax,%ax
c0104d13:	66 90                	xchg   %ax,%ax
c0104d15:	66 90                	xchg   %ax,%ax
c0104d17:	66 90                	xchg   %ax,%ax
c0104d19:	66 90                	xchg   %ax,%ax
c0104d1b:	66 90                	xchg   %ax,%ax
c0104d1d:	66 90                	xchg   %ax,%ax
c0104d1f:	66 90                	xchg   %ax,%ax
c0104d21:	66 90                	xchg   %ax,%ax
c0104d23:	66 90                	xchg   %ax,%ax
c0104d25:	66 90                	xchg   %ax,%ax
c0104d27:	66 90                	xchg   %ax,%ax
c0104d29:	66 90                	xchg   %ax,%ax
c0104d2b:	66 90                	xchg   %ax,%ax
c0104d2d:	66 90                	xchg   %ax,%ax
c0104d2f:	66 90                	xchg   %ax,%ax
c0104d31:	66 90                	xchg   %ax,%ax
c0104d33:	66 90                	xchg   %ax,%ax
c0104d35:	66 90                	xchg   %ax,%ax
c0104d37:	66 90                	xchg   %ax,%ax
c0104d39:	66 90                	xchg   %ax,%ax
c0104d3b:	66 90                	xchg   %ax,%ax
c0104d3d:	66 90                	xchg   %ax,%ax
c0104d3f:	66 90                	xchg   %ax,%ax
c0104d41:	66 90                	xchg   %ax,%ax
c0104d43:	66 90                	xchg   %ax,%ax
c0104d45:	66 90                	xchg   %ax,%ax
c0104d47:	66 90                	xchg   %ax,%ax
c0104d49:	66 90                	xchg   %ax,%ax
c0104d4b:	66 90                	xchg   %ax,%ax
c0104d4d:	66 90                	xchg   %ax,%ax
c0104d4f:	66 90                	xchg   %ax,%ax
c0104d51:	66 90                	xchg   %ax,%ax
c0104d53:	66 90                	xchg   %ax,%ax
c0104d55:	66 90                	xchg   %ax,%ax
c0104d57:	66 90                	xchg   %ax,%ax
c0104d59:	66 90                	xchg   %ax,%ax
c0104d5b:	66 90                	xchg   %ax,%ax
c0104d5d:	66 90                	xchg   %ax,%ax
c0104d5f:	66 90                	xchg   %ax,%ax
c0104d61:	66 90                	xchg   %ax,%ax
c0104d63:	66 90                	xchg   %ax,%ax
c0104d65:	66 90                	xchg   %ax,%ax
c0104d67:	66 90                	xchg   %ax,%ax
c0104d69:	66 90                	xchg   %ax,%ax
c0104d6b:	66 90                	xchg   %ax,%ax
c0104d6d:	66 90                	xchg   %ax,%ax
c0104d6f:	66 90                	xchg   %ax,%ax
c0104d71:	66 90                	xchg   %ax,%ax
c0104d73:	66 90                	xchg   %ax,%ax
c0104d75:	66 90                	xchg   %ax,%ax
c0104d77:	66 90                	xchg   %ax,%ax
c0104d79:	66 90                	xchg   %ax,%ax
c0104d7b:	66 90                	xchg   %ax,%ax
c0104d7d:	66 90                	xchg   %ax,%ax
c0104d7f:	66 90                	xchg   %ax,%ax
c0104d81:	66 90                	xchg   %ax,%ax
c0104d83:	66 90                	xchg   %ax,%ax
c0104d85:	66 90                	xchg   %ax,%ax
c0104d87:	66 90                	xchg   %ax,%ax
c0104d89:	66 90                	xchg   %ax,%ax
c0104d8b:	66 90                	xchg   %ax,%ax
c0104d8d:	66 90                	xchg   %ax,%ax
c0104d8f:	66 90                	xchg   %ax,%ax
c0104d91:	66 90                	xchg   %ax,%ax
c0104d93:	66 90                	xchg   %ax,%ax
c0104d95:	66 90                	xchg   %ax,%ax
c0104d97:	66 90                	xchg   %ax,%ax
c0104d99:	66 90                	xchg   %ax,%ax
c0104d9b:	66 90                	xchg   %ax,%ax
c0104d9d:	66 90                	xchg   %ax,%ax
c0104d9f:	66 90                	xchg   %ax,%ax
c0104da1:	66 90                	xchg   %ax,%ax
c0104da3:	66 90                	xchg   %ax,%ax
c0104da5:	66 90                	xchg   %ax,%ax
c0104da7:	66 90                	xchg   %ax,%ax
c0104da9:	66 90                	xchg   %ax,%ax
c0104dab:	66 90                	xchg   %ax,%ax
c0104dad:	66 90                	xchg   %ax,%ax
c0104daf:	66 90                	xchg   %ax,%ax
c0104db1:	66 90                	xchg   %ax,%ax
c0104db3:	66 90                	xchg   %ax,%ax
c0104db5:	66 90                	xchg   %ax,%ax
c0104db7:	66 90                	xchg   %ax,%ax
c0104db9:	66 90                	xchg   %ax,%ax
c0104dbb:	66 90                	xchg   %ax,%ax
c0104dbd:	66 90                	xchg   %ax,%ax
c0104dbf:	66 90                	xchg   %ax,%ax
c0104dc1:	66 90                	xchg   %ax,%ax
c0104dc3:	66 90                	xchg   %ax,%ax
c0104dc5:	66 90                	xchg   %ax,%ax
c0104dc7:	66 90                	xchg   %ax,%ax
c0104dc9:	66 90                	xchg   %ax,%ax
c0104dcb:	66 90                	xchg   %ax,%ax
c0104dcd:	66 90                	xchg   %ax,%ax
c0104dcf:	66 90                	xchg   %ax,%ax
c0104dd1:	66 90                	xchg   %ax,%ax
c0104dd3:	66 90                	xchg   %ax,%ax
c0104dd5:	66 90                	xchg   %ax,%ax
c0104dd7:	66 90                	xchg   %ax,%ax
c0104dd9:	66 90                	xchg   %ax,%ax
c0104ddb:	66 90                	xchg   %ax,%ax
c0104ddd:	66 90                	xchg   %ax,%ax
c0104ddf:	66 90                	xchg   %ax,%ax
c0104de1:	66 90                	xchg   %ax,%ax
c0104de3:	66 90                	xchg   %ax,%ax
c0104de5:	66 90                	xchg   %ax,%ax
c0104de7:	66 90                	xchg   %ax,%ax
c0104de9:	66 90                	xchg   %ax,%ax
c0104deb:	66 90                	xchg   %ax,%ax
c0104ded:	66 90                	xchg   %ax,%ax
c0104def:	66 90                	xchg   %ax,%ax
c0104df1:	66 90                	xchg   %ax,%ax
c0104df3:	66 90                	xchg   %ax,%ax
c0104df5:	66 90                	xchg   %ax,%ax
c0104df7:	66 90                	xchg   %ax,%ax
c0104df9:	66 90                	xchg   %ax,%ax
c0104dfb:	66 90                	xchg   %ax,%ax
c0104dfd:	66 90                	xchg   %ax,%ax
c0104dff:	66 90                	xchg   %ax,%ax
c0104e01:	66 90                	xchg   %ax,%ax
c0104e03:	66 90                	xchg   %ax,%ax
c0104e05:	66 90                	xchg   %ax,%ax
c0104e07:	66 90                	xchg   %ax,%ax
c0104e09:	66 90                	xchg   %ax,%ax
c0104e0b:	66 90                	xchg   %ax,%ax
c0104e0d:	66 90                	xchg   %ax,%ax
c0104e0f:	66 90                	xchg   %ax,%ax
c0104e11:	66 90                	xchg   %ax,%ax
c0104e13:	66 90                	xchg   %ax,%ax
c0104e15:	66 90                	xchg   %ax,%ax
c0104e17:	66 90                	xchg   %ax,%ax
c0104e19:	66 90                	xchg   %ax,%ax
c0104e1b:	66 90                	xchg   %ax,%ax
c0104e1d:	66 90                	xchg   %ax,%ax
c0104e1f:	66 90                	xchg   %ax,%ax
c0104e21:	66 90                	xchg   %ax,%ax
c0104e23:	66 90                	xchg   %ax,%ax
c0104e25:	66 90                	xchg   %ax,%ax
c0104e27:	66 90                	xchg   %ax,%ax
c0104e29:	66 90                	xchg   %ax,%ax
c0104e2b:	66 90                	xchg   %ax,%ax
c0104e2d:	66 90                	xchg   %ax,%ax
c0104e2f:	66 90                	xchg   %ax,%ax
c0104e31:	66 90                	xchg   %ax,%ax
c0104e33:	66 90                	xchg   %ax,%ax
c0104e35:	66 90                	xchg   %ax,%ax
c0104e37:	66 90                	xchg   %ax,%ax
c0104e39:	66 90                	xchg   %ax,%ax
c0104e3b:	66 90                	xchg   %ax,%ax
c0104e3d:	66 90                	xchg   %ax,%ax
c0104e3f:	66 90                	xchg   %ax,%ax
c0104e41:	66 90                	xchg   %ax,%ax
c0104e43:	66 90                	xchg   %ax,%ax
c0104e45:	66 90                	xchg   %ax,%ax
c0104e47:	66 90                	xchg   %ax,%ax
c0104e49:	66 90                	xchg   %ax,%ax
c0104e4b:	66 90                	xchg   %ax,%ax
c0104e4d:	66 90                	xchg   %ax,%ax
c0104e4f:	66 90                	xchg   %ax,%ax
c0104e51:	66 90                	xchg   %ax,%ax
c0104e53:	66 90                	xchg   %ax,%ax
c0104e55:	66 90                	xchg   %ax,%ax
c0104e57:	66 90                	xchg   %ax,%ax
c0104e59:	66 90                	xchg   %ax,%ax
c0104e5b:	66 90                	xchg   %ax,%ax
c0104e5d:	66 90                	xchg   %ax,%ax
c0104e5f:	66 90                	xchg   %ax,%ax
c0104e61:	66 90                	xchg   %ax,%ax
c0104e63:	66 90                	xchg   %ax,%ax
c0104e65:	66 90                	xchg   %ax,%ax
c0104e67:	66 90                	xchg   %ax,%ax
c0104e69:	66 90                	xchg   %ax,%ax
c0104e6b:	66 90                	xchg   %ax,%ax
c0104e6d:	66 90                	xchg   %ax,%ax
c0104e6f:	66 90                	xchg   %ax,%ax
c0104e71:	66 90                	xchg   %ax,%ax
c0104e73:	66 90                	xchg   %ax,%ax
c0104e75:	66 90                	xchg   %ax,%ax
c0104e77:	66 90                	xchg   %ax,%ax
c0104e79:	66 90                	xchg   %ax,%ax
c0104e7b:	66 90                	xchg   %ax,%ax
c0104e7d:	66 90                	xchg   %ax,%ax
c0104e7f:	66 90                	xchg   %ax,%ax
c0104e81:	66 90                	xchg   %ax,%ax
c0104e83:	66 90                	xchg   %ax,%ax
c0104e85:	66 90                	xchg   %ax,%ax
c0104e87:	66 90                	xchg   %ax,%ax
c0104e89:	66 90                	xchg   %ax,%ax
c0104e8b:	66 90                	xchg   %ax,%ax
c0104e8d:	66 90                	xchg   %ax,%ax
c0104e8f:	66 90                	xchg   %ax,%ax
c0104e91:	66 90                	xchg   %ax,%ax
c0104e93:	66 90                	xchg   %ax,%ax
c0104e95:	66 90                	xchg   %ax,%ax
c0104e97:	66 90                	xchg   %ax,%ax
c0104e99:	66 90                	xchg   %ax,%ax
c0104e9b:	66 90                	xchg   %ax,%ax
c0104e9d:	66 90                	xchg   %ax,%ax
c0104e9f:	66 90                	xchg   %ax,%ax
c0104ea1:	66 90                	xchg   %ax,%ax
c0104ea3:	66 90                	xchg   %ax,%ax
c0104ea5:	66 90                	xchg   %ax,%ax
c0104ea7:	66 90                	xchg   %ax,%ax
c0104ea9:	66 90                	xchg   %ax,%ax
c0104eab:	66 90                	xchg   %ax,%ax
c0104ead:	66 90                	xchg   %ax,%ax
c0104eaf:	66 90                	xchg   %ax,%ax
c0104eb1:	66 90                	xchg   %ax,%ax
c0104eb3:	66 90                	xchg   %ax,%ax
c0104eb5:	66 90                	xchg   %ax,%ax
c0104eb7:	66 90                	xchg   %ax,%ax
c0104eb9:	66 90                	xchg   %ax,%ax
c0104ebb:	66 90                	xchg   %ax,%ax
c0104ebd:	66 90                	xchg   %ax,%ax
c0104ebf:	66 90                	xchg   %ax,%ax
c0104ec1:	66 90                	xchg   %ax,%ax
c0104ec3:	66 90                	xchg   %ax,%ax
c0104ec5:	66 90                	xchg   %ax,%ax
c0104ec7:	66 90                	xchg   %ax,%ax
c0104ec9:	66 90                	xchg   %ax,%ax
c0104ecb:	66 90                	xchg   %ax,%ax
c0104ecd:	66 90                	xchg   %ax,%ax
c0104ecf:	66 90                	xchg   %ax,%ax
c0104ed1:	66 90                	xchg   %ax,%ax
c0104ed3:	66 90                	xchg   %ax,%ax
c0104ed5:	66 90                	xchg   %ax,%ax
c0104ed7:	66 90                	xchg   %ax,%ax
c0104ed9:	66 90                	xchg   %ax,%ax
c0104edb:	66 90                	xchg   %ax,%ax
c0104edd:	66 90                	xchg   %ax,%ax
c0104edf:	66 90                	xchg   %ax,%ax
c0104ee1:	66 90                	xchg   %ax,%ax
c0104ee3:	66 90                	xchg   %ax,%ax
c0104ee5:	66 90                	xchg   %ax,%ax
c0104ee7:	66 90                	xchg   %ax,%ax
c0104ee9:	66 90                	xchg   %ax,%ax
c0104eeb:	66 90                	xchg   %ax,%ax
c0104eed:	66 90                	xchg   %ax,%ax
c0104eef:	66 90                	xchg   %ax,%ax
c0104ef1:	66 90                	xchg   %ax,%ax
c0104ef3:	66 90                	xchg   %ax,%ax
c0104ef5:	66 90                	xchg   %ax,%ax
c0104ef7:	66 90                	xchg   %ax,%ax
c0104ef9:	66 90                	xchg   %ax,%ax
c0104efb:	66 90                	xchg   %ax,%ax
c0104efd:	66 90                	xchg   %ax,%ax
c0104eff:	66 90                	xchg   %ax,%ax
c0104f01:	66 90                	xchg   %ax,%ax
c0104f03:	66 90                	xchg   %ax,%ax
c0104f05:	66 90                	xchg   %ax,%ax
c0104f07:	66 90                	xchg   %ax,%ax
c0104f09:	66 90                	xchg   %ax,%ax
c0104f0b:	66 90                	xchg   %ax,%ax
c0104f0d:	66 90                	xchg   %ax,%ax
c0104f0f:	66 90                	xchg   %ax,%ax
c0104f11:	66 90                	xchg   %ax,%ax
c0104f13:	66 90                	xchg   %ax,%ax
c0104f15:	66 90                	xchg   %ax,%ax
c0104f17:	66 90                	xchg   %ax,%ax
c0104f19:	66 90                	xchg   %ax,%ax
c0104f1b:	66 90                	xchg   %ax,%ax
c0104f1d:	66 90                	xchg   %ax,%ax
c0104f1f:	66 90                	xchg   %ax,%ax
c0104f21:	66 90                	xchg   %ax,%ax
c0104f23:	66 90                	xchg   %ax,%ax
c0104f25:	66 90                	xchg   %ax,%ax
c0104f27:	66 90                	xchg   %ax,%ax
c0104f29:	66 90                	xchg   %ax,%ax
c0104f2b:	66 90                	xchg   %ax,%ax
c0104f2d:	66 90                	xchg   %ax,%ax
c0104f2f:	66 90                	xchg   %ax,%ax
c0104f31:	66 90                	xchg   %ax,%ax
c0104f33:	66 90                	xchg   %ax,%ax
c0104f35:	66 90                	xchg   %ax,%ax
c0104f37:	66 90                	xchg   %ax,%ax
c0104f39:	66 90                	xchg   %ax,%ax
c0104f3b:	66 90                	xchg   %ax,%ax
c0104f3d:	66 90                	xchg   %ax,%ax
c0104f3f:	66 90                	xchg   %ax,%ax
c0104f41:	66 90                	xchg   %ax,%ax
c0104f43:	66 90                	xchg   %ax,%ax
c0104f45:	66 90                	xchg   %ax,%ax
c0104f47:	66 90                	xchg   %ax,%ax
c0104f49:	66 90                	xchg   %ax,%ax
c0104f4b:	66 90                	xchg   %ax,%ax
c0104f4d:	66 90                	xchg   %ax,%ax
c0104f4f:	66 90                	xchg   %ax,%ax
c0104f51:	66 90                	xchg   %ax,%ax
c0104f53:	66 90                	xchg   %ax,%ax
c0104f55:	66 90                	xchg   %ax,%ax
c0104f57:	66 90                	xchg   %ax,%ax
c0104f59:	66 90                	xchg   %ax,%ax
c0104f5b:	66 90                	xchg   %ax,%ax
c0104f5d:	66 90                	xchg   %ax,%ax
c0104f5f:	66 90                	xchg   %ax,%ax
c0104f61:	66 90                	xchg   %ax,%ax
c0104f63:	66 90                	xchg   %ax,%ax
c0104f65:	66 90                	xchg   %ax,%ax
c0104f67:	66 90                	xchg   %ax,%ax
c0104f69:	66 90                	xchg   %ax,%ax
c0104f6b:	66 90                	xchg   %ax,%ax
c0104f6d:	66 90                	xchg   %ax,%ax
c0104f6f:	66 90                	xchg   %ax,%ax
c0104f71:	66 90                	xchg   %ax,%ax
c0104f73:	66 90                	xchg   %ax,%ax
c0104f75:	66 90                	xchg   %ax,%ax
c0104f77:	66 90                	xchg   %ax,%ax
c0104f79:	66 90                	xchg   %ax,%ax
c0104f7b:	66 90                	xchg   %ax,%ax
c0104f7d:	66 90                	xchg   %ax,%ax
c0104f7f:	66 90                	xchg   %ax,%ax
c0104f81:	66 90                	xchg   %ax,%ax
c0104f83:	66 90                	xchg   %ax,%ax
c0104f85:	66 90                	xchg   %ax,%ax
c0104f87:	66 90                	xchg   %ax,%ax
c0104f89:	66 90                	xchg   %ax,%ax
c0104f8b:	66 90                	xchg   %ax,%ax
c0104f8d:	66 90                	xchg   %ax,%ax
c0104f8f:	66 90                	xchg   %ax,%ax
c0104f91:	66 90                	xchg   %ax,%ax
c0104f93:	66 90                	xchg   %ax,%ax
c0104f95:	66 90                	xchg   %ax,%ax
c0104f97:	66 90                	xchg   %ax,%ax
c0104f99:	66 90                	xchg   %ax,%ax
c0104f9b:	66 90                	xchg   %ax,%ax
c0104f9d:	66 90                	xchg   %ax,%ax
c0104f9f:	66 90                	xchg   %ax,%ax
c0104fa1:	66 90                	xchg   %ax,%ax
c0104fa3:	66 90                	xchg   %ax,%ax
c0104fa5:	66 90                	xchg   %ax,%ax
c0104fa7:	66 90                	xchg   %ax,%ax
c0104fa9:	66 90                	xchg   %ax,%ax
c0104fab:	66 90                	xchg   %ax,%ax
c0104fad:	66 90                	xchg   %ax,%ax
c0104faf:	66 90                	xchg   %ax,%ax
c0104fb1:	66 90                	xchg   %ax,%ax
c0104fb3:	66 90                	xchg   %ax,%ax
c0104fb5:	66 90                	xchg   %ax,%ax
c0104fb7:	66 90                	xchg   %ax,%ax
c0104fb9:	66 90                	xchg   %ax,%ax
c0104fbb:	66 90                	xchg   %ax,%ax
c0104fbd:	66 90                	xchg   %ax,%ax
c0104fbf:	66 90                	xchg   %ax,%ax
c0104fc1:	66 90                	xchg   %ax,%ax
c0104fc3:	66 90                	xchg   %ax,%ax
c0104fc5:	66 90                	xchg   %ax,%ax
c0104fc7:	66 90                	xchg   %ax,%ax
c0104fc9:	66 90                	xchg   %ax,%ax
c0104fcb:	66 90                	xchg   %ax,%ax
c0104fcd:	66 90                	xchg   %ax,%ax
c0104fcf:	66 90                	xchg   %ax,%ax
c0104fd1:	66 90                	xchg   %ax,%ax
c0104fd3:	66 90                	xchg   %ax,%ax
c0104fd5:	66 90                	xchg   %ax,%ax
c0104fd7:	66 90                	xchg   %ax,%ax
c0104fd9:	66 90                	xchg   %ax,%ax
c0104fdb:	66 90                	xchg   %ax,%ax
c0104fdd:	66 90                	xchg   %ax,%ax
c0104fdf:	66 90                	xchg   %ax,%ax
c0104fe1:	66 90                	xchg   %ax,%ax
c0104fe3:	66 90                	xchg   %ax,%ax
c0104fe5:	66 90                	xchg   %ax,%ax
c0104fe7:	66 90                	xchg   %ax,%ax
c0104fe9:	66 90                	xchg   %ax,%ax
c0104feb:	66 90                	xchg   %ax,%ax
c0104fed:	66 90                	xchg   %ax,%ax
c0104fef:	66 90                	xchg   %ax,%ax
c0104ff1:	66 90                	xchg   %ax,%ax
c0104ff3:	66 90                	xchg   %ax,%ax
c0104ff5:	66 90                	xchg   %ax,%ax
c0104ff7:	66 90                	xchg   %ax,%ax
c0104ff9:	66 90                	xchg   %ax,%ax
c0104ffb:	66 90                	xchg   %ax,%ax
c0104ffd:	66 90                	xchg   %ax,%ax
c0104fff:	90                   	nop
