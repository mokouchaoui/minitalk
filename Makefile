# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mokoucha <mokoucha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/13 18:20:55 by mokoucha          #+#    #+#              #
#    Updated: 2022/04/13 18:21:00 by mokoucha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minitalk.a

server = server.c

client = client.c

serve = server_bonus.c

clent = client_bonus.c

CFLAGS = -Wall -Werror -Wextra

CC = gcc

SRC = minitalk_utils.c

INC = minitalk.h

all :$(NAME) 

OBJ = $(SRC:.c=.o)

$(NAME) : $(server) $(client)
	@$(CC) $(CFLAGS) $(SRC) $(server) -o server -I $(INC)
	@$(CC) $(CFLAGS) $(SRC) $(client) -o client -I $(INC)
	@echo "ℳℐℕℐⓣ ₸ⓐⓛⓚ"
	@echo Everything is up ! 

clean :
	@rm -f $(OBJ)

bonus : $(serve) $(clent)
	@$(CC) $(CFLAGS) $(SRC) $(serve) -o server_bonus -I $(INC)
	@$(CC) $(CFLAGS) $(SRC) $(clent) -o client_bonus -I $(INC)
	@echo Done Well Bonus Part

fclean : clean
	@echo Done !
	@rm -f $(NAME) $(bonus) server client

re : fclean all