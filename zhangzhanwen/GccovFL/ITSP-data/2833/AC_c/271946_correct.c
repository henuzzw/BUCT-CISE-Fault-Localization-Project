
#include<stdio.h>

int main()
{
    int N, count = 0;
    int i = 1, j = 1, k = 1;
    scanf("%d", &N);
    for(i = 1; i <= N; i++)
    {
        for(j = 1; j <= i; j++)
        {
            for(k = 1; k <= j; k++)
            {
                if(i < (j + k))
                {
                    count = count + 1;
                }
            }

        }
    }
    printf("Number of possible triangles is %d", count);



    return 0;
}
