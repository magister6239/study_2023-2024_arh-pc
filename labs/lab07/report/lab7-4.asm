%include 'in_out.asm'
section .data
	msgx db 'Введите x: ',0h
	msga db 'Введите a: ',0h
	msgResult db "Результат: ",0h

section .bss
	res resb 10
	a resb 10
	x resb 10

section .text
	global _start
	
_start:

	mov eax,msgx
	call sprint

	mov edx,10

	mov ecx,x
	call sread
	
	mov eax,msga
	call sprint

	mov ecx,a
	call sread

	mov eax,a
	call atoi
	mov [a],eax
	
	mov eax,x
	call atoi
	mov [x],eax
	
	mov eax, 5
	mov [res], eax
	mov ecx, [a]
	cmp ecx, [x]
	jg final
	
	mov eax, [x]
	sub eax, [a]
	mov [res], eax
	
	final:
	mov eax, msgResult
	call sprint
	mov eax,[res]
	call iprintLF
	call quit
	
