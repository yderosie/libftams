section .text
	global ft_isdigit

ft_isdigit:
	xor rax, rax
	cmp rdi, 48
	jl .fin
	cmp rdi, 57
	jle .return

.fin:
	ret

.return:
	mov rax, 1
	ret
