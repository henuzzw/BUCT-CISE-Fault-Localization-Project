FILENAME=87-A-7652942
CC=gcc
CFLAGS=-fno-optimize-sibling-calls -fno-strict-aliasing -fno-asm -std=c99
LDFLAGS=-lm -s -O2
all:
	$(CC) $(CFLAGS) -c $(FILENAME).c -o $(FILENAME).o
	$(CC) $(FILENAME).o -o $(FILENAME) $(LDFLAGS)
.PHONY: clean
clean:
	rm -f *.o $(FILENAME)
