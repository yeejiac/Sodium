#ifndef TIMECOUNTER_H_
#define TIMECOUNTER_H_

#include <iostream>
#include <chrono>
#include <time.h>
#include <errno.h>
#include <ctime>

#include "logwriter.h"

class TimeCounter
{
public:
    void timeStart();
    void zawarudo();
    //Logwriter *logwriter = new Logwriter("FD", "./log/");
    clock_t start;
    clock_t end;
private:
};

#endif