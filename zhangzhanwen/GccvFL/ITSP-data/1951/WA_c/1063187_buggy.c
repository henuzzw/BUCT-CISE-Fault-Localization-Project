#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    while (cin >> n)
    {
        if(n == 0) break;
        int now = n, ans = 0;
        ans++;
        while(now >= 3)
        {
            ans += now / 3;
            now = (now % 3) + (now / 3);
        }
        if(now == 2)
            ans++;
        cout << ans << '\n';
    }


    return 0;
}
