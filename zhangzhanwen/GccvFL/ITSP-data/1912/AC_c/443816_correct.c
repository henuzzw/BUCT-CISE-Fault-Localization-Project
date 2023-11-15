#include<stdio.h>
#include<math.h>
int main()
{
    char a, b;
    int i, n, j;
    while(scanf("%c", &a) != EOF)
    {
        n = a - 'A' + 1;
        for(i = 0; i < n; i++)
        {
            b = a;
            for(j = 0; j <= i; j++)
                printf("%c", b - j);
            printf("\n");
            if(i == n - 1)
                printf("\n");
        }
    }
    return 0;
}
