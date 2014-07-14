ENTRY(start)  			/*ENTRY(symbol),指定symbol就是链接器指定的内核的入口*/

SECTIONS {
	PROVIDE(kernel_start = 0xc0100000);

	. = 0x100000; 	 	
		/* "."的代表当前的虚拟地址，赋值语句的意思是将当前虚拟地址设置成0x10000		
		*为什么0x100000,grub从elf内核文件中读取物理地址（加载地址LMA），这个值    
		*必须大于或等于1M，并且小于真实的物理地址RAM的大小。这是grub的限制，并不是
		*多启动机制的限制
		*/
	.init.text :
	{
		*(.init.text)
		. = ALIGN(4096);
	}

	.init.data :
	{
		*(.init.data)
		. = ALIGN(4096);
	}

	. += 0xc0000000;

	.text :AT(ADDR(.text) - 0xc0000000) 
	{
		*(.text)
		. = ALIGN(4096);
	}

	.data :AT(ADDR(.data) - 0xc0000000)
	{
		*(.data)
		*(.rodata)
		. = ALIGN(4096);
	}

	.bss :AT(ADDR(.bss) - 0xc0000000)
	{
		*(.bss)
		. = ALIGN(4096);
	}

	.stab : AT(ADDR(.stab) - 0xc0000000)
	{
		*(.stab)
		. = ALIGN(4096);
	}

	.stabstr : AT(ADDR(.stabstr) - 0xc0000000)
	{
		*(.stabstr)
		. = ALIGN(4096);
	}


	PROVIDE(kernel_end = .);
}
