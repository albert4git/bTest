HEADERS = program.h headers.h

default: program

program.o: program.c $(HEADERS)
    gcc -c program.c -o program.o

program: program.o
    gcc program.o -o program

clean:
    -rm -f program.o
    -rm -f program

=====================================================================================
HEADERS = program.h headers.h
OBJECTS = program.o

default: program

%.o: %.c $(HEADERS)
    gcc -c $< -o $@

program: $(OBJECTS)
    gcc $(OBJECTS) -o $@

clean:
    -rm -f $(OBJECTS)
    -rm -f program

========================================================================================

TARGET = prog
LIBS = -lm
CC = gcc
CFLAGS = -g -Wall

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
    $(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
    $(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
    -rm -f *.o
    -rm -f $(TARGET)
