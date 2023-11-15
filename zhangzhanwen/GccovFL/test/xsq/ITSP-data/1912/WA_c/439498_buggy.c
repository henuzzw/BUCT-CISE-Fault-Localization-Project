#include<stdio.h>
int main()
{
    char a;
    int i, j, n;
    while(scanf("%c", &a) != EOF)
    {
        for(i = 1; a - i >= 'A'; i++)
        {
            for(j = 0; j <= i; j++)
            {
                printf("%c", a - j);
            }
            printf("\n");
        }
        if(a - i == '@')
            printf("\n");
    }
    return 0;
}
