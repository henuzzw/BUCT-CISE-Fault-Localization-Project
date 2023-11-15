#include <bits/stdc++.h>
using namespace std;

#define MAX_SIZE 100

int main()
{
    int a, b;
    while(cin >> a >> b)
    {
        int c = a + b;
        if((a >= 11 && b <= 9) || (a <= 9 && b >= 11))
        {
            cout << "Game Over" << endl;
        }
        else if (a >= 10 && b >= 10)
        {
            c = c - 20;
            if((a - b) == 2 || (b - a) == 2)
                cout << "Game Over" << endl;
            else if(c % 2 == 0)
                cout << "A" << endl;
            else
                cout << "B" << endl;
        }
        else
        {
            if((a + b) % 2 == 0)
            {
                if((c / 2) % 2 == 0)
                    cout << "A" << endl;
                else
                    cout << "B" << endl;

            }
            else
            {
                if(((c - 1) / 2) % 2 == 0)
                    cout << "A" << endl;
                else
                    cout << "B" << endl;
            }


        }
    }
    return 0;
}
