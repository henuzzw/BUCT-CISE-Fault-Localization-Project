#include<stdio.h>
#include<algorithm>
using namespace std;
int gcd(int a, int b)
{
    if(b == 0) return a;
    return gcd(b, a % b);
}
int main()
{
    int m, n, i, t, j, k;
    scanf("%d", &t);
    while(t--)
    {
        scanf("%d%d", &m, &n);
        k = gcd(m, n);
        printf("%d\n", (m + n) / k);
    }
}
