; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_bzero.s                                         :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: yderosie <yderosie@student.42.fr>          +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/05/06 18:28:06 by yderosie          #+#    #+#              #
;    Updated: 2015/05/06 18:28:06 by yderosie         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
	global ft_bzero

ft_bzero:

.while:
	cmp rsi, 0
	je .end
	cmp [rdi], byte 0
	je .end
	mov [rdi], byte 0
	inc rdi
	dec rsi
	jmp .while

.end:
	ret
