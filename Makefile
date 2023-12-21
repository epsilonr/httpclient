CC = gcc
CLAGS =

LLIBS = -lcurl

SRCS = $(wildcard src/*.c)

build:
	$(CC) $(CLAGS) $(SRCS) -o ./bin/out $(LLIBS) && ./bin/out

main:
	$(CC) $(CFAGS) src/main.c -o ./bin/main $(LLIBS) && ./bin/main

test:
	$(CC) $(CFAGS) src/test.c -o ./bin/test && ./bin/test

clean:
	rm -rf ./bin/out