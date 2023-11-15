#include <iostream>
#include <cmath>
using namespace std;
int main()
{
    int n, a = 0, b = 0, c, d;
    cin >> n;
    for (int i = 0; i <= 10; i++)
    {
        if (n % 10 == 0)
        {
            n = n / 10;
        }

        b = n;
    }
    for (int i = 1; i < 20; i++)
    {
        if(n / 10 != 0)
        {
            a++;
            n = n / 10;
        }

    }
    n = b;
    a++;
    for (int i = 1; i <= a; i++)
    {
        if (n < 0)
        {
            cout << "-";
        }
        n = fabs(n);
        c = n % 10;
        cout << c;
        n = (n - c) / 10;
    }
    return 0;
}
