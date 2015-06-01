section .text
	global ft_strnew
	extern malloc

ft_strnew:
	call malloc
	ret
