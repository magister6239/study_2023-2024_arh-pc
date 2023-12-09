%include 'in_out.asm'
SECTION .data
	msg_func db "Функция: f(x)=3(10 + x)",0
	msg_res db "Результат: ",0
SECTION .text
	global _start
_start:
	mov eax, msg_func
	call sprintLF
	pop ecx 
	pop edx 
	sub ecx,1 
	mov esi, 0
	mov edi, 3
next:
	cmp ecx,0h 
	jz _end 
	pop eax 
	call atoi 
	call _calc
	loop next 
_end:
	mov eax, msg_res 
	call sprint
	mov eax, esi
	call iprintLF
	call quit
_calc:
	add eax, 10
	mul edi
	add esi, eax
	ret

