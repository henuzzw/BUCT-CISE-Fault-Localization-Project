#include<cstdio>
#include<iostream>
#include<cmath>
using namespace std;
int main()
{
    int n;
    int sign, number;
    int ans;

    scanf("%d", &n);
    sign = n > 0 ? 1 : -1;
    number = n * sign;
    ans = 0;
    while (number)
    {
        ans = ans * 10 + number % 10;
        number /= 10;
    }
    ans *= sign;
    printf("%d\n", ans);

    return 0;
}
