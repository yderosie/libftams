section .text
	global ft_memchr

ft_memchr:
	mov r13, rdx
	je .end
	mov rcx, rdx
	mov rax, rsi
	cld
	repne scasb
	dec rdi
	cmp rdi, rsi
	je .return
	cmp rcx, 0
	je .end

.return:
	mov rax, rdi
	ret

.end:
	mov rax, 0
	ret
