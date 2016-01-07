section .text
	global ft_memcpy

ft_memcpy:
	cmp rdx, 0
	je .end
	mov rcx, rdx
	cld
	rep movsb

.end:
	sub rdi, rdx
	mov rax, rdi
	ret
