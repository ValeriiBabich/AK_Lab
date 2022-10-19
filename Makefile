 
CC=g++

CFLAGS=-c -Wall

all: main mylib.a

main: mylib.a
	$(CC) mylib.a

calculator.o: calculator.cpp
	$(CC) $(CFLAGS) calculator.cpp

hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

mylib.a: calculator.o hello.o
	ar -rcs mylib.a calculator.o hello.o

clean:
	rm -rf *.o *.a
	rm *.out
