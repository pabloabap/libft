/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_back_bonus.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pabad-ap <pabad-ap@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/10 20:03:18 by pabad-ap          #+#    #+#             */
/*   Updated: 2023/10/10 20:03:21 by pabad-ap         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_back(t_list **lst, t_list *new)
{
	if (*lst == NULL)
		*lst = new;
	else
	{
		ft_lstlast(*lst)->next = new;
	}
}

/*
#include <stdio.h>

int main(void)
{
	t_list 	a;
	t_list	*pa;
	t_list b;

	pa = &a;
	a.content = NULL;
	a.next = NULL;
	b.content = NULL;
	b.next = NULL;
	(void) b;

	ft_lstadd_back(&pa, NULL);
	while ( pa )
	{
		printf("ITEM: %p \n", pa);
		pa = pa->next;
	}
}
*/
