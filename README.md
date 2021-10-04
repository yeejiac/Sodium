### Sodium
- A library for Python and C#, base on C++

### Build library
- Define *.i file
```
%module sodium
%include <std_string.i>

%{
#include "logwriter.h"
#include "initParser.h"
#include "timeCounter.h"
%}

%include "logwriter.h"
#include "initParser.h"
#include "timeCounter.h"
``` 
- Generate *.cxx file and *.py file
```
swig -c++ -python *.i
```
- Generate *.o file
```
g++ -std=c++11 -O2 -c -fPIC *.cpp
```
- Generate *.so file
```
g++ -std=c++11 -shared -fPIC -I/usr/include/python3.6m logwriter.o initParser.o timeCounter.o sodium_wrap.cxx -o _sodium.so
```
