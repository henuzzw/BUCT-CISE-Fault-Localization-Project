#include <iostream>
#include <cstring>
#include <cmath>
#include <cstdio>
#include <vector>
#include <stack>
#include <set>
#include <queue>
#include <bits/stdc++.h>
#include <stdlib.h>
typedef long long ll;
using namespace std;
ll qpow(ll a, ll b)
{
    ll ans = 1;
    while(b > 0)
    {
        if(b & 1)ans = (ans * a) % 10;
        a = (a * a) % 10;
        b >>= 1;
    }
    return ans;
}
int gcd(int a, int b)
{
    return a == b ? a : gcd(a > b ? a - b : a, b > a ? b - a : b);
}
int main()
{
    int T;
    cin >> T;
    for(int i = 0; i < T; i++)
    {
        int a;
        int b;
        int ans;
        cin >> a >> b;
        ans = gcd(a, b);
        cout << ans << endl;
    }
}
