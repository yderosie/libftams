section .text
	global ft_isprint

ft_isprint:
	xor rax, rax
	cmp rdi, 32
	jl .fin
	cmp rdi, 126
	jle .return

.fin:
	ret

.return:
	mov rax, 1
	ret
