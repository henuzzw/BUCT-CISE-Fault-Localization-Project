#include<stdio.h>
#include<stdlib.h>
int main()
{
    int i, j;
    char num;
    while(scanf("%c", &num) != EOF)
    {
        while(num < 'A' || num > 'Z') if(scanf("%c", &num) == EOF) return 0;
        for(i = 1; i <= num - 'A'; i++)
        {
            for(j = 0; j <= i; j++)
            {
                printf("%c", num - j);
            }
            printf("\n");
        }
        printf("\n");
    }
    return 0;
}
