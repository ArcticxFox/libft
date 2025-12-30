/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_back_bonus.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ejones <ejones.42angouleme@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/24 15:46:26 by ejones            #+#    #+#             */
/*   Updated: 2025/10/27 15:52:39 by ejones           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_back(t_list **lst, t_list *new)
{
	t_list	*end_node;

	if (lst != NULL && new != NULL)
	{
		if (*lst != NULL)
		{
			end_node = *lst;
			end_node = ft_lstlast(end_node);
			end_node->next = new;
		}
		else
			*lst = new;
	}
}
