section .text
	global ft_memalloc
	extern malloc
	extern ft_bzero

ft_memalloc:
	enter 0, 0
	mov r12, rdi
	call malloc
	cmp rax, 0
	je .error
	mov rsi, r12
	mov rdi, rax
	call ft_bzero
	mov rax, rdi
	leave
	ret

.error:
	mov rax, 0
	ret
