CC = cc 

CFLAGS = -Wall -Wextra -Werror -g3

SRC = ./execution/builtins.c \
      ./execution/command_execution.c \
      ./execution/exe_utils.c \
      ./execution/export_utils.c \
      ./execution/ft_execute_help2.c \
      ./execution/redirections.c \
      ./execution/utils.c \
      ./execution/cd.c \
      ./execution/echo.c \
      ./execution/exit.c \
      ./execution/ft_execute.c \
      ./execution/pipe.c \
      ./execution/redir_utitls.c \
      ./execution/check_heredoc.c \
      ./execution/env.c \
      ./execution/export.c \
      ./execution/ft_execute_help1.c \
      ./execution/pwd.c \
      ./execution/unset.c \
      ./expand/expand.c \
      ./expand/expand_herdoc.c \
      ./expand/expand_utils.c \
      ./parsing/ft_parse.c \
      ./parsing/Initializer.c \
      ./parsing/list_to_tree.c \
      ./parsing/minishell.c \
      ./parsing/organizer.c \
      ./parsing/signals.c \
      ./parsing/token1.c \
      ./parsing/token2.c \
      ./parsing/utils1.c \
      ./parsing/utils2.c \
      ./parsing/utils3.c \
      ./parsing/utils4.c

OBJ = $(SRC:.c=.o)

NAME = minishell

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $@ $^ libft/libft.a -lreadline 

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.SECONDARY: $(OBJ)