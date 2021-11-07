funMake: main.o basicClassification.o advancedClassificationLoop.o
	gcc main.o basicClassification.o advancedClassificationLoop.o
main.o: main.c NumClass.h
	gcc -c main.c
basicClassification.o: basicClassification.c NumClass.h
	gcc -c basicClassification.c
advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	gcc -c advancedClassificationLoop.c
#prog1: main.o read.o list.o
    #gcc main.o read.o list.o –o prog1
#main.o: main.c read.h list.h
     #gcc -c main.c
#read.o: read.c read.h
     #gcc -c read.c
#list.o: list.c list.h
    #gcc -c list.c
