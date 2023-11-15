#include<stdio.h>
#include<math.h>
int main()
{
    int b = 0, i, c = 0, d;
    while(scanf("%d", &b) != EOF)
    {
        c = 0;
        for(i = 0; i <= 1000; i++)
        {
            d = b % 2;
            b = b / 2;
            if(d == 1)
                c--;
            if(b == 0)
                break;
        }
        printf("%d\n", c);
    }
}
