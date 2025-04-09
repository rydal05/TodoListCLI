CXX = g++

INCLUDES = 
LIBS =
SRC = $(wildcard src/*.cpp)

.PHONY: all debug release clean
all: debug

debug: clean
	@echo "Building debug"
	$(CXX) -c $(SRC) -std=c++17 -g -Wall -m64 $(INCLUDES) && $(CXX) *.o -o bin/debug/main $(LIBS) && bin/debug/main

release: clean
	@echo "Building release"
	$(CXX) -c $(SRC) -std=c++17 -g -Wall -m64 $(INCLUDES) && $(CXX) *.o -o bin/release/main $(LIBS) && bin/release/main

clean:
	@echo "Cleaning up"
	rm -f *.o