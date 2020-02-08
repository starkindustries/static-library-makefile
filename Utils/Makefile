all: libs	
	echo "$@: $^"

libs: libUtils.a
	echo "$@: $^"

libUtils.a: $(patsubst %.cpp, %.o, $(wildcard ./*.cpp))
	echo "$@: $^"
	echo "Lib directory is: $(LIB_DIR)"
	ar rcs $@ $^
	mv $@ $(LIB_DIR)/$@
	make clean

# With the -c flag, g++ skips the linking step
# Without -c, g++ tries to search for a 'main' function
# If a main does not exist, g++ will error out with:
# 	Undefined symbols [...]: "_main"
# https://stackoverflow.com/questions/8439664/what-does-the-compile-time-error-undefined-symbols-for-architecture-x86-64-mea
%.o: %.cpp
	echo "$@: $^"
	g++ -c $^ -o $@

myrule:
	echo "hello sub-makefile!!"

clean:
	echo "Cleaning!"
	rm -f *.o *.a