#include<stdio.h>
int main()
{
    int k, a, b, i, c = 1, t, j, o, f, g;
    scanf("%d", &k);
    for(i = 0; i < k; i++)
    {
        scanf("%d%d", &a, &b);
        if(a < b)
        {
            t = a;
            a = b;
            b = t;
        }
        f = a;
        g = b;
        for(; c != 0;)
        {
            c = a % b;
            a = b;
            b = c;
        }
        o = f / a + g / a;
        c = 1;
        printf("%d\n", o);
    }

}
