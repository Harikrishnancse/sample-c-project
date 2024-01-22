CC = gcc
CFLAGS = -Wall -Iinclude

all: my-c-project

my-c-project: src/main.c lib/mylibrary.c include/mylibrary.h
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f my-c-project
