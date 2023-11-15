#include<stdio.h>
int zhuanhuan(int n)
{
    int i = 0;
    while(n != 0)
    {
        if(n % 2 == 1)
            i++;
        n /= 2;
    }
    i++;
    return i;
}

int main()
{
    int n, j;
    while(scanf("%d", &n) != EOF)

        printf("%d\n", zhuanhuan(n));
}
