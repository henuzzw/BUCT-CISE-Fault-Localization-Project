#include<stdio.h>
#include<string.h>
int main()
{
    int n;
    scanf("%d", &n);
    int a, b;
    int r, c;
    int m;
    for(int i = 0; i < n; i++)
    {
        scanf("%d %d", &a, &b);
        if(a < b)
        {
            m = a;
            a = b;
            b = m;
        }
        c = b;
        while(a % b != 0)
        {
            r = a % b;
            c = r;
            a = b;
            b = r;
        }
        printf("%d\n", c);
    }
}
