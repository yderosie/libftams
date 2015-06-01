/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yderosie <yderosie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/26 12:38:17 by yderosie          #+#    #+#             */
/*   Updated: 2015/06/01 17:15:30 by yderosie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>

#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


int main(void)
{
	char s1[]= "HELLO world!";
	char s2[]= "HELLO world!";
	char s3[30];
	char s4[30];
	char s5[]= "Hello Word!";
	char a = 'a';
	char b = '*';
	char c = '5';
	char d = '/';

	ft_bzero(s1, 5);
	bzero(s2, 5);
	printf("%s\n%s\n", s1 + 5, s2 + 5);
	printf("isalnum\n%d\n",ft_isalnum(a));
	printf("%d\n",ft_isalnum(b));
	printf("%d\n",ft_isalnum(c));
	printf("%d\n",ft_isalnum(d));
	printf("isalpha\n%d\n",ft_isalpha(a));
	printf("%d\n",ft_isalpha(b));
	printf("%d\n",ft_isalpha(c));
	printf("%d\n",ft_isalpha(d));
	printf("isdigit\n%d\n",ft_isdigit(a));
	printf("%d\n",ft_isdigit(b));
	printf("%d\n",ft_isdigit(c));
	printf("%d\n",ft_isdigit(d));
	printf("isascii\n%d\n",ft_isascii(a));
	printf("%d\n",ft_isascii(b));
	printf("%d\n",ft_isascii(c));
	printf("%d\n",ft_isascii(127));
	printf("isprint\n%d\n",ft_isprint(a));
	printf("%d\n",ft_isprint(b));
	printf("%d\n",ft_isprint(c));
	printf("%d\n",ft_isprint(d));
	printf("tolower\n%c\n",ft_tolower('A'));
	printf("%c\n",ft_tolower('Z'));
	printf("%c\n",ft_tolower('H'));
	printf("%c\n",ft_tolower('d'));
	printf("toupper\n%c\n",ft_toupper('a'));
	printf("%c\n",ft_toupper('*'));
	printf("%c\n",ft_toupper('T'));
	printf("%c\n",ft_toupper('f'));
	printf("%lu\n",ft_strlen("Heorld!"));
	printf("%lu\n",strlen("Heorld!"));
	ft_bzero(s3, 30);
	printf("%s\n", ft_strcat(s3, s5));
	printf("%s\n", strcat(s4, s5));
	char test[]= "abcd";
	char test1[]= "abcd";
	memset(test1, 'E', 5);
	printf("%s\n", test1);
	ft_memset(test, 'E', 5);
	printf("%s\n",test);
	printf("ft_strdup\n");
	printf("%s\n", ft_strdup("test1"));
	printf("%s\n", strdup("test1"));
	ft_puts("Hello World");
	int fd;
	fd = open("Makefile", O_RDONLY);
	ft_cat(fd);
	close(fd);
	return (0);
}
