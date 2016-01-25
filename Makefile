# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rabougue <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/10 19:16:51 by rabougue          #+#    #+#              #
#    Updated: 2015/12/17 19:37:01 by rabougue         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c\
	  ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c \
	  ft_strncat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c \
	  ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c\
	  ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memalloc.c \
	  ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c \
	  ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c \
	  ft_strsub.c ft_strjoin.c ft_strtrim.c ft_putchar.c ft_putstr.c \
	  ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	  ft_putnbr_fd.c ft_strsplit.c ft_strlcat.c ft_itoa.c ft_lstnew.c \
	  ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c \
	  ft_swap.c ft_strrev.c ft_crypt.c ft_decrypt.c ft_debug.c

OBJS = $(SRC:.c=.o)

HEAD = libft.h

all: $(NAME)

$(NAME):
	@echo Compiling in .o ...
	@gcc -Wall -Wextra -Werror -c 	$(SRC) $(HEAD)
	@echo Creating library ...
	@ar rc $(NAME) $(OBJS)
	@echo indexing library ...
	@ranlib $(NAME)
	@echo Library Created !

mc: all clean

clean:
	@echo deleting all .o ...
	@rm -f $(OBJS)
	@echo The folder is clean !


fclean:
	@echo Deleting libft.a and all .o ...
	@rm -f $(NAME) $(OBJS)
	@echo The folder is clean

re: fclean all