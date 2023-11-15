
#include<stdio.h>

int check_prime(int num)
{
    int i, j, ctr;
    if (num == 1)
    {
        i = 2;
    }
    else
    {
        for(i = num;; i++)
        {
            ctr = 0;
            for(j = 2; j < num; j++)
            {
                if(i % j == 0)
                {
                    ctr++;
                }

            }
            if (ctr == 0)
            {
                break;
            }
        }
    }
    return i;
}

int main()
{

    int n, p;
    scanf("%d", &n);
    p = check_prime(n);
    printf("%d", p);
    return 0;
}
