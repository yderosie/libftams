section .text
	global ft_putchar

ft_putchar:
	mov rsi, rdi
	mov rax, 0x2000004
	mov rdi, 1
	syscall
	ret
