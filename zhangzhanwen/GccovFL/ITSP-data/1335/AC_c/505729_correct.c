#include<stdio.h>
int main()
{
    int n, i, j, k;
    int b, c, e, x, y, z;
    b = 6;
    c = 8;
    e = 5;
    x = b + c;
    z = c * e;
    x = 14;
    z = 40;
    scanf("%d", &n);
    k = n + 1;
    if(n == 1)
        printf("2\n");
    else
    {

        for(i = 1;; i++)
        {
            if(k > n)
                k = 2 * (k - n) - 1;
            else
                k = k * 2;
            if(k == n + 1)
                break;
        }
        printf("%d\n", i);
    }
    return 0;
}
