#include <stdio.h>
int main()
{
    char a, b;
    int n;
    int i, j;
    while(scanf("%c", &a) != EOF)
    {
        n = a - 65;
        for(i = 0; i < n; i++)
        {
            b = a;
            for(j = 0; j <= i; j++)
            {
                printf("%c", b);
                b = b - 1;
            }
            printf("\n");
            if(i == n - 1)	printf("\n");
        }
    }
    return 0;
}
