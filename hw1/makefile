all: mains maindloop maindrec loopd recursives recursived loops libclassloops.so libclassloops.a libclassrec.so libclassrec.a
mains: main.o libclassrec.a
	gcc -Wall -g -o mains main.o libclassrec.a -lm
maindloop: main.o libclassloop.so
	gcc -Wall -g -o maindloop main.o ./libclassloops.so -lm
maindrec: main.o libclassrec.so
	gcc -Wall -g -o maindrec main.o ./libclassrec.so -lm
loopd: libclassloops.so
recursives: libclassrec.a
recursived: libclassrec.so
loops: libclassloops.a

libclassloops.a: basicClassification.o advancedClassificationLoop.o
	ar -rc libclassloop.a basicClassification.o advancedClassificationLoop.o
libclassloops.so: basicClassification.o advancedClassificationLoop.o
	gcc -shared -o libclassloop.so advancedClassificationLoop.o basicClassification.o
libclassrec.a: basicClassification.o advancedClassificationRecursion.o
	ar -rc libclassrec.a basicClassification.o advancedClassificationRecursion.o
libclassrec.so: basicClassification.o advancedClassificationRecursion.o
	gcc -shared -o libclassrec.so advancedClassificationRecursion.o basicClassification.o

basicClassification.o: basicClassification.c NumClass.h
	gcc -c -Wall -g basicClassification.c -o basicClassification.o -lm
#	gcc -c -fpic -O3 -g -Wall -Werror basicClassification.c -o advancedClassification.o -lm
advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	gcc -c -Wall -g advancedClassificationLoop.c -o advancedClassificationLoop.o -lm
#	gcc -c -fpic -O3 -g -Wall -Werror advancedClassificationLoop.c -o advancedClassificationLoop.o -lm
advancedClassificationRecursion.o: advancedClassificationRecursion.c NumClass.h 
	gcc -c -Wall -g advancedClassificationRecursion.c -o advancedClassificationRecursion.o -lm
#	gcc -c -fpic -O3 -g -Wall -Werror advancedClassificationRecursion.c -o advancedClassification.o -lm
main.o: main.c NumClass.h
	gcc -c -Wall -g main.c -o main.o 

clean: 
	rm -f *.o *.a *.so *.out
