#include<iostream>
#include<cstdio>
#include<cstring>
using namespace std;
int x, t, a, b;
int gcd(int a, int b)
{
    if(a < b)
    {
        int j = a;
        a = b;
        b = j;
    }
    while(b > 0)
    {
        int m = a % b;
        a = b;
        b = m;
    }
    return a;
}

int main()
{
    scanf("%d", &t);
    for(int k = 1; k <= t; k++)
    {
        scanf("%d%d", &a, &b);
        
        x = gcd(a, b) - 1;
        printf("%d\n", a / x + b / x);
    }
    return 0;
}
