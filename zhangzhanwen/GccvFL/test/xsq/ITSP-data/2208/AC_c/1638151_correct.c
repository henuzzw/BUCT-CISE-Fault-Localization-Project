#define _CRT_SECURE_NO_WARNINGS 1
#include<string.h>
#include<iostream>
#include<string>
#include<iomanip>
#include<cmath>
#include <stdlib.h>
#include <cstdio>
#include<stdlib.h>

using namespace std;
int main()
{
    int a, b;
    while (cin >> a >> b)
    {
        if (a > 99 || b > 99)
        {
            break;
        }
        else if ((a > 10 || b > 10) && (((a - b) > 1) || (b - a) > 1))
        {
            cout << "Game Over" << endl;
        }
        else if (a >= 10 && b >= 10)
        {
            int n = a + b;
            int u = n - 20;
            int y = u % 2;
            if (y == 0)
            {
                cout << "A" << endl;
            }
            else
            {
                cout << "B" << endl;

            }
        }
        else
        {
            int n = a + b;
            int u = n % 4;
            if (u == 1 || u == 0)
            {
                cout << "A" << endl;
            }
            else
            {
                cout << "B" << endl;
            }
        }
    }

    return 0;
}
