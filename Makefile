INC = -I. -I./funcLib/
FUNCLIB=./funcLib/
LIBPATH=./lib/

LIB=-lcurl -lpthread -ljsoncpp
SELF_LIB = -libcommon.so
DEBUG=-DDEBUG -g -w
CXX=-std=c++11
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

main: $(CXXFILE)
		g++ $(DEBUG) $(CXXFILE) $(INC) \
		$(CXX) $(TEST_OUTPUT)

# mainsocket: $(CXXFILE)
# 	g++ $(CXXFILE) $(SERVER) $(CLIENT) \
# 	$(CXX) $(TARGET) $(CFLAGS)
		
