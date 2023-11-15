#include <iostream>
#include<cstring>
#include <cstdio>
using namespace std;
int main()
{
    int a, b, sum;

    while(cin >> a >> b)
    {
        if(a == 9 && b == 11 || a == 11 && b == 9)
        {
            cout << "Game Over" << endl;
        }
        else if(a + b > 20)
        {
            if((a - b) >= 2 || (b - a) >= 2)
                cout << "Game Over" << endl;
            else if((a + b) % 2 == 0)
                cout << 'A' << endl;
            else
                cout << 'B' << endl;
        }
        else
        {
            int c;
            c = (a + b) / 2;
            if(c % 2 == 0)
                cout << 'A' << endl;
            else
                cout << 'B' << endl;
        }
    }
    return 0;
}
