CC=gcc
CFLAGS=-Wall -std=c99

all: prog

prog: linkedList.o linkedListMain.o
	gcc -g -Wall -std=c99 -o prog linkedList.o linkedListMain.o
linkedList.o: linkedList.c linkedList.h
	gcc -g -Wall -std=c99 -c linkedList.c
linkedListMain.o: linkedListMain.c linkedList.h
	gcc -g -Wall -std=c99 -c linkedListMain.c

clean:
	-rm *.o

cleanall: clean
	-rm prog