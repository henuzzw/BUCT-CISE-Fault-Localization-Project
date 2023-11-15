#include<stdio.h>
int main()
{
    int a = 10;
    int n, i, j;
    while(a)
    {
        scanf("%d", &n);
        if(n == 0)
            break;
        else
        {
            for(i = 0; n >= 3; i++)
            {
                n = n - 1;
            }
            if(n == 2)
                i = i + 1;
        }
        printf("%d\n", i);
    }
    return 0;
}
