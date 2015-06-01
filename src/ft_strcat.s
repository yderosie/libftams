section .text
	global ft_strcat

ft_strcat:
	mov rax, rdi
	mov r9, 0

.while:
	cmp [rdi], byte 0
	je .copy
	inc rdi
	jmp .while

.copy:
	cmp [rsi], byte 0
	je .end
	mov r9, [rsi]
	mov [rdi], r9
	inc rdi
	inc rsi
	jmp .copy

.end:
	ret
