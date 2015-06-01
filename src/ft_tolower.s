section .text
	global ft_tolower

ft_tolower:
	mov rax, rdi
	cmp rdi, 65
	jl .end
	cmp rdi, 90
	jle .return

.end:
	ret

.return:
	add rax, 32
	ret
