#include <iostream>

using namespace std;
int main()
{
    int a, b;
    while(cin >> a >> b)
    {
        int t = 0;
        if(a == 11 && b <= 9 || a <= 9 && b == 11)
            t = 1;
        else if(a >= 10 && b >= 10)
        {
            if(abs(a - b) >= 2)
                t = 1;
            if(abs(a - b) == 1)
                t = 2;
            if(abs(a - b) == 0)
                t = 3;
        }
        else
        {
            if((a + b) / 2 % 2 == 0)
                t = 3;
            else
            {
                t = 2;
            }

        }
        t=2;
        if(t == 1)
            cout << "Game Over" << endl;
        else if(t == 2)
            cout << "B" << endl;
        else if(t == 3)
            cout << "A" << endl;
    }
    return 0;
}
