section .text
	global ft_cat
	extern malloc
	extern ft_puts

ft_cat:
	enter 0,0
	mov r9, rdi

.while
	mov rdi, 4096
	call malloc
	mov rsi, rax
	mov rdi, r9
	mov rax, 0x2000003
	mov rdx, 4096
	syscall
	mov r8, rax
	mov rdi, rsi
	call ft_puts
	cmp r8, 0
	jne .while
	leave
	ret
