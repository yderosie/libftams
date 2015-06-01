section .text
	global ft_isascii

ft_isascii:
	xor rax, rax
	cmp rdi, 0
	jl .fin
	cmp rdi, 127
	jle .return

.fin:
	ret

.return:
	mov rax, 1
	ret
