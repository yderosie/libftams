section .text
	global ft_memset

ft_memset:
	mov rcx, rdx
	mov rax, rsi
	mov r12, rdi
	cld
	rep stosb

.end:
	mov rax, r12
	ret
