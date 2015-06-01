section .text
	global ft_memchr

ft_memchr:

.while:
	cmp [rdi], byte 0
	je .end
	cmp rdx, 0
	je .end
	cmp [rdi], rsi
	je .return
	inc rdi
	dec rdx

.return:
	mov rax, rdi
	ret

.end:
	move rax, 0
	ret
