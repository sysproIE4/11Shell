all: myshell

myshell: myshell.c
	cc -Wall -std=c99 -o myshell myshell.c

