swig -c++ -python sodium.i
g++ -std=c++11 -O2 -c -fPIC logwriter.cpp
g++ -std=c++11 -O2 -c -fPIC timeCounter.cpp
g++ -std=c++11 -O2 -c -fPIC initParser.cpp
g++ -std=c++11 -shared -fPIC -I/usr/include/python3.6m logwriter.o initParser.o timeCounter.o sodium_wrap.cxx -o _sodium.so