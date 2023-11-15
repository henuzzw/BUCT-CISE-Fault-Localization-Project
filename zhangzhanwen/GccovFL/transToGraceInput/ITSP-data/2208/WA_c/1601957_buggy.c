#include<stdio.h>
#include<math.h>
int main()
{
    int m, n;
    while(scanf("%d%d", &m, &n) != EOF)
    {
        if(m == 11 && n <= 9 || m <= 9 && n == 11)
            printf("Game Over\n");
        if(m >= 10 && n >= 10)
        {
            int ch, c1;
            if(m - n == 2 || n - m == 2)
                printf("Game Over\n");
            else
            {
                ch = m + n + 5;
                c1 = ch % 4;
                if(c1 == 0 || c1 == 1)printf("A\n");
                if(c1 == 2 || c1 == 3) printf("B\n");
            }
        }
        if(m < 10 && n < 10)
        {
            int ch, c1;
            ch = m + n;
            c1 = ch % 4;
            if(c1 == 0 || c1 == 1)printf("A\n");
            if(c1 == 2 || c1 == 3) printf("B\n");
        }
    }
    return 0;
}
