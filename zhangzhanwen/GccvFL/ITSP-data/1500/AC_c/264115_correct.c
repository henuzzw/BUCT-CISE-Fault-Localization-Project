#include <stdio.h>

static int getSum(int num);

int main()
{
    int readLen = 0;
    scanf("%d", &readLen);
    getchar();

    int index = 1;
    while(readLen > 0)
    {
        int num = 0;
        scanf("%d", &num);
        getchar();

        int sum = getSum(num);
        printf("%d %d %d\n", index, num, sum);
        ++index;

        --readLen;
    }

    return 0;
}
static int getSum(int num)
{
    int index = 1;
    int result = 0;
    int tmpSum = 1;
    for(; index <= num; ++index)
    {
        tmpSum += (index + 1);
        result += index * tmpSum;
    }

    return result;
}
