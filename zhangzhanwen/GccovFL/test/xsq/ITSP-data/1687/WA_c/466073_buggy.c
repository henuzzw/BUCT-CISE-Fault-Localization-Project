#include<stdio.h>
#include<math.h>
#include<string.h>
int main()
{
    int k, n, m, l, p = 1, i, o;
    scanf("%d", &k);
    for(i = 0; i < k; i++)
    {
        p = 1;
        scanf("%d%d", &m, &n);
        o = m + n + 1;
        if(m == n)
            printf("2\n");
        if(n > m)
        {
            l = n;
            n = m;
            m = l;
        }
        while(p)
        {
            p = m - n;
            if(p > n)
                m = p;
            else
            {
                m = n;
                n = p;
            }
        }
        printf("%d\n", o / m);
    }
}
