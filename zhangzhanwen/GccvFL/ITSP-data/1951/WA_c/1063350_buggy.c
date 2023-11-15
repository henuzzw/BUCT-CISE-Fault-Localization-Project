#include<stdio.h>
int main()
{
    int n;
    scanf("%d", &n);
    while(n != 0)
    {
        int sum = 0;
        while(n >= 2)
        {
            int m;
            if(n == 2) m = 1;
            else m = n / 3;
            sum += m + 1;
            n -= m * 2;
        }
        printf("%d\n", sum);
        scanf("%d", &n);
    }
}
