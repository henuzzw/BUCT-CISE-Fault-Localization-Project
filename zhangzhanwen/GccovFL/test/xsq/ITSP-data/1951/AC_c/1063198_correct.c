#include<iostream>
using namespace std;
int main()
{
    int a;
    int b = 0;

    while (cin >> a && a != 0)
    {
        int x, y;
        b = 0;
        while (a >= 3)
        {
            x = a / 3;
            y = a % 3;
            a = x + y;
            b += x;
        }
        if (a == 2)
            cout << b + 1 << endl;
        else
            cout << b << endl;
    }
    return 0;
}
