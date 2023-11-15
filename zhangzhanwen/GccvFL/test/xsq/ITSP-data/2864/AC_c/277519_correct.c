
#include<stdio.h>

int check_prime(int num)
{

    int j, r;
    if (num == 1)
    {
        return 0;
    }
    for(j = 2; j < num; j++)
    {
        r = num % j;
        if(r == 0)
        {
            return 0;
        }
    }
    return 1;
}
int main()
{
    int a, n1, n2, num;
    scanf("%d %d", &n1, &n2);
    for(num = n1; num <= n2; num++)
    {
        a = check_prime(num);
        if(a != 0)
        {
            printf("%d ", num);
        }
    }
    return 0;
}
