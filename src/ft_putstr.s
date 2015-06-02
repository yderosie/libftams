section .text
	global ft_putstr
	extern ft_strlen

ft_putstr:
	mov r13, rdi
	call ft_strlen
	mov rdx, rax
	mov rdi, 1
	mov rax, 0x2000004
	mov rsi, r13
	syscall
	ret
