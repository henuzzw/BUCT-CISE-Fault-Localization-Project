FILENAME=371-C-5402655
CC=gcc
CFLAGS=-fno-optimize-sibling-calls -fno-strict-aliasing -fno-asm -std=c99
LDFLAGS=-lm -s -O2
all:
	$(CC) $(CFLAGS) -c $(FILENAME).c -o $(FILENAME).o
	$(CC) $(FILENAME).o -o $(FILENAME) $(LDFLAGS)
.PHONY: clean
clean:
	rm -f *.o $(FILENAME)
