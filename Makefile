CXX	=	g++

RM	=	rm -f

SRCS_DIR	=	srcs

NAME	=	server

SRCS	=	dijkstra.cc \
				graph.cc \
				dijkstra_main.cc

OBJS	=	$(SRCS:.cc=.o)

CXXFLAGS	+= -std=c++11

all	:		$(NAME)

$(NAME)	:		$(OBJS)
			$(CXX) -o $(NAME) $(OBJS)

clean	:
			$(RM) $(OBJS)

fclean :		clean
			$(RM) $(NAME)

re	:		fclean all

.PHONY	:		all clean fclean re
