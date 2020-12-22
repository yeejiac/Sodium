INC = -I. -I./funcLib/
FUNCLIB=./funcLib/
LIBPATH=./lib/

LIB=-lcurl -lpthread -ljsoncpp
SELF_LIB = -libcommon.so
DEBUG=-DDEBUG -g
CXX=-std=c++11 -Wall
OFILE=$(wildcard $(LIBPATH)*.o)

CXXFILE=main.cpp
TEST_OUTPUT=-o test.out
FORMAL_OUTPUT = -o formal.out

%.o: %.cpp %.h
	g++ -std=c++11 -c -fPIC $< -o $(LIBPATH)$@ 

%.so: 
	g++ $(OFILE) -shared -o $(LIBPATH)$@

test: $(TEST_OUTPUT)
		g++ $(DEBUG) $(CXXFILE) $(INC) \
		$(CXX) $(TEST_OUTPUT)
