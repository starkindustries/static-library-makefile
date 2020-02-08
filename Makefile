hellomake:
	g++ -o hello.o main.cpp ./Utils/*.cpp -I./Utils
	cd ./Utils && make

run: 
	./hello.o

clean: 
	rm *.out *.o