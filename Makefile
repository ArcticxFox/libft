# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejones <ejones.42angouleme@gmail.com>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/14 16:15:41 by ejones            #+#    #+#              #
#    Updated: 2025/12/29 18:24:26 by ejones           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRCC = ft_isalpha.c ft_isdigit.c ft_isalnum.c \
	ft_isascii.c ft_isprint.c ft_strlen.c \
	ft_memset.c ft_bzero.c ft_strchr.c \
	ft_memcpy.c ft_memmove.c ft_strlcpy.c \
	ft_strlcat.c ft_toupper.c ft_tolower.c \
	ft_strrchr.c ft_strncmp.c ft_memchr.c \
	ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_strdup.c ft_calloc.c ft_substr.c ft_strjoin.c \
	ft_strtrim.c ft_split.c *ft_itoa.c ft_strmapi.c \
	ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c \
	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
	ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
BUILD_DIR ?= ./build

OBJ_C = $(SRCC:%.c=$(BUILD_DIR)/%.o)
CC = cc
CFLAGS += -Wall -Wextra -Werror -g
NAME = libft.a
#TARGET_EXEC = libft
all: $(NAME)

# Compilation of files .c en .o
#$< is the first item in the dependencies list
$(BUILD_DIR)/%.o: %.c
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $^ -o $@

$(NAME): $(OBJ_C)
	ar rcs $(NAME) $(OBJ_C)
#for executable
#	$(CC) $(OBJ_C) -o $@ $(LDFLAGS)

# Removes all *.o files compiled from source and bonus
clean:
	rm -f $(OBJ_C)

# Does clean and removes libft.a
fclean: clean
	rm -f $(NAME)

# Does fclean and then recompiles everything
re: fclean $(NAME)

# Declaration of PHONY intructions
.PHONY: all clean fclean re bonus
