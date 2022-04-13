/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mokoucha <mokoucha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/13 18:21:22 by mokoucha          #+#    #+#             */
/*   Updated: 2022/04/13 18:21:26 by mokoucha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H

# define MAX_STR_LENGTH 10000000
# define LONG_MAX  __LONG_MAX__

# include <signal.h>
# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>
# include <limits.h>

/*
** Colors
*/
# define ANSI_COLOR_RED		"\x1b[31m"
# define ANSI_COLOR_BLUE	"\x1b[34m"
# define ANSI_COLOR_GREEN	"\x1b[32m"
# define ANSI_COLOR_YELLOW	"\x1b[33m"
# define ANSI_COLOR_RESET	"\x1b[0m"

void	ft_putstr_fd(char *s, int fd);
size_t	ft_strlen(const char *str);
void	ft_putstr_color_fd(char *color, char *s, int fd);
#endif
