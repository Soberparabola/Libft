/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jordgarc <jordgarc@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/22 18:49:11 by jordgarc          #+#    #+#             */
/*   Updated: 2024/01/29 17:44:07 by jordgarc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char			*newstr;
	unsigned int	n_ind;
	unsigned int	s_len;

	if (s == NULL)
		return (NULL);
	s_len = ft_strlen(s);
	if (start >= s_len)
		len = 0;
	if (len > (s_len - start))
		len = s_len - start;
	newstr = (char *) malloc((len + 1) * sizeof(char));
	if (newstr == NULL)
		return (NULL);
	n_ind = 0;
	while (len > 0 && s[start] != '\0')
	{
		newstr[n_ind] = s[start];
		len--;
		start++;
		n_ind++;
	}
	newstr[n_ind] = '\0';
	return (newstr);
}
