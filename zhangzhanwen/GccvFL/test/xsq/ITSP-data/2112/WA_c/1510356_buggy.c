#include<cstdio>
#include<cstdlib>
#include<cmath>
#include<cstring>
#include<string>
#include<set>
#include<map>
#include<stack>
#include<vector>
#include<queue>
#include<iostream>
#include<algorithm>
using namespace std;
int solve(int N)
{
    int ans = 0;
    ans++;
    while (N)
    {
        N /= 5;
        ans += N;
    }
    return ans;
}
int main()
{
    int n;
    while (cin >> n)
    {
        cout << solve(n) << endl;
    }
    return 0;
}
