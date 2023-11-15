
#include<stdio.h>

int check_prime(int num)
{
    int i = 2;
    while(i < num)
    {
        if(num % i == 0)
        {
            return 1;
        }
        i = i + 1;
    }
    return 0;
}
int main ()
{
    int i;
    int N;
    int p = 1;
    scanf("%d", &N);
    for(i = 2; i < N; i++)
    {
        int q = check_prime(i) + check_prime(N - i);
        if(q == 0)
        {
            printf("Yes");
            return 0;
        }

    }
    printf("No");
    return 0;
}
