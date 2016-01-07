section .text
	global ft_strcat

ft_strcat:
	mov rax, rdi

.while:
	cmp [rdi], byte 0
	je .copy
	inc rdi
	jmp .while

.copy:
	cmp [rsi], byte 0
	je .end
	mov dl, [rsi]
	mov [rdi], dl
	inc rdi
	inc rsi
	jmp .copy

.end:
	mov [rdi], byte 0
	ret
