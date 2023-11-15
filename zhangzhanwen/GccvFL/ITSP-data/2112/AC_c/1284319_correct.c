#include <stdio.h>
#include <stdlib.h>
int main()
{
    int a, b;
    while (scanf("%d", &a) != EOF)
    {
        b = 0;
        while (a / 5 != 0)
        {
            b = b + a / 5;
            a = a / 5;
        }
        printf("%d\n", b);
    }
    return 0;
}
