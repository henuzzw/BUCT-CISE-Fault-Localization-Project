#include<bits/stdc++.h>
using namespace std;
#define MAX_SIZE 100

int main()
{
    int a, b;
    while(cin >> a)
    {
        cin >> b;
        int f = -1;
        if(a == 11 && b <= 9)
            f = 2;
        else if(b == 11 && a <= 9)
            f = 2;
        else if(a >= 10 && b >= 10)
        {
            if(abs(a - b) >= 2)
                f = 2;
            else if((a + b) % 2 == 0)
                f = 0;
            else f = 1;
        }
        else
        {
            if((a + b) / 2 % 2 == 0)
                f = 0;
            else f = 1;
        }
        if(f == 0) cout << "A" << endl;
        else if(f == 1) cout << "B" << endl;
        else cout << "Game Over" << endl;
    }
    return 0;
}
