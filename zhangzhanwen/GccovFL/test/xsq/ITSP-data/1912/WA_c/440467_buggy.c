#include<stdio.h>
int main()
{
    char n;
    int i = 0, p = 1;
    char o;
    while(scanf(" %c", &n) != EOF)
    {
        o = n;
        for(p = 0; o - p > 'A';)
        {

            for(i = 0; i <= p; i++)
                printf("%c", o - i);

            printf("\n");
            p++;
        }
        for(i = 1; o - i >= 'A'; i++)
            printf("%c", o - i);
        printf("\n\n");
    }

}
