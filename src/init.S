/*

	This is the first assembly code written for cortex M3 mcu


*/


/* Set to thumb mode instructions*/
	.thumb
	.syntax	unified
	.global _start
	.extern main
	.text
	.equ	STACKINIT,	0x10000000




/*	.org	0
*/
/*Vectors*/
	.word	STACKINIT
	.word	_start+1
	.word	_nmi_handler+1


_start:
	mov	r1, 0x10
	str	r0, [r1]
	bl	main

_nmi_handler:
	mov	r1, 0x20
	str	r0, [r1]
	bl	_nmi_handler




