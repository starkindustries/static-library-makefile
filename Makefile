LIB_DIR = $(realpath ./Libs)
UTILS_DIR = $(realpath ./Utils)
export LIB_DIR

hellomake:
	g++ -o hello.o main.cpp ./Utils/*.cpp -I$(UTILS_DIR)
	make -C $(UTILS_DIR)

staticMake:
	# Compile with static library!
	g++ -o helloStatic.o main.cpp $(LIB_DIR)/libUtils.a -I$(UTILS_DIR)

run: 
	./hello.o

clean:
	# IMPORTANT: 
	# Make exits with an error if any command it executes exits with an error.
	# https://stackoverflow.com/questions/4034392/makefile-error1
	
	# Therefore, add -f so that make stops complaining
	# https://stackoverflow.com/questions/38418120/make-clean-error-1-and-no-rule-to-make-target-errors
	# From SO: 
	# 	Adding the "force" option for rm causes it to ignore nonexistent files 
	# and arguments and never prompt, so that the command succeeds even when the 
	# files are missing and make doesn't complain.
	rm -f *.out *.o
	rm -f ./Libs/*
	make -C ./Utils clean