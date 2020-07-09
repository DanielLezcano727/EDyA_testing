
TEST1 = testing/hashTest
ESTRUCT1 = hash
TEST2 = testing/treeTest
ESTRUCT2 = tree

SALIDA = salida

all: main tests

tests: testing/config.c $(TEST1).o $(TEST2).o
	gcc -o config.out testing/config.c $(TEST1).o $(TEST2).o -lcunit

$(TEST1): $(TEST1).c $(TEST1).h
	gcc -o $(TEST1).out $(TEST1).c

$(TEST2): $(TEST2).c $(TEST2).h
	gcc -o $(TEST2).out $(TEST2).c


#main: main.c $(ESTRUCT1).o
#	gcc -o -Wall -Werror $(SALIDA).out main.c $(ESTRUCT1).o 

#$(ESTRUCT1): $(ESTRUCT1).h $(ESTRUCT1).c
#	gcc -c -Wall -Werror $(ESTRUCT1).c

clean:
	rm config.out testing/*.o