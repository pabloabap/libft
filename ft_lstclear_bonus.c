/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pabad-ap <pabad-ap@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/10 20:03:47 by pabad-ap          #+#    #+#             */
/*   Updated: 2023/10/10 20:35:49 by pabad-ap         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del) (void*))
{
	t_list	*tmp;
	t_list	*tmp_next;

	tmp = *lst;
	tmp_next = NULL;
	while (tmp)
	{
		tmp_next = tmp->next;
		ft_lstdelone(tmp, del);
		tmp = tmp_next;
	}
	*lst = NULL;
}
