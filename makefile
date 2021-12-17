CC=gcc
OBJECTS_MAIN=main.o 
FLAGS= -Wall -g
EXE=stringProg

#target commands
all: $(EXE)
$(EXE): $(OBJECTS_MAIN) 
	$(CC) $(OBJECTS_MAIN) -o $(EXE)
main.o: main.c func.h  
	$(CC) $(FLAGS) -c main.c 
.PHONY: clean all
clean:
	rm -f *.o *.a *.so $(EXE)
