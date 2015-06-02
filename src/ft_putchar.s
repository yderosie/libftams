section .text
	global ft_putchar

ft_putchar:
	mov rsi, rdi
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	ret
