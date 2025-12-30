# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ejones <ejones.42angouleme@gmail.com>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/14 16:15:41 by ejones            #+#    #+#              #
#    Updated: 2025/12/30 18:20:17 by ejones           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

BUILD_DIR ?= ./build
SRC_DIR = ./src
INC_DIR = ./header

SRCC = ft_isalpha.c ft_isdigit.c ft_isalnum.c \
	ft_isascii.c ft_isprint.c ft_strlen.c \
	ft_memset.c ft_bzero.c ft_strchr.c \
	ft_memcpy.c ft_memmove.c ft_strlcpy.c \
	ft_strlcat.c ft_toupper.c ft_tolower.c \
	ft_strrchr.c ft_strncmp.c ft_memchr.c \
	ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_strdup.c ft_calloc.c ft_substr.c ft_strjoin.c \
	ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
	ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c \
	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
	ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJ_C = $(addprefix $(BUILD_DIR)/, $(SRCC:.c=.o))

CC = cc
CFLAGS = -Wall -Wextra -Werror -g -I$(INC_DIR) -MMD -MP

NAME = libft.a

all: $(NAME)
	@bash ./PrintRules/make

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJ_C)
	@ar rcs $(NAME) $(OBJ_C)
	@echo "The Object files have been Compiled"
	@echo "The Library has been made!!!!!!"

# Removes all *.o files compiled from source and bonus
clean:
	@rm -rf $(BUILD_DIR);
	@bash ./PrintRules/clean
	@echo "Objects were removed Succesfully!!!!"

# Does clean and removes libft.a
fclean: clean
	@rm -f $(NAME)
	@bash ./PrintRules/fclean

# Does fclean and then recompiles everything
re: print_re fclean $(NAME)

print_re:
	@bash ./PrintRules/re

# Declaration of PHONY intructions
.PHONY: all clean fclean re bonus

-include $(OBJ_C:.o=.d)
