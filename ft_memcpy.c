/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ejones <ejones.42angouleme@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/15 09:20:21 by ejones            #+#    #+#             */
/*   Updated: 2025/10/27 15:56:26 by ejones           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	size_t				i;
	unsigned char		*dsti;
	const unsigned char	*srce;

	i = 0;
	dsti = (unsigned char *)dest;
	srce = (const unsigned char *)src;
	while (i < n)
	{
		dsti[i] = srce[i];
		i++;
	}
	return ((void *)dsti);
}
