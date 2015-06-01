section .text
	global ft_isalnum

ft_isalnum:
	xor rax, rax
	cmp rdi, 48
	jl .fin
	cmp rdi, 57
	jle .return
	cmp rdi, 65
	jl .fin
	cmp rdi, 90
	jle .return
	cmp rdi, 97
	jl .fin
	cmp rdi, 122
	jle .return

.fin:
	ret

.return:
	mov rax, 1
	ret

