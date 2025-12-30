/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ejones <ejones.42angouleme@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/17 16:43:20 by ejones            #+#    #+#             */
/*   Updated: 2025/12/04 16:56:37 by ejones           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*tmp;

	if (size != 0 && nmemb > (size_t)-1 / size)
		return (NULL);
	tmp = malloc(nmemb * size);
	if (tmp == NULL)
		return (0);
	tmp = ft_memset(tmp, 0, nmemb * size);
	return (tmp);
}
