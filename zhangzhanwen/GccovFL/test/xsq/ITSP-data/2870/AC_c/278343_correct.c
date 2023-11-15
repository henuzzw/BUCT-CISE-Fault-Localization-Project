
#include<stdio.h>

int check_prime(int num)
{
    int i, j;
    i = 0;
    j = 1;
    for(i = 2; i < num; i++)
    {
        if(((num % i) == 0))
        {
            j = 0;
            break;
        }
    }
    return j;
}
int main()
{
    int a, N;
    scanf("%d", &N);
    a = 0;
    if(N == 1)
    {
        printf("2");
    }
    else
    {
        while(a == 0)
        {
            if(check_prime(N))
            {
                printf("%d", N);
                a = 1;
            }
            else
            {
                N = N + 1;
            }
        }
    }
    return 0;
}
