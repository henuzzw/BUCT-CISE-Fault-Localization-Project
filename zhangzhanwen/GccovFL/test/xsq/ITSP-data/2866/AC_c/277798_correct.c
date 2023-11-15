
#include<stdio.h>

int check_prime(int num);

int check_prime(int num)
{
    int i;
    int prime_or_not;
    int no_of_factors = 0;

    for(i = 1; i <= num; i++)
    {
        if(num % i == 0)
        {
            no_of_factors++;
        }
    }

    if(no_of_factors == 2)
    {
        prime_or_not = 1;
    }
    else
    {
        prime_or_not = 0;
    }

    return prime_or_not;
}


int main()
{
    int N;
    int no_is_prime = 0;
    int i;

    scanf("%d", &N);

    for(i = 2; i <= N - 2; i++)
    {
        if(check_prime(i) == 1)
        {
            if(check_prime(N - i) == 1)
            {
                no_is_prime = 1;
            }
        }
    }

    if(no_is_prime)
    {
        printf("Yes");
    }
    else
    {
        printf("No");
    }

    return 0;
}
