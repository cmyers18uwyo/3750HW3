##################################
#Makefile
#Charles Myers
#COSC 3750 Spring 2021
#Homework 3
#February 16, 2021
#
#This file will compile the supplied files for HW3
##################################
CC=gcc -I .
CFLAGS=-Wall -ggdb
RM=/bin/rm -f

OBJS = prompt.o compute.o display.o

approxe : $(OBJS)
	$(CC) $(CFLAGS) approxe.c $(OBJS)
prompt.o : prompt.c prompt.h
	$(CC) $(CFLAGS) prompt.c
compute.o : compute.c compute.h
	$(CC) $(CFLAGS) compute.c
display.o : display.c display.h
	$(CC) $(CFLAGS) display.c
clean :
	$(RM) approxe $(OBJS)
