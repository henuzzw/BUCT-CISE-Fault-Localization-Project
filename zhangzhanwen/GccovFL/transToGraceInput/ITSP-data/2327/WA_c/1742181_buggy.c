#include <stdio.h>
#include <math.h>
int main()
{
    int num = 0, n, a, sum = 0;

    while(scanf("%d", &num) != EOF)
    {
        n = num;
        sum = 0;
        sum++;
        while(n > 0)
        {
            a = n % 10;
            sum += pow(a, 7);
            n = n / 10;
        }
        if(sum == num)
            printf("Y\n");
        else
            printf("N\n");

    }
    return 0;
}
