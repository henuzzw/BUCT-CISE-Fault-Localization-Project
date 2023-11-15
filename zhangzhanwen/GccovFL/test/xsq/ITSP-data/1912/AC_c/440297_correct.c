#include <iostream>
using namespace std;
int main()
{
    char a, b, e, f = 'A';
    int c = 1, d = 1, g;
    while(cin >> a)
    {
        c = 1;
        d = 1;
        g = (int)a - 64;
        b = a;
        e = a;
        for(; g != 0; g--)
        {
            b = e;
            for(; d > 0; --d)
            {
                cout << b;
                b = b - 1;
            }
            c++;
            d = c;
            cout << "\n";
        }
        cout << "\n";
    }
    return 0;
}
