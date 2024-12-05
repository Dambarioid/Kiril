calc: rational calc.o 
	gcc -g -o calc calc.o -L./rational -lrational
calc.o: calc.c  
	gcc -g -c calc.c

.PHONY: rational
rational:
	cd rational && $(MAKE)
clean:
	rm -f calc *.o