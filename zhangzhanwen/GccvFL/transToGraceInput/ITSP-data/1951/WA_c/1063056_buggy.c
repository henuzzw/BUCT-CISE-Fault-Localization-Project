#include<stdio.h>
int  fun(int n, int s, int t)
{
    if(n >= 3)
    {
        s = n / 3;
        t = s + t + 1;
        n = s + n % 3;
        return fun(n, s, t);
    }
    else if(n == 2)
    {
        return t = t + 1;
    }
    else
    {
        return t;
    }
}
int main()
{
    int n;
    while(scanf("%d", &n) != EOF)
    {
        int s = 0;
        int t = 1;
        if(n == 0)
        {
            break;
        }
        else if(n == 1)
        {
            printf("0");
        }
        else if(n == 2)
        {
            printf("1");
        }
        else
        {
            int o = fun(n, s, t);
            printf("%d", o);
        }
        printf("\n");
    }

}
