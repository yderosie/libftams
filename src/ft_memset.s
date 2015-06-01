section .text
	global ft_memset

ft_memset:
	cmp rdx, 0
	je .end
	mov rcx, rdx
	mov rax, rsi
	cld
	rep stosb

.end:
	mov rdi, rax
	ret
