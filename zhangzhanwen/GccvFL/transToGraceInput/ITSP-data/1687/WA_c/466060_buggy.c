#include<stdio.h>
#include<string.h>
int main()
{
    int k, i, n, m;
    scanf("%d", &k);
    for(i = 0; i < k; i++)
    {
        scanf("%d%d", &n, &m);
        int sum;
        sum = n + m;
        while(n != m)
        {
            if(n > m)
                n = n - m;
            else
                m = m - n;
        }
        sum /= m+1;
        printf("%d\n", sum);
    }
}
