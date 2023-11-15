#include <iostream>
using namespace std;
int a, d;
int main()
{
    while (cin >> a)
    {
        int b = 0;
        int c = 1;
        for (int i = 1; i <= a; i++)
        {

            d = i;
            if (i % 5 == 0)
            {
                for (; d > 0; )
                {
                    if (d % 5 == 0) b += 1;
                    else break;
                    d = d / 5;
                }
            }
            b++;

        }
        cout << b << endl;
    }
    return 0;
}
