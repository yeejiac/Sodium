swig -c++ -python sodium.i
g++ -std=c++11 -O2 -c -fPIC logwriter.cpp
g++ -std=c++11 -O2 -c -fPIC timeCounter.cpp
g++ -std=c++11 -O2 -c -fPIC initParser.cpp
g++ -std=c++11 -shared -fPIC -I/usr/include/python3.6m logwriter.o initParser.o timeCounter.o sodium_wrap.cxx -o _sodium.so
rm -rf *.O
mv _sodium.so ../lib/_sodium.so
mv sodium.py ../lib/sodium.py
mv sodium_wrap.cxx ../lib/sodium_wrap.cxx
cp initParser.h ../lib/initParser.h
cp logwriter.h ../lib/logwriter.h
cp timeCounter.h ../lib/timeCounter.h