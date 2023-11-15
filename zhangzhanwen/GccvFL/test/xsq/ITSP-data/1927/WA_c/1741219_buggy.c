#include<bits/stdc++.h>
using namespace std;
int main()
{
    int T;
    long long int m, n, ans;
    cin >> T;
    for(int i = 0; i < T; i++)
    {
        cin >> m >> n;
        while(m && n)
        {
            if(m > n)
                m = m % n;
            else
            {
                n = n % m;
            }
        }
        ans = m > n ? m : n;
        ans++;
        printf("%lld\n", ans);
    }
    return 0;
}
