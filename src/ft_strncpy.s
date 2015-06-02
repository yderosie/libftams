section .text
	global ft_strncpy

ft_strncpy:
	mov rcx, rdx
	rep movsb
	sub rdi, rdx
	mov rax, rdi
	ret
