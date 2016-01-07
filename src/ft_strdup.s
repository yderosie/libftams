section .text
	global ft_strdup
	extern malloc
	extern ft_strlen
	extern ft_memcpy

ft_strdup:
	enter 0,0
	mov r12, rdi
	call ft_strlen
	inc rax
	mov r13, rax
	mov rdi, rax
	call malloc
	cmp rax, 0
	je .error
	mov rdi, rax
	mov rsi, r12
	mov rdx, r13
	call ft_memcpy
	leave
	ret

.error:
	mov rax, 0
	ret
