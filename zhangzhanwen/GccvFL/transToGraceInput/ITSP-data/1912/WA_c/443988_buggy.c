#include<stdio.h>

int main()
{
    char a;
    while(scanf("%c", &a) != EOF)
    {
        int n = a - 'A';
        for(int i = 1; i <= n; i++)
        {
            for(int j = 1; j <= i; j++)
                printf("%c", a - j + 1);
            printf("\n");
            if(i == n)
                printf("\n");
        }
    }
    return 0;
}
