section .text
	global ft_memalloc
	extern malloc
	extern ft_bzero

ft_memalloc:
	mov r12, rdi
	call malloc
	mov rsi, r12
	mov rdi, rax
	call ft_bzero
	mov rax, rdi
	ret
