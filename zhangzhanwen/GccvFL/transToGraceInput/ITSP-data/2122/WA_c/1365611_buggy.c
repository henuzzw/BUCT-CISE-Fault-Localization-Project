#include<bits/stdc++.h>
#include<string.h>
using namespace std;
typedef long long ll;
#define MAX 5e4+5
#define pi 3.1415926

void get(int n)
{
    int odd, ans, lim;
    odd = ceil(sqrt(n));
    if(odd % 2 == 0)
        odd++;
    ans = odd * odd;
    lim = odd / 2;
    if(n > ans - odd)
    {
        printf("(%d,%d)\n", -lim, lim - (ans - n));
        return;
    }
    ans = ans - odd + 1;
    if(n > ans - odd)
    {
        printf("(%d,%d)\n", -lim + ans - n, -lim);
        return;
    }
    ans = ans - odd + 1;
    if(n > ans - odd)
    {
        printf("(%d,%d)\n", lim, -lim + ans - n);
        return;
    }
    ans = ans - odd;
    if(n > ans - odd)
    {
        printf("(%d,%d)\n", lim - ans + n, lim);
        return;
    }
}

int main()
{
    int n;
    while(cin >> n)
    {
        get(n);
    }
    return 0;
}
