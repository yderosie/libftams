section .text
	global ft_strclr

ft_strclr:
	cmp [rdi], byte 0
	je .end
	mov [rdi], byte 0
	inc rdi
	jmp .while

.end:
	ret
