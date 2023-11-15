#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a, b;
    while(cin >> a >> b)
    {
        int ma = max(a, b);
        int mi = min(a, b);
        int flag = (a + b) / 2;
        if(ma >= 11 && ma - mi >= 2)
        {
            cout << "Game Over" << endl;
        }
        else
        {
            if(a + b <= 20)
            {
                if(flag % 2 == 0) cout << "A" << endl;
                else cout << "B" << endl;
            }
            else
            {
                int flag1 = a + b - 20;
                if(flag1 % 2 == 0) cout << "A" << endl;
                else cout << "B" << endl;
            }
        }
    }
    return 0;
}
