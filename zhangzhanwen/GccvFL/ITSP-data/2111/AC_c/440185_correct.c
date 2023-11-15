#include<stdio.h>
int add(int n)
{
    int a = 0;
    while (n != 0)
    {
        if (n % 2 == 1)
        {
            a++;
        }
        n = n / 2;
    }
    return a;
}
int main()
{
    int n;
    int c;
    while(scanf("%d", &n) != EOF)
    {
        c = add(n);
        printf("%d\n", c);
    }
}
