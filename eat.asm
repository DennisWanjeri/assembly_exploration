SECTION .data 			;contains uninitialised data
EatMsg:	db "Eat at Joe!", 10
EatLen:	equ $-EatMsg
	SECTION .bss 		;contains uninitialized data
	SECTION .text		;contains code
	global _start 		;starting point
_start:
	nop
	mov eax, 4		;specify sys_write call
	mov ebx, 1 		;specify file description,stdout
	mov ecx, EatMsg		;pass message offset
	mov edx, EatLen 	;pass the length of msg
	int 80H			;system to output text to stdout

	mov eax, 1		;specify exit syscall
	mov ebx, 0		;return a code of zero
	int 80H			;system to terminate program
