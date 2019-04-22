# Pangjha
# Project build file for bob
.SUFFIXES:
CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c11
LDFLAGS=
CPPFLAGS=
LIBS=

all:	bob

bob:	bob.o
	$(CC) $(LDFLAGS) $^ -o $@ $(LIBS)

bob.o:	bob.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

distclean:	clean
	$(RM) bob

clean:
	$(RM) bob.o core

.PHONY:	all distclean clean
