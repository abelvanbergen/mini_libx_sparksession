NAME = [X]

CFLAGS = [X]
SRCS = [X]

# locations librarys
MLX_LOC		= mlx
# librarys
LIBS		= -L $(MLX_LOC) -lmlx

FRAMEWORK =	-framework OpenGl\
			-framework AppKit

#includes
INCLUDES	= -I $(MLX_LOC)

all: $(NAME)

$(NAME):
	make -C $(MLX_LOC)
	#move the lib to root directory
	[X]
	$(CC) $(FLAGS) $(FRAMEWORK) $(INCLUDES) $(LIBS) $(SRCS) -o $(NAME)

clean:

fclean:
	make clean -C $(MLX_LOC)
	rm -rf libmlx.a mlx/libmlx.a
	rm -f $(NAME)

re: fclean all
