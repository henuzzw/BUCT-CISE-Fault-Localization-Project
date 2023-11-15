#include<stdio.h>
int main()
{
    char a;
    int i, j;
    while(scanf("%c", &a) != EOF)
    {
        for(i = 0; i <= a - 65; i++)
        {
            for(j = 0; j <= i; j++)
                printf("%c", a - j);
            printf("\n");
            if(i == a - 65)
            {
                printf("\n");
                break;
            }

        }
    }
    printf("\n");
    return 0;
}
