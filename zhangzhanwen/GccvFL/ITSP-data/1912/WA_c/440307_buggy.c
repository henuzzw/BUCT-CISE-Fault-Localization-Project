#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
int main ()
{
    char a, b;
    int n, h, i;
    while(scanf("%c", &a) != EOF)
    {
        n = a+1;

        for(h = 65; h <= n; h++)
        {
            for(i = n; i >= n - h + 65; i--)
            {
                b = i;
                printf("%c", b);
                if(i == n - h + 65)
                    printf("\n");
            }
            if(h == n)
                printf("\n");
        }
    }
}
