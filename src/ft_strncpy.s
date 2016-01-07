section .text
	global ft_strncpy
	extern ft_strlen

ft_strncpy:
	mov r12, rdi
	mov r13, rsi
	mov rdi, rsi
	call ft_strlen
	mov rsi, r13
	mov rdi, r12
	cmp rax, rdx
	jl .move

.norm:
	mov rcx, rdx
	cld
	rep movsb
	sub rdi, rdx
	mov rax, rdi
	ret

.move:
	mov rdx, rax
	jmp .norm
