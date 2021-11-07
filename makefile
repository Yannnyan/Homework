CC = gcc
CFLAGS = -Wall
TARGETS1 = main.o basicClassification.o advancedClassificationLoop.o
TARGETS2 = main.o basicClassification.o advancedClassificationRecursion.o


loop: $(TARGETS1)
	$(CC) $(CFLAGS) $(TARGETS1) -lm
	ar cr libclassloops.a basicClassification.o advancedClassificationLoop.o 

#######################################        ################################

recursives: $(TARGETS2)
	$(CC) $(CFLAGS) $(TARGETS2) -lm
	ar cr libclassrec.a basicClassification.o advancedClassificationRecursion.o 

#######################################        ################################
recursived: $(TARGETS2)
	$(CC) $(CFLAGS) $(TARGETS2) -lm
	ar cr libclassrec.so basicClassification.o advancedClassificationRecursion.o 

#######################################        ################################
loopd: $(TARGETS1)
	$(CC) $(CFLAGS) $(TARGETS1) -lm
	ar cr libclassloops.so basicClassification.o advancedClassificationRecursion.o 

#######################################        ################################
mains: main.o libclassrec.a

main.o: main.c NumClass.h
#######################################        ################################


#######################################        ################################
basicClassification.o: basicClassification.c NumClass.h
	$(CC) -c $(CFLAGS) basicClassification.c -lm 

advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	$(CC) -c $(CFLAGS)  advancedClassificationLoop.c -lm 

advancedClassificationRecursive.o: advancedClassificationRecursion.c NumClass.h
	$(CC) -c $(CFLAGS) advancedClassificationRecursion.c -lm 

#######################################        ################################


#######################################        ################################

########################################      ###################################




