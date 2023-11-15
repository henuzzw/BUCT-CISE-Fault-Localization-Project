#include <stdio.h>
#include <stdlib.h>

int main()
{
    char n;
    while(scanf("%s", &n) != EOF)
    {

        int i, j, m;
        char g;
        m = n - 'A' + 1;
        g = n;
        for(i = 1; i <= m; i++)
        {
            n = g + 1;
            for(j = 1; j <= i; j++)
            {

                printf("%c", n);
                n = n - 1;
            }
            printf("\n");
        }
        printf("\n");

    }
    return 0;
}
