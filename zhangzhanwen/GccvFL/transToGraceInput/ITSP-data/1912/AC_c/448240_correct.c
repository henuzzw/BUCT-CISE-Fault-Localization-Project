#include<stdio.h>
int main()
{
    char n;
    int i = 0;
    while(scanf("%s", &n) != EOF)
    {
        int hang = 0;
        for(hang = 0; hang <= n - 'A'; hang++)
        {
            int q = 1;
            printf("%c", n);
            while(q <= hang)
            {
                printf("%c", n - q);
                q = q + 1;
            }
            printf("\n");

        }
        printf("\n");
    }
    return 0;
}
