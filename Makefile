# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dholiday <dholiday@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/08 16:19:04 by dholiday          #+#    #+#              #
#    Updated: 2020/01/11 13:09:59 by dholiday         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC_PATH = ./src/

SRC_NAME = all_types.c convert.c find_null_d_sharp.c format.c ft_atoi.c ft_bzero.c ft_itoa.c ft_memalloc.c \
ft_memccpy.c ft_memchr.c ft_memcpy.c ft_memmove.c ft_memset.c ft_printf.c ft_putchar.c ft_strcat.c \
ft_strchr.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strjoin.c ft_strlen.c ft_strncat.c ft_strncpy.c \
ft_strnew.c helper_2.c helpers.c info.c new_printf.c null.c sharp.c swap_str.c type_f.c wide_dioux.c \
wide_p.c wide_s.c

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))

CC = gcc
FLAGS = -Wall -Wextra -Werror

INC_NAME = ft_printf.h libft.h
INC_PATH = ./inc/
INC = $(addprefix $(INC_PATH),$(INC_NAME))

OBJ_PATH = ./
OBJ_NAME = $(SRC_NAME:.c=.o)
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@mkdir -p $(OBJ_PATH)
	@echo -n .
	@$(CC) $(FLAGS) -o $@ -c $<

.PHONY: all clean fclean re

all: $(NAME)

$(NAME):
	gcc -c $(FLAGC) -I $(INC) $(SRC) 
	ar rc $(NAME) $(OBJ)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(OBJ)
	/bin/rm -f $(NAME)

re: fclean all
