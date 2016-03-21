/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_select.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: getrembl <getrembl@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/02/10 00:32:21 by getrembl          #+#    #+#             */
/*   Updated: 2016/03/02 18:42:22 by getrembl         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <term.h>
#include <unistd.h>
#include <string.h>
#include <termcap.h>
#include <termios.h>
#include "libft/libft.h"


int					main(int argc, char *argv[], char *env[])
{
	char			*term;
	struct termios	term_struct;

	if ((term = getenv("TERM")) == NULL)
		return (-1);
	if (tgetent(NULL, term) == ERR)
		return (-1);
	if (tcgetattr(0, term_struct) == -1)
		return (-1);
	term_struct.c_lflag &= ~(ECHO);
	term_struct.c_lflag &= (ICANON);
	term_struct.cc[VMIN] = 1;
	term_struct.cc[VTIME] = 0;
	if (tcsetattr(0, TCSADRAIN, &term_struct) == -1)
		return (-1);
	return (0);
}
