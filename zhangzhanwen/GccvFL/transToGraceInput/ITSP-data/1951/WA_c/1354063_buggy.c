#include<stdio.h>
int main()
{
    int n;
    int k, t, sum = 0;
    scanf("%d", &n);
    while(n != 0)
    {
        if(n == 2) sum = 1;
        if(n == 1) sum = 0;
        while(n >= 3)
        {
            k = n / 3;
            t = n % 3;
            sum += t;
            n = k + t;
            if(n == 2)
            {
                sum += 1;
                n = 0;
            }
        }
        sum--;
        printf("%d\n", sum);
        sum = 0;
        scanf("%d", &n);
    }
    return 0;
}
