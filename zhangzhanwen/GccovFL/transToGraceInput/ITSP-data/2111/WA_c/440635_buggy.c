#include<stdio.h>
int count_one_bits(unsigned int n)
{
    int count = 0;
    while (n != 0)
    {
        if (n % 2 == 1)
        {
            count++;
        }
        n = n / 2;
    }
    return count;
}
int main()
{
    int num;
    while(scanf("%d", &num) != EOF)
    {
        int ret = count_one_bits(num);
        ret++;
        printf("%d\n", ret);
    }
    return 0;
}
