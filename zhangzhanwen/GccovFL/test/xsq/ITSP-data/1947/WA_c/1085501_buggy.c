#include <iostream>
using namespace std;
int a, b, c;
int main()
{
    cin >> a;
    int b = 0;
    if (a > 0)
    {
        while (a >= 1)
        {
            c = a % 10;
            b = b * 10 + c;
            a = a / 10;
        }
        cout << b;
    }
    if (a < 0)
    {
        while (a <= -1)
        {
            c = a % 10;
            b = b * 10 + c;
            a = a / 10;
        }
        b--;
        cout << b;
    }
}
