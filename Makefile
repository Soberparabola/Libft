# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jordgarc <jordgarc@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 19:46:28 by jordgarc          #+#    #+#              #
#    Updated: 2024/01/29 18:53:50 by jordgarc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# vars
NAME = libft.a
CC	= cc -g
CFLAGS	= -Wall -Werror -Wextra
ARS	= ar crs
SRC	= ft_isalnum.c ft_isalpha.c ft_isascii.c ft_strtrim.c ft_isdigit.c ft_isprint.c\
	  ft_strchr.c ft_calloc.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strtrim.c\
	  ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c\
	  ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c\
	  ft_strjoin.c ft_split.c ft_substr.c ft_atoi.c ft_putchar_fd.c ft_putstr_fd.c\
	  ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c ft_striteri.c ft_strmapi.c
OBJS = $(SRC:.c=.o)
RM = rm -rf


.PHONY: all clean fclean re

all: $(NAME)

$(NAME):$(OBJS)
	$(ARS) $(NAME) $(OBJS)

%.o: %.c libft.h Makefile 
	cc $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all
