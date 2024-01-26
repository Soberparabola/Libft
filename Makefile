# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jordgarc <jordgarc@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 19:46:28 by jordgarc          #+#    #+#              #
#    Updated: 2024/01/26 18:44:06 by jordgarc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFILES = ft_strnstr.c
CFLAGS = -Wall -Werror -Wextra
OBJECTS = ft_isascii.o ft_memcpy.o ft_putstr_fd.o ft_strlcat.o ft_strrchr.o \
		  ft_atoi.o ft_isdigit.o ft_memmove.o ft_split.o ft_strlcpy.o ft_strtrim.o \
		  ft_bzero.o ft_isprint.o ft_memset.o ft_strchr.o ft_strlen.o ft_substr.o \
		  ft_calloc.o ft_itoa.o ft_putchar_fd.o ft_strdup.o ft_strmapi.o ft_tolower.o \
		  ft_isalnum.o ft_memchr.o ft_putendl_fd.o ft_striteri.o ft_strncmp.o ft_toupper.o \
		  ft_isalpha.o ft_memcmp.o ft_putnbr_fd.o ft_strjoin.o ft_strnstr.o

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

%.o: %.c
	cc $(CFLAGS) -c $^

clean:
	rm -f $(OBJECTS)

fclean:	clean
	rm -f $(NAME)

re:	fclean all
