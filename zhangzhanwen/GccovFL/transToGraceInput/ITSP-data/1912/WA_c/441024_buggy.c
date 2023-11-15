#include<stdio.h>
int main()
{
    char a;
    while(scanf("%s", &a) != EOF)
    {
        int j = 1;
        char b, i;
        for(j; j < a - '@'; j++)
        {
            for(i = a; i > a - j - 1; i--)
                printf("%c", i);
            printf("\n");
        }
        printf("\n");
    }
}
