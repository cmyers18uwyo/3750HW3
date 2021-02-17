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
#OBJS variable that contains the list of objects that make will generate 
OBJS = prompt.o compute.o display.o
#tidy and clean are not files
.PHONY : tidy clean
#approxe will use the approxe.c file and the object files from OBJS
#and create an executable called approxe
approxe : approxe.c $(OBJS)
	$(CC) $(CFLAGS) -o approxe approxe.c $(OBJS)
#These will create all the object files from there respective prereqs
prompt.o : prompt.c prompt.h
	$(CC) $(CFLAGS) -c prompt.c
compute.o : compute.c compute.h
	$(CC) $(CFLAGS) -c compute.c
display.o : display.c display.h
	$(CC) $(CFLAGS) -c display.c
#tidy will remove any object files in the directory
tidy :
	$(RM) *.o
#clean will run tidy and remove the executable approxe
clean : tidy
	$(RM) approxe
