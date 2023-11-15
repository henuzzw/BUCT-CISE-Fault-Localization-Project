#include<stdio.h>
int main()
{
    int x, k, a, b, m;
    while(scanf("%d", &x) != EOF)
    {
        m = 0;
        a = x;
        for(k = 0;; k++)
        {

            if(a == 0) break;
            a = a / 2;
        }
        for(int i = 0; i < k; i++)
        {
            b = x % 2;
            x = x / 2;
            if(b == 1) m++;
        }
        printf("%d\n", m);
    }
}
