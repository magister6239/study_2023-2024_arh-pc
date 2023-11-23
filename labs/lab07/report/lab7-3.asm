%include 'in_out.asm'
section .data
	msgA db 'Введите A: ',0h
	msgB db 'Введите B: ',0h
	msgC db 'Введите C: ',0h
	msgM db "Наибольшее число: ",0h

section .bss
	max resb 10
	A resb 10
	B resb 10
	C resb 10

section .text
	global _start
	
_start:

	mov eax,msgA
	call sprint

	mov edx,10

	mov ecx,A
	call sread
	
	mov eax,msgB
	call sprint

	mov ecx,B
	call sread
	
	mov eax,msgC
	call sprint

	mov ecx,C
	call sread

	mov eax,A
	call atoi
	mov [A],eax
	
	mov eax,B
	call atoi
	mov [B],eax
	
	mov eax,C
	call atoi
	mov [C],eax
	
	mov ecx, [A]
	mov [max], ecx
	cmp ecx, [B]
	jg check_c
	mov ecx, [B]
	mov [max], ecx
	
	check_c:
	cmp ecx, [C]
	jg final
	mov ecx, [C]
	mov [max], ecx
	
	final:
	mov eax, msgM
	call sprint
	mov eax,[max]
	call iprintLF
	call quit
	
