/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yderosie <yderosie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/26 12:38:17 by yderosie          #+#    #+#             */
/*   Updated: 2015/06/11 14:50:39 by yderosie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>

#include <fcntl.h>
#include <stdlib.h>
#include <ctype.h>
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

	printf("ft_bzero\n");
	ft_bzero(s1, 5);
	bzero(s2, 5);
	printf("%s\n%s\n", s1 + 5, s2 + 5);
	printf("/////////////////////////////////////////////////////////////\n");
	printf("isalnum\n%c == %d\n", a, ft_isalnum(a));
	printf("%c == %d\n", b, ft_isalnum(b));
	printf("%c == %d\n", c, ft_isalnum(c));
	printf("%c == %d\n", d, ft_isalnum(d));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("isalpha\n%c == %d\n", a,ft_isalpha(a));
	printf("%c == %d\n",b,ft_isalpha(b));
	printf("%c == %d\n",c,ft_isalpha(c));
	printf("%c == %d\n",d,ft_isalpha(d));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("isdigit\n%c == %d\n", a, ft_isdigit(a));
	printf("%c == %d\n",b,ft_isdigit(b));
	printf("%c == %d\n",c,ft_isdigit(c));
	printf("%c == %d\n",d,ft_isdigit(d));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("isascii\n%c == %d\n",a,ft_isascii(a));
	printf("%c == %d\n",b,ft_isascii(b));
	printf("%c == %d\n",c,ft_isascii(c));
	printf("(%d) == %d\n",127,ft_isascii(127));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("isprint\n%c == %d\n",a,ft_isprint(a));
	printf("%c == %d\n",b,ft_isprint(b));
	printf("%c == %d\n",c,ft_isprint(c));
	printf("%c == %d\n",d,ft_isprint(d));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("tolower\n%c\n",ft_tolower('A'));
	printf("%c\n",ft_tolower('Z'));
	printf("%c\n",ft_tolower('7'));
	printf("%c\n",ft_tolower('d'));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("toupper\n%c\n",ft_toupper('a'));
	printf("%c\n",ft_toupper('*'));
	printf("%c\n",ft_toupper('T'));
	printf("%c\n",ft_toupper('f'));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("ft_strlen\n");
	printf("%lu\n",ft_strlen("Heorld!"));
	printf("%lu\n",strlen("Heorld!"));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("ft_strcat\n");
	ft_bzero(s3, 30);
	ft_bzero(s4, 30);
	printf("%s\n", ft_strcat(s3, s5));
	printf("%s\n", strcat(s4, s5));
	char buf[9];
	bzero(buf, 9);
	printf("%s\n", ft_strcat(buf, ""));
	printf("%s\n", ft_strcat(buf, "Bon"));
	printf("%s\n", ft_strcat(buf, "j"));
	printf("%s\n", ft_strcat(buf, "our."));
	printf("%s\n", ft_strcat(buf, ""));
	printf("%d\n", strcmp(buf, "Bonjour."));
	printf("%s\n", buf);
	if (buf == ft_strcat(buf, ""))
		printf("%s\n", "OK");
	printf("*/////////////////////////*\n");
	char buf2[9];
	bzero(buf2, 9);
	printf("%s\n", strcat(buf2, ""));
	printf("%s\n", strcat(buf2, "Bon"));
	printf("%s\n", strcat(buf2, "j"));
	printf("%s\n", strcat(buf2, "our."));
	printf("%s\n", strcat(buf2, ""));
	printf("%d\n", strcmp(buf2, "Bonjour."));
	printf("%s\n", buf2);
	if (buf2 == strcat(buf2, ""))
		printf("%s\n", "OK");
	printf("/////////////////////////////////////////////////////////////\n");
	char test[]= "abcd";
	char test1[]= "abcd";
	printf("ft_memset\n");
	memset(test1, 'E', 5);
	printf("%s\n", test1);
	ft_memset(test, 'E', 5);
	printf("%s\n",test);
	printf("/////////////////////////////////////////////////////////////\n");
	printf("ft_strdup\n");
	printf("%s\n", ft_strdup("test1"));
	printf("%s\n", strdup("test1"));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("ft_puts\n");
	ft_puts("aaa");
	puts(NULL);
	ft_puts(NULL);
	ft_puts("Hello World");
	printf("/////////////////////////////////////////////////////////////\n");
	printf("ft_cat\n");
	int fd;
	fd = open("Makefile", O_RDONLY);
	ft_cat(fd);
	close(fd);
	printf("/////////////////////////////////////////////////////////////\n");
	printf("strcpy:\n");
	char cpy[13];
	ft_strcpy(cpy, "Hello world!");
	printf("%s\n", cpy);
	printf("/////////////////////////////////////////////////////////////\n");
	printf("ft_putstr\n");
	ft_putstr("test1234\n");
	printf("/////////////////////////////////////////////////////////////\n");
	printf("strclr:\n");
	char clr[]="test";
	ft_strclr(clr);
	printf("%s\n", clr);
	printf("/////////////////////////////////////////////////////////////\n");
	printf("memalloc / strncpy:\n");
	printf("%s\n", ft_strncpy(ft_memalloc(16), "Hello world!", 100));
	printf("/////////////////////////////////////////////////////////////\n");
	printf("strnew / strncpy:\n");
	printf("%s\n", ft_strncpy(ft_strnew(10), "Hello world!", 5));
	return (0);
}
