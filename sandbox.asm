section .data
	section .text
global _start
_start:
	nop
	mov ax, 067FEh
	mov bx, ax
	mov cl, bh
	mov ch, bl
	xchg cl,ch
	nop
	section.bss
