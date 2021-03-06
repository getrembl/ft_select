#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: getrembl <getrembl@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/02/10 00:12:59 by getrembl          #+#    #+#              #
#    Updated: 2016/03/22 16:13:35 by getrembl         ###   ########.fr        #
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
LIBFT_MAKE			= cd ./libft && make 

all		:			$(NAME)

$(NAME)	:			$(OBJ)
						@$(LIBFT_MAKE)
						@$(CC) $(CFLAGS) -o $(NAME) $(OBJ) ./libft/libft.a
						@$(ECHO) '> Compiled'

clean	:
						@$(LIBFT_MAKE) clean
						-@$(RM) $(OBJ)
						-@$(RM) *~
						@$(ECHO) '> Directory cleaned'

fclean	:			clean
						@$(LIBFT_MAKE) fclean
						-@$(RM) $(NAME)
						@$(ECHO) '> Remove executable and clean directory'

re		:			fclean all
						@$(LIBFT_MAKE) re

debug	:			$(OBJ)
						@$(CC) $(CDEBUG) -o $(NAME) $(OBJ)
						@$(ECHO) '> Mode Debug: done'

.PHONY	:			all clean fclean re %.o
