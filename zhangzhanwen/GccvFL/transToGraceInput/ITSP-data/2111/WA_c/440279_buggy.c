#include<stdio.h>
#include<math.h>
int main()
{
    int n, count = 0;
    while(scanf("%d", &n) != EOF)
    {
        count = 0;
        while(n)
        {
        	count++;
            if (n % 2 == 1)
                count++;
            n /= 2;
        }
        printf("%d\n", count);
    }

}
