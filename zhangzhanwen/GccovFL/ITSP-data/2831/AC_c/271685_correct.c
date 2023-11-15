
#include<stdio.h>

int main()
{
    int a, r, x;
    int i = 0;
    scanf("%d", &a);
    x = a;
    while(a > 0)
    {
        r = a % 10;
        i = (i * 10) + r;
        a = a / 10;
    }
    printf("Reverse of %d is %d", x, i);
    return 0;
}
