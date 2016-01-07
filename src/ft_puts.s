section .data
	n db 10
	null db "(null)", 0

section .text
	global ft_puts
	extern ft_strlen

ft_puts:
	mov r13, rdi
	cmp r13, 0
	je .nul
	call ft_strlen
	mov rdx, rax
	mov rdi, 1
	mov rax, 0x2000004
	mov rsi, r13
	jmp .end

.nul:
	lea rsi,[rel null]
	mov rdi, 1
	mov rdx, 6
	mov rax, 0x2000004

.end:
	syscall
	mov rdx, 1
	mov rax, 0x2000004
	lea rsi, [rel n]
	syscall
	ret
