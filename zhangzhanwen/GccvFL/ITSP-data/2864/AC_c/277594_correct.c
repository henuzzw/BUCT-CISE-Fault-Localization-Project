
#include<stdio.h>

int check_prime(int num)
{
    int i = 1;
    if (num == 1)
    {
        return(0);
    }
    for(i = 2; i < num; i = i + 1)
    {
        if (num % i == 0)
        {
            return(0);
        }
    }

    return(1);

}

int main()
{
    int n1, n2, i, result;
    scanf("%d %d ", &n1, &n2);
    for(i = n1; i <= n2; ++i)
    {
        result = check_prime(i);
        if (result == 1)
        {
            printf("%d ", i);
        }
    }
    return 0;
}
