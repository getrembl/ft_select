/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_select.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: getrembl <getrembl@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/02/10 00:32:21 by getrembl          #+#    #+#             */
/*   Updated: 2016/03/22 15:50:03 by getrembl         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <term.h>
#include <curses.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <termcap.h>
#include <termios.h>
#include "libft/libft.h"

int					seeTouch()
{
	char			*buffer[3];

	while (1)
	{
		read(0, buffer, 3);
		if ((int)buffer[0] == 27)
			ft_putstr("It's arrow! \n");
		else if ((int)buffer[0] == 4)
		{
			ft_putstr("Ctrl+D for quite");
			return(0);
		}
	}
	return (0);
}

int					main(int argc, char *argv[], char *env[])
{
	char			*term;
	struct termios	term_struct;

	if (!argc || !argv[1])
		return (-1);
	if (!env)
		return (-1);
	if ((term = getenv("TERM")) == NULL)
		return (-1);
	if (tgetent(NULL, (const char *)term) == ERR)
		return (-1);
	if (tcgetattr(0, &term_struct) == -1)
		return (-1);
	term_struct.c_lflag &= ~(ECHO);
	term_struct.c_lflag &= (ICANON);
	term_struct.c_cc[VMIN] = 1;
	term_struct.c_cc[VTIME] = 0;
//	if (tcsetattr(0, TCSADRAIN, &term_struct) == -1)
//		return (-1);
	seeTouch();
	return (0);
}
