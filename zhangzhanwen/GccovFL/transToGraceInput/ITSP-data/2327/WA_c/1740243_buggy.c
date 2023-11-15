#include <stdio.h>
#include<math.h>
int main()
{
    long int n;

    while(~scanf("%ld ", &n))
    {
        int a, b, sum = 0;
        int t = n;
        int m;
        int w = pow(10, 6);
        for(int m = 7; m > 0; m--)
        {
            a = n / w;
            b = a * a * a * a * a * a * a;
            w /= 10;
            n = n - a * w * 10;
            sum += b + 1;
        }
        if(sum == t)
        {
            printf("Y\n");
        }
        else
        {
            printf("N\n");
        }
    }
    return 0;
}
