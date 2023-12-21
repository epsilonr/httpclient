CC = gcc
CLAGS =

LLIBS = -lcurl

SRCS = $(wildcard src/*.c)

build:
	$(CC) $(CLAGS) $(SRCS) -o ./bin/out $(LLIBS) && ./bin/out

test:
	$(CC) $(CFAGS) src/test.c -o ./bin/test && ./bin/test

clean:
	rm -rf ./bin/out