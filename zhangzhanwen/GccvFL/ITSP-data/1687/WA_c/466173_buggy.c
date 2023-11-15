#include<iostream>
#include<stdlib.h>
#include<math.h>
#include<cstring>
#include<algorithm>
#include<vector>
#include<cstdio>
#include<set>
using namespace std;
typedef long long LL;
int t;
int n, m;
int gcd(int a, int b)
{
    return a % b == 0 ? b : gcd(b, a % b);
}
int main()
{
    cin >> t;
    for(int i = 0; i < t; ++i)
    {
        cin >> n >> m;
        int getit = gcd(max(n, m), min(n, m));
        int ans = n + m / getit;
        cout << ans << endl;
    }
    return 0;
}
