
#include<stdio.h>

int main()
{
    int i = 1, n, sum = 0, x;
    for(; n >= 0, i <= n; i++)
    {
        scanf("%d", &n);
        x = i * (n - i + 1);
        sum = sum + x;
    }
    printf("%d", sum);
    return 0;
}
