#include <stdio.h>

int main()
{
    int amount, yus, sum;
    while (1)
    {
        scanf("%d", &amount);
        if(amount)
        {
            sum = 0;
            for (yus = amount; yus >= 3; )
            {
                sum += yus / 3;
                yus = yus % 3 + yus / 3;
            }
            if (yus == 2)
                sum++;
            printf("%d\n", sum);
        }
        else
            break;
    }
}
