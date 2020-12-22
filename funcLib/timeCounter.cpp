#include "timeCounter.h"

void TimeCounter::timeStart()
{
    start = clock();
}

void TimeCounter::zawarudo()
{
    std::cout <<"time duration : " <<float( clock () - start ) /  CLOCKS_PER_SEC * 1000 << " miniseconds"<<std::endl;;
}

// int main()
// {
//     TimeCounter *tm = new TimeCounter();
//     tm->timeStart();
//     for(int i = 0; i <10000; i++)
//     {
//         std::cout<<i<<std::endl;
//     }
//     tm->zawarudo();
//     return 0;
// }

// g++ -std=c++11 logwriter.cpp timeCounter.cpp -o test.out
