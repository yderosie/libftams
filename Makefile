# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yderosie <yderosie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/11 14:55:02 by yderosie          #+#    #+#              #
#    Updated: 2015/06/11 14:55:27 by yderosie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRCS =	src/ft_bzero.s	\
		src/ft_isalnum.s\
		src/ft_isalpha.s\
		src/ft_isdigit.s\
		src/ft_isascii.s\
		src/ft_isprint.s\
		src/ft_tolower.s\
		src/ft_toupper.s\
		src/ft_strlen.s	\
		src/ft_strcat.s	\
		src/ft_memset.s	\
		src/ft_memcpy.s	\
		src/ft_strdup.s	\
		src/ft_puts.s	\
		src/ft_cat.s	\
		src/ft_strnew.s	\
		src/ft_strclr.s	\
		src/ft_putstr.s	\
		src/ft_strcpy.s	\
		src/ft_strncpy.s\
		src/ft_memalloc.s\

OBJS = $(patsubst src/%.s,obj/%.o,$(SRCS))

NASM ?= nasm
MKDIR ?= mkdir

NFLAGS += -i $(realpath inc)/

ifeq ($(shell uname), Linux)
	NFLAGS += -felf64 -DLINUX
else
	NFLAGS += -fmacho64 -DOSX --prefix _ -g
endif


obj/%.o: src/%.s
	@$(MKDIR) -p $(dir $@)
	$(NASM) $(NFLAGS) -o $@ $<

all: $(NAME)

libasm.out: $(NAME) main.o
	$(CC) -Iinclude/ main.o -o $@ -L. -lfts 

lib.out: $(NAME) main.o
	$(CC) -Iinclude/ main.o -o $@ -L. -lft

$(NAME): $(OBJS)
	$(AR) -rcs $(NAME) $?

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re


