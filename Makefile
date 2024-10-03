#Si el enunciado lo requiere, entregar un Makefile que compile archivos fuente al output requerido con las flag -Wall -Werror -Wextra y no relink.
#Contener al menos $(NAME), all, clean, fclean y re
#Para los bonus incluir una regla bonus en el makefile con todos los headers, librerias o funciones que esten prohibidas en la parthe principal del proyecto
#Los bonus seran archivos distintos _bonus.{c/h}. La parte obligatoria y los bonus se evaluan por separado.
#Proyectos que permiten libft: copiar fuente y Makefile asociado en un directorio libft con su correspondiente Makefile. El makefile del proyecto debe compilar primero
#la libreria utilizando su Make file, y despues compilar el proyecto
#
#
#Utiliar comando ar para generar libreria. El uso de libtool queda prohibido.
#libft.a debe ser creado en la raiz del repositorio

NAME = libft.a

CC      = gcc
CFLAGS = -Wall -Wextra -Werror

SOURCES = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	  ft_toupper.c ft_tolower.c ft_strlen.c ft_strchr.c ft_strrchr.c \
	  ft_strncmp.c ft_memset.c ft_bzero.c ft_memchr.c ft_memcpy.c ft_memcmp.c ft_memmove.c \
	  ft_strlcpy.c ft_strlcat.c ft_strnstr.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c \
	  ft_substr.c ft_strjoin.c ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c \
	  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_split.c

SOURCES_BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c

OBJS = $(SOURCES:.c=.o)

OBJS_BONUS = $(SOURCES_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c libft.h Makefile
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)
	rm -f $(OBJS_BONUS)

fclean: clean
	rm -f $(NAME)
	
re: fclean all

bonus: $(OBJS_BONUS)
	ar rcs $(NAME) $(OBJS_BONUS)

.PHONY: all clean fclean re
