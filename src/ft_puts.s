section .data
	n db 10

section .text
	global ft_puts
	extern ft_strlen

ft_puts:
	mov r13, rdi
	call ft_strlen
	mov rdx, rax
	mov rdi, 1
	mov rax, 0x2000004
	mov rsi, r13
	syscall
	mov rdx, 1
	mov rax, 0x2000004
	lea rsi, [rel n]
	syscall
	ret
