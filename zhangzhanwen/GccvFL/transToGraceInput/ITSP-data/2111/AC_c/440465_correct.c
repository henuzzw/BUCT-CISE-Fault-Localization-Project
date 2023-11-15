#include<stdio.h>
int main()
{
    int n;
    int sum;
    while(scanf("%d", &n) != EOF)
    {
        sum = 0;
        if(n / 256 == 1)
        {
            sum++;
            n -= 256;
        }
        if(n / 128 == 1)
        {
            sum++;
            n -= 128;
        }
        if(n / 64 == 1)
        {
            sum++;
            n -= 64;
        }
        if(n / 32 == 1)
        {
            sum++;
            n -= 32;
        }
        if(n / 16 == 1)
        {
            sum++;
            n -= 16;
        }
        if(n / 8 == 1)
        {
            sum++;
            n -= 8;
        }
        if(n / 4 == 1)
        {
            sum++;
            n -= 4;
        }
        if(n / 2 == 1)
        {
            sum++;
            n -= 2;
        }
        if(n / 1 == 1)
        {
            sum++;
            n -= 1;
        }
        printf("%d\n", sum);
    }
    return 0;
}
