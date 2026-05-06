##########################################################
#
# $Id:$
#
# $Log:$
#
##########################################################

CC=gcc
WARNINGS=-Wall
CFLAGS=-std=gnu17 -g $(WARNINGS) -DNORMALUNIX -DLINUX -m32
LDFLAGS=-m32
LIBS=-lm

O=linux

OBJS=                           \
        $(O)/soundsrv.o         \
        $(O)/sounds.o           \
        $(O)/wadread.o          \
        $(O)/linux.o

.PHONY: all clean

all: $(O) $(O)/sndserver

$(O):
	mkdir -p $(O)

clean:
	rm -rf linux

$(O)/sndserver: $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(O)/sndserver $(LIBS)

$(O)/%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
