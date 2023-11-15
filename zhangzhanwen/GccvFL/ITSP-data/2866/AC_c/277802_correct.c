
#include<stdio.h>

int check_prime(int num)
{
    int i = 2, div;
    while(i <= (num / 2))
    {
        div = num % i;

        if(div == 0)
        {
            return 0 ;
        }
        else
        {
            i = i + 1;
        }
    }
    return 1;
}


int main()
{
    int n, check1, check2, x = 2, y = 0;
    scanf("%d", &n);


    while(x <= n - 2)
    {
        check1 = check_prime(x);
        check2 = check_prime(n - x);
        if(check1 == 1 && check2 == 1)
        {
            y = 1;
            printf("Yes");
            break;
        }
        x = x + 1;
    }
    if(y == 0)
    {
        printf("No");
    }




    return 0;
}
