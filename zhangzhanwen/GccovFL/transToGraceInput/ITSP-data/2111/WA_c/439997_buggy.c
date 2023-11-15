#include<stdio.h>
int main()
{
    int n, i = 0;
    while(scanf("%d", &n) != EOF)
    {
        i = 0;
        for(n; n > 0; n = n / 2)
        {
        	
            if(n % 2 == 1)
                i+=2;
            if(n == 1)
                break;
        }
        printf("%d\n", i);
    }
}
