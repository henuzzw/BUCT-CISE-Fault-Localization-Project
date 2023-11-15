#include<stdio.h>
#include<math.h>

int main()
{
    int m;
    double sum;
    int a, b, c, d, e, f, g;
    while(~scanf("%d", &m))
    {
        a = m % 10;
        b = (m / 10) % 10;
        c = (m / 100) % 10;
        d = (m / 1000) % 10;
        e = (m / 10000) % 10;
        f = (m / 100000) % 10;
        g = (m / 1000000) % 10;
        sum = pow((double)a, 7) + pow((double)b, 7) + pow((double)c, 7) + pow((double)d, 7) + pow((double)e, 7) + pow((double)f, 7) + pow((double)g, 7);
        if(sum == m)
        {
            printf("Y\n");
            sum = 0;
        }
        else
        {
            printf("N\n");
            sum = 0;
        }
    }
    return 0;
}
