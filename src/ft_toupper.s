section .text
	global ft_toupper

ft_toupper:
	mov rax, rdi
	cmp rdi, 97
	jl .end
	cmp rdi, 122
	jle .return

.end:
	ret

.return:
	sub rax, 32
	ret
