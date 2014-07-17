/*
 * =====================================================================================
 *
 *       Filename:  idt.h
 *
 *    Description:  中断描述符的定义与声明
 *
 *        Version:  1.0
 *        Created:  2014年05月26日 21时18分11秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Shui(dubingyang), dubingyangxiyou@gmail.com
 *        Company:  Class 1201 of software engineering
 *
 * =====================================================================================
 */

#ifndef IDT_H
#define IDT_H

#include "types.h"
#include "screen_port.h"



//中段描述符的结构的声明，定义也是声明
//段描述符共8个字节，共64位
typedef struct idt_t{
	uint16 	base_low;  	//低16位是偏移的低地址，0-15	
	uint16  segment; 	//16-31是段选择子
	uint8 	must_0; 	//这一个字节内一直为0
	uint8 	flag; 		//设置各种标示
	uint16 	base_high; 	//偏移的高地址，16-31
}__attribute__((packed)) idt_entry_t;

//IDTR,interrupt Descripe Table registers，共48个字节
typedef struct idt_ptr_t{
	uint16 	limit; 		//长度
	uint32 	base; 		//基础地址
}__attribute((packed)) idt_ptr_t;

//需要保护的寄存器的类型，cpu在中断的产生的时自动包保存了部分的执行现场
//但是依旧有很多寄存器需要我们自己去保护和恢复

typedef struct pt_regs_t{
	uint32 ds;
	uint32 edi;
	uint32 esi;
	uint32 ebp;
	uint32 esp;
	uint32 ebx;
	uint32 edx;
	uint32 ecx;
	uint32 eax;
	uint32 int_no; 		//中断号
	uint32 err_code; 	//错误代码
	uint32 eip;             //下面的寄存器是由cpu自动压入到栈中的
	uint32 cs;
	uint32 eflags;
	uint32 useresp;
	uint32 ss;

}pt_regs_t;

//定义中断处理的函数指针
typedef void (*interrupt_handler_t) (pt_regs_t *);

/*注册一个中断处理函数
 *@n 
 *@ h
 */
void registers_interrupt_handler(uint8 n, interrupt_handler_t h);

/*@调用中断处理函数
 *@regs与之相关的寄存器
 *
 */
void isr_handler(pt_regs_t  *regs);

/*@声明中断处理函数，0-19属于CPU的异常的中断
 * 20-31是entel保留的
 *
 */

extern void  isr0();  //0   #DE 除0异常
void  isr1();  //1   #DB  调试异常
void  isr2();  //2   #NMI NMI
void  isr3();  //3   #BP  断点异常
void  isr4();  //4   #OF  溢出
void  isr5();  //5   #BR  对数组的引用超过边界
void  isr6();  //6   #UD  无效或未定义的操作码
void  isr7();  //7   #NM  设备不可用无数学协处理器
void  isr8();  //8   #DF 双重故障有错误代码
void  isr9();  //9    协处理器跨段操作
void isr10();  //10  #TS	 无效的TSS有错误代码
void isr11();  //11  #NP 	段不存在有错误代码
void isr12();  //12  #SS 	栈错误有错误代码
void isr13();  //13  #GP	常规保护有错误代码
void isr14();  //14  #PF 	页故障有错误代码
void isr15();  //15  #		保留
void isr16();  //16  #MF	浮点处理错误单元	      	
void isr17();  //17  #AC	对齐检查
void isr18();  //18  #MC	机器检查      	
void isr19();  //19  #XM	simd单指令多数据（）浮点异常      	


//保留
void isr20();  	      	
void isr21();  	      	
void isr22();  	      	
void isr23();  	      	
void isr24();  	      	
void isr25();  	      	
void isr26();  	      	
void isr27();  	      	
void isr28();  	      	
void isr29();  	      	
void isr30();  	      	
void isr31();  	      	


void isr255();  	      	
void irq0(); 
void irq1();
void irq2();
void irq3();
void irq4();
void irq5();
void irq6();
void irq7();
void irq8();
void irq9();
void irq10();
void irq11();
void irq12();
void irq13();
void irq14();
void irq15();
//定义IRQ
#define 	IRQ0 	 32
#define 	IRQ1 	 33
#define 	IRQ2 	 34
#define 	IRQ3 	 35
#define 	IRQ4 	 36
#define 	IRQ5 	 37
#define 	IRQ6 	 38
#define 	IRQ7 	 39
#define 	IRQ8 	 40
#define 	IRQ9 	 41
#define 	IRQ10	 42
#define 	IRQ11	 43
#define 	IRQ12	 44
#define 	IRQ13	 45
#define 	IRQ14	 46
#define 	IRQ15	 47


/*@初始化中断描述符函数
 *
 *
 *
 */
void init_idt();

#endif //IDT_H
