section .text
	global ft_strcpy
	extern ft_strlen

ft_strcpy:
	mov r13, rdi
	mov rdi ,rsi
	call ft_strlen
	mov r12, rax
	mov rcx, r12
	mov rdi, r13
	cld
	rep movsb
	mov [rdi], byte 0
	sub rdi, r12
	mov rax, rdi
	ret
