section .text
	global ft_strnew
	extern malloc

ft_strnew:
	enter 0,0
	call malloc
	leave
	ret
