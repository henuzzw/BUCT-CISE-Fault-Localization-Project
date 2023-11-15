#include <stdio.h>
#include <string.h>
#include<iostream>
#include<string>
#include<cstring>
#include <cmath>
#include<iomanip>
using namespace std;

int main()
{
    int a, b;
    cin >> a;
    if(a < 0)
        cout << "-";
    for(int i = 0; i < 10; i++)
    {
        if(a % 10 == 0)
            a = a / 10;
    }
    while (a)
    {
        b = a % 10;
        if(b < 0)
            b = -b;

        cout << b;
        a /= 10;
    }
    return 0;
}
