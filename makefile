.PHONY: clean, mrproper
CC = clang
LIBS = -framework Foundation -include my_delegate.h
CFLAGS = -g -Wall

all: main

%.o: %.m
	$(CC) $(LIBS) $(CFLAGS) -c $<

main: main.o my_delegate.o
	$(CC) $(LIBS) $(CFLAGS) -o $@ $+

clean:
	rm -f *.o

mrproper: clean
	rm -f main
