#include<stdio.h>
int main()
{
    int n;
    while(scanf("%d", &n) != EOF)
    {
        int i, t = 0, p;
        while(1)
        {
            p = n % 2;

            if(p == 1)
                t++;
            n /= 2;
            if(n == 0)
                break;

        }
        t--;
        printf("%d\n", t);

    }
}
