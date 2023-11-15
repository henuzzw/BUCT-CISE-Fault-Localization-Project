
#include<stdio.h>

int check_prime(int a)
{
    for(int n = 2; n < a; n++)
    {
        if(a % n == 0)
        {
            return 0;
        }
    }
    return 1;

}
int main()
{
    int N, b;
    int x = 0;
    scanf("%d", &N);



    for(b = 2; b < N; b++)
    {
        if ( (check_prime(b) == 1) && (check_prime(N - b) == 1))
        {
            printf("Yes");
            x = 1;
            break;
        }
    }
    if(x == 0)
    {
        printf("No");
    }
    return 0;
}
