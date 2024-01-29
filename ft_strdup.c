/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jordgarc <jordgarc@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/22 18:22:22 by jordgarc          #+#    #+#             */
/*   Updated: 2024/01/29 17:41:45 by jordgarc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	int		s1l;
	int		i;
	char	*dst;

	i = 0;
	s1l = (ft_strlen((char *) s1) + 1);
	dst = malloc(s1l * sizeof(char));
	if (dst != NULL)
	{
		while (s1l > 1)
		{
			dst[i] = s1[i];
			i++;
			s1l--;
		}
		dst[i] = '\0';
		return (dst);
	}
	return (NULL);
}
