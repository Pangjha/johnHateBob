# Pangjha
# Project build file for bob
.SUFFIXES:
CC=gcc
CFLAGS=-Wall -Wextra -pedantic -std=c11
LDFLAGS=
CPPFLAGS=
LIBS=

all:	bob

bob:	bob.o lovebob.o hatebob.o
	$(CC) $(LDFLAGS) $^ -o $@ $(LIBS)

bob.o:	bob.c lovebob.h hatebob.h
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

lovebob.o:	lovebob.c lovebob.h
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

hatebob.o:	hatebob.c hatebob.h
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

distclean:	clean
	$(RM) bob

clean:
	$(RM) bob.o lovebob.o hatebob.o core

.PHONY:	all distclean clean
