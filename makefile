all: networking.o game.o server.o
	gcc -o game game.o networking.o
	gcc -o server server.o networking.o

run:
	./game

clean:
	rm *.o

game.o: game.c networking.h networking.o
	gcc -c game.c

server.o: server.c networking.h networking.o
	gcc -c server.c

networking.o: networking.c networking.h
	gcc -c networking.c
