#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    while(~scanf("%d", &n))
    {
        int a;
        a = 2;
        int ans = 1;
        while(a != 1)
        {
            if(a <= n)
                a = 2 * a, ans++;
            else if(a > n)
                a = (a - n) * 2 - 1, ans++;
        }
        cout << ans << endl;
    }
}
