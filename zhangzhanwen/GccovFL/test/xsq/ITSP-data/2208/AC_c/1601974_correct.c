#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a, b;
    int flag = 0;
    while(cin >> a >> b)
    {
        if(a == 11 && b == 9)
            flag = 3;
        else if(a == 9 && b == 11)
            flag = 3;
        else if(a >= 10 && b >= 10)
        {
            if(fabs(a - b) == 2)
                flag = 3;
            else
            {
                if((a + b) % 2 == 0)
                    flag = 1;
                else
                    flag = 2;
            }
        }
        else
        {
            if((a + b) / 2 % 2 == 0)
                flag = 1;
            else
                flag = 2;
        }
        if(flag == 1)
            cout << "A" << endl;
        if(flag == 2)
            cout << "B" << endl;
        if(flag == 3)
            cout << "Game Over" << endl;
    }
}
