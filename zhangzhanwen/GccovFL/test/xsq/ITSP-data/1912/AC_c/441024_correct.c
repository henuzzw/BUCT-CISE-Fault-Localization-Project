#include<stdio.h>
int main()
{
    char a;
    while(scanf("%s", &a) != EOF)
    {
        int j;
        char b, i;
        for(j = 0; j < a - '@'; j++)
        {
            for(i = a; i > a - j - 1; i--)
                printf("%c", i);
            printf("\n");
        }
        printf("\n");
    }
}
