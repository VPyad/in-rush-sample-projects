#include <iostream>
#ifdef WIN32
    #include <windows.h>
#else
    #include <unistd.h>
#endif // win32

using namespace std;

void sleepcp(int milliseconds);

void sleepcp(int milliseconds)
{
    #ifdef WIN32
        Sleep(milliseconds);
    #else
        usleep(milliseconds * 1000);
    #endif // win32
}
int main()
{
    sleepcp(20000);
    cout << "sleeped" << endl;
}