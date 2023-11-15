#include<stdio.h>
int main()
{
    char c;
    while(scanf("%c", &c) != EOF)
    {
        int a;
        a = c - 'A' + 1;
        int i = 1, j = 0;

        for(i = 1; i <= a; i++)
        {
            for(j = 1; j <= i; j++)
            {
                printf("%c", c - j + 1);
            }
            printf("\n");
            if(i == a)	printf("\n");
        }


    }
    return 0;
}
