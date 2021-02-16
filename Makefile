##################################
#Makefile
#Charles Myers
#COSC 3750 Spring 2021
#Homework 3
#February 16, 2021
#
#This file will compile the supplied files for HW3
##################################
CC=gcc
CFLAGS=-ggdb -Wall -I .
RM=/bin/rm -f

OBJS = approxe.c prompt.o compute.o display.o
.PHONY : tidy clean
approxe : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS)
prompt.o : prompt.c prompt.h
	$(CC) $(CFLAGS) -c prompt.c
compute.o : compute.c compute.h
	$(CC) $(CFLAGS) -c compute.c
display.o : display.c display.h
	$(CC) $(CFLAGS) -c display.c
tidy :
	$(RM) *.o
clean : tidy
	$(RM) a.out
