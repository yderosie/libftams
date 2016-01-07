section .text
	global ft_cat
	extern malloc

ft_cat:
	enter 0, 0
	mov r12, rdi
	mov rdi, 4097
	call malloc
	cmp rax, 0
	je .error
	mov r14, rax

.while:
	mov rsi, r14
	mov rdi, r12
	mov rax, 0x2000003
	mov rdx, 4096
	syscall
	jle .end
	mov r15, rax
	cmp r15, 0
	je .end
	mov rdi, 1
	mov rdx, r15
	mov rax, 0x2000004
	syscall
	jmp .while

.end:
	leave
	ret

.error:
	mov rax, 0
	ret
