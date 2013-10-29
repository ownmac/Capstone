MEMORY 
	{
		FLASH : ORIGIN = 0, LENGTH = 1M
		RAM : ORIGIN = 0xA0000000, LENGTH = 1M
	}

ENTRY(_start)
SECTIONS 
{
	.text :
		{
			*(.text)
		} > FLASH
	
	. = 0x10000000;
	.data : { *(.data) }
	.bss : { *(.bss) }
}
