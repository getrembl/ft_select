#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: getrembl <getrembl@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/02/10 00:12:59 by getrembl          #+#    #+#              #
#    Updated: 2016/02/10 01:31:10 by karakhirn        ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME				= ft_select
SRC					= ft_select.c
OBJ					= $(SRC:.c=.o)
CC					= /usr/bin/gcc
CFLAGS				= -Wall -Wextra -Werror
CDEBUG				= -Wall -Wextra -Werror -ansi -pedantic -g
RM					= /bin/rm -f
ECHO				= /bin/echo -e

$(NAME)	:			$(OBJ)
						@$(CC) $(CFLAGS) -o $(NAME) $(OBJ) libft.a
						@$(ECHO) '> Compiled'

all		:			$(NAME)

clean	:
						-@$(RM) $(OBJ)
						-@$(RM) *~
						@$(ECHO) '> Directory cleaned'

fclean	:			clean
						-@$(RM) $(NAME)
						@$(ECHO) '> Remove executable and clean directory'

re		:			fclean all

debug	:			$(OBJ)
						@$(CC) $(CDEBUG) -o $(NAME) $(OBJ)
						@$(ECHO) '> Mode Debug: done'

.PHONY	:			all clean fclean re
