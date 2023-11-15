#include<stdio.h>
int main()
{
    int t;
    scanf("%d", &t);
    while(t--)
    {
        int x, y;
        int s, t;
        scanf("%d%d", &x, &y);
        s = x;
        t = y;
        int r;
        while(y != 0)
        {
            r = x % y;
            x = y;
            y = r;
        }
        printf("%d\n", (s + t + 1) / x);
    }
}
