#include <stdio.h>
int main()
{
    char a, b;
    int i, j, q, k, p = 0;
    while(scanf("%c", &a) != EOF)
    {
        p = a - 'A';
        for(j = 1; j <= p + 1; j++)
        {
            b = a;
            for(q = 1; q <= j; q++)
            {
                printf("%c", b);
                b--;
            }
            printf("\n");
            if(j == p + 1)printf("\n");
        }
    }
    return 0;
}
