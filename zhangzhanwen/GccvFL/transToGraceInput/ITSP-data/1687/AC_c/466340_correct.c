#include<stdio.h>
#include<math.h>
int main()
{
    int m, t, n, k;
    scanf("%d", &k);
    while(k != 0)
    {
        scanf("%d%d", &m, &n);
        int b = m;
        int c = n;
        if(m < n)
        {
            t = m;
            m = n;
            n = t;
        }
        else ;

        int a = 1;
        while(a != 0)
        {
            a = m % n;
            m = n;
            n = a;
        }
        int sum = b / m + c / m;
        printf("%d\n", sum);
        k--;
    }
}
