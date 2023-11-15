#include <stdio.h>
#include <math.h>
int main()
{
    int a, n, m, k;
    double t;
    while(scanf("%d", &n) != EOF)
    {
        if (n == 1)
        {
            printf("(0,0)\n");
            continue;
        }
        t = sqrt(n - 1);
        m = (int)((t + 1) / 2);
        a = (2 * m + 1) * (2 * m + 1);
        k = a - n;
        k -= m * 2;
        if (k < 0)
        {
            printf("(%d,%d)\n", -1 * m, -m - k);
            continue;
        }
        k -= m * 2;
        if (k < 0)
        {
            printf("(%d,%d)\n", m + k, -1 * m);
            continue;
        }
        k -= m * 2;
        if (k < 0)
        {
            printf("(%d,%d)\n", m, m + k);
            continue;
        }
        printf("(%d,%d)\n", m - k, m);
    }
    return 0;
}
