section .text
	global ft_strchr
	extern ft_strlen

ft_strchr:
	mov r13, rdi
	call ft_strlen
	mov rcx, rax
	mov rax, rsi
	mov rdi, r13
	repne scasb
	cmp [rdi], byte 0
	je .end
	dec rdi
	mov rax, rdi
	ret

.end:
	mov rax, 0
	ret
