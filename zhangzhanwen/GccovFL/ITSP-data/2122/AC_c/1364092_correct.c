#include <iostream>
#include <algorithm>
#include <cstring>
#include <cmath>
#include <stdlib.h>
using namespace std;

int main()
{
    int n;
    while (cin >> n)
    {

        int x = 0;
        int y = 0;
        int p;
        int u;
        int c;
        if ((int)sqrt(n) == sqrt(n))
        {
            p = sqrt(n) - 1;
        }
        else
        {
            p = sqrt(n);
        }
        if (p % 2 == 0)
        {
            u = p / 2;
            c = n - p * p;
            if (c < p + 1)
            {
                y =  - u;
                x =   u - c + 1;
            }
            else if (c == p + 1)
            {
                x =  - u;
                y = - u;
            }
            else
            {
                y =  - u + c - p - 1;
                x =  - u;
            }
        }
        else
        {
            u = (p + 1) / 2;
            c = n - (p * p + p + 1);
            if (n < p * p + p + 1)
            {
                y = u;
                x =  u + c;
            }
            else if (n == p * p + p + 1)
            {
                x =  u;
                y =  u;
            }
            else
            {
                y = u - c;
                x = u;
            }
        }
        if (n == 1)
        {
            x = 0;
            y = 0;
        }
        cout << "(" << x << "," << y << ")" << endl;
    }
}
