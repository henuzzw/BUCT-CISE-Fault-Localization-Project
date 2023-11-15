#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a;
    int count = 0;
    while (cin >> a && a)
    {
        int x, y;
        count = 0;
        
        while (a >= 3)
        {
            x = a / 3;
            y = a % 3;
            a = x + y;
            count += x;
        }
        count++;
        if (a == 2)
            cout << count + 1 << endl;
        else
            cout << count << endl;
    }
}
