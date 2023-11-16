%include 'in_out.asm'

  SECTION .data
  msg: DB 'Введите x: ',0
  div: DB 'Результат: ',0
  
  SECTION .bss
  x:	RESB 80

  SECTION .text
  GLOBAL _start
  _start:
  
  	mov eax, msg
	call sprintLF
	
	mov ecx, x
	mov edx, 80
	call sread
	mov eax, x
	call atoi
	xor edx, edx

	mov ebx, eax
	mul ebx
	mul ebx
	mov ebx, 1
	mul ebx
	mov ebx, 3
	div ebx 
	add eax, 21
	mov edi, eax

	mov eax,div 
	call sprint
	mov eax,edi 
	call iprintLF  
	call quit

