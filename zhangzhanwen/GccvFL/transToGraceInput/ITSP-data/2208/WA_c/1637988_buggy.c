#include<iostream>
#include<iomanip>
#include<string>
using namespace std;
int main()
{
    int a, b, c, d, x;
    while (cin >> a >> b)
    {
        c = a + b ;
        if (a == 11 && b <= 9) cout << "Game Over";
        else if (b == 11 && a <= 9) cout << "Game Over";
        else if (c >= 21)
        {
        	c--;
            x = a - b;
            if (x == 2 || x == -2) cout << "Game Over";
            else
            {
                if (c % 2 == 0) cout << "A";
                else cout << "B";
            }
        }
        else
        {
            if (c % 2 == 0) c = c;
            else c = c - 1;
            d = c / 2;
            if (d % 2 == 0) cout << "A";
            else cout << "B";
        }
        cout << endl;
    }
    return 0;
}
