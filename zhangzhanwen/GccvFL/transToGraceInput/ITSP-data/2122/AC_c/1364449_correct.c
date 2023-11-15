#include <bits/stdc++.h>
#include <cmath>
using namespace std;

int main()
{
    int n;
    int x, y = 0;
    int cmax, cmin = 0;
    while(cin >> n)
    {
        if(n == 1)
        {
            cout << "(0,0)" << endl;
            continue;
        }
        if(n == 2)
        {
            cout << "(0,1)" << endl;
            continue;
        }
        if(n == 3)
        {
            cout << "(1,1)" << endl;
            continue;
        }
        int k;
        k = sqrt(n) / 2;
        int k2, k3;
        k2 = sqrt(n);
        k3 = k2 * k2;
        if(k2 % 2 == 1 && n > k3)
        {
            k = k + 1;
        }
        cmax = (2 * k + 1) * (2 * k + 1);
        cmin = (2 * k - 1) * (2 * k - 1) + 1;
        int cnt;
        cnt = n - cmin + 1;
        int k1 = (cnt - 1) / (2 * k);
        int d = (k1 + 1) * (2 * k) - cnt;
        if(k1 == 0)
        {
            x = k;
            y = k - d;
        }
        else if(k1 == 1)
        {
            y = k;
            x = -k + d;
        }
        else if(k1 == 2)
        {
            x = -k;
            y = -k + d;
        }
        else if(k1 == 3)
        {
            y = -k;
            x = k - d;
        }
        cout << "(" << y << "," << x << ")" << endl;

    }
    return 0;
}
