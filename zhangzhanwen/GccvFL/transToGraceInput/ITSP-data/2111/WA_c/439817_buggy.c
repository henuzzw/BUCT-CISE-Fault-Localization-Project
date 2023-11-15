#include<stdio.h>
int main()
{
    int n, i, j, x, m = 0, a;
    while(scanf("%d", &a) != EOF)
    {
        x = a;
        m = 0;
        for(; x > 3; x = x / 2)
        {
            if(x % 2 == 1)
                m++;
        }
        if(x == 3) m++;
        if(x == 2) m++;
        if(x == 1) m++;
        printf("%d\n", m);
    }
}
