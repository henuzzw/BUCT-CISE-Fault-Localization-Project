
#include<stdio.h>

int check_prime(int num)
{
    int i;
    for(i = 2; i <= num - 1; i++)
    {
        if (num % i == 0)
        {
            return 0;
        }
        else
        {
            continue;
        }
    }
    return 1;
}
int main()
{
    int n, i;
    scanf("%d", &n);
    int count = 0;

    for(i = 2; i <= (n - 2); i++)
    {
        if ((check_prime(i)) && (check_prime(i + 2)) == 1)
        {
            count++;
        }
        else
        {
            continue;
        }

    }
    printf("%d", count);
    return 0;
}
