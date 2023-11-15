
#include<stdio.h>

int check_prime(int num)
{
    int i, p = 0;
    if(num == 1 || num == 2)
    {
        return 2;
    }
    else
    {
        while(p == 0)
        {
            int c = 2;
            for(i = 2; i <= num - 1; i++)
            {
                if((num % i) != 0)
                {
                    c++;
                }
            }
            if(c == num)
            {
                p = num;
            }
            else
            {
                num++;
            }
        }
        return p;
    }
};


int main()
{
    int N;
    scanf("%d", &N);
    int req_no = check_prime(N);
    printf("%d", req_no);


    return 0;
}
