/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: getrembl <getrembl@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/14 00:40:33 by getrembl          #+#    #+#             */
/*   Updated: 2015/02/23 19:00:03 by getrembl         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

void		ft_memdel(void **ap)
{
	if (*ap != NULL || *ap || *ap != (void *)'\0')
	{
		free (*ap);
		*ap = NULL;
	}
}