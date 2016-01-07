/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   liftasm.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yderosie <yderosie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/06 16:35:14 by yderosie          #+#    #+#             */
/*   Updated: 2015/06/10 10:55:25 by yderosie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H

# define LIBFTASM_H

# include <stdlib.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
size_t	ft_strlen(char const *s);
void	*ft_memset(void *b, int c, size_t n);
void	*ft_memcpy(void *dst, void const *src, size_t n);
char	*ft_strdup(char const *s1);
void	ft_puts(char *s);
void	ft_cat(int fd);
char	*ft_strnew(size_t size);
void	ft_strclr(char *s);
void	ft_putstr(char *s);
char	*ft_strcpy(char *dst, char const *src);
char	*ft_strncpy(char *dst, char const *src, size_t n);
void	*ft_memalloc(size_t size);
void	ft_putchar(char c);

#endif
