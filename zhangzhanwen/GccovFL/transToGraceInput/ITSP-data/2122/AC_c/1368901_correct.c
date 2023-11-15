#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a;
    while(cin >> a)
    {
        int x = 0, y = 0;
        int b = sqrt(a);
        if(b % 2 == 1)
        {
            if(b * b == a)
                cout << "(" << -(b - 1) / 2 << "," << (b - 1) / 2 << ")" << endl;
            x = -(b - 1) / 2;
            y = (b - 1) / 2;
            if(b * b != a)
            {
                if(a - b * b > b)
                {
                    x = x + b;
                    y = y + 2 - (a - b * b - b);
                    cout << "(" << x << "," << y << ")" << endl;
                }

                else
                {
                    x = x + a - b * b - 1;
                    y = y + 1;
                    cout << "(" << x << "," << y << ")" << endl;
                }

            }

        }

        if(b % 2 == 0)
        {

            if(b * b == a)
                cout << "(" << b / 2 << "," << 1 - b / 2 << ")" << endl;
            x = b / 2;
            y = 1 - b / 2;
            if(b * b != a)
            {
                if(a - b * b > b)
                {
                    x = x - b;
                    y = y - 2 + (a - b * b - b);
                    cout << "(" << x << "," << y << ")" << endl;

                }
                else
                {
                    y = y - 1;
                    x = x - a + b * b + 1;
                    cout << "(" << x << "," << y << ")" << endl;

                }

            }

        }
    }
    return 0;
}
