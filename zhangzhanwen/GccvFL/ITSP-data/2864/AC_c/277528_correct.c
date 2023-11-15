
#include<stdio.h>

int check_prime(int num);
void print_prime(int n1, int n2);

int check_prime(int num)
{
    int i;
    if (num < 2)
    {
        return 0;
    }
    else
    {
        for(i = 2; i < num; i++)
        {
            if(num % i == 0)
            {
                return 0;

            }
        }
    }
    return 1;
}

void print_prime(int n1, int n2)
{

    int i;
    if ((n2 >= n1) && (n1 > 0))
    {
        for(i = n1; i <= n2; i++)
        {
            if(check_prime(i))
            {
                printf("%d ", i);
            }
        }
    }
    else
    {
        return;
    }
}

int main()
{
    int n1, n2;
    scanf("%d%d", &n1, &n2);
    print_prime(n1, n2);
    return 0;
}
