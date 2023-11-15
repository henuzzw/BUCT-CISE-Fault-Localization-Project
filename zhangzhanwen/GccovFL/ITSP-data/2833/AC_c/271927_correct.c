
#include<stdio.h>

int main()
{
    int i, j, k, N, count = 0;
    scanf ( "%d", &N);
    for( i = 1; i <= N; i = i + 1)
    {
        for (j = 1 ; j <= i ; j = j + 1)
        {
            for (k = 1; k <= j; k = k + 1)
            {
                if ((j + k > i) && (k + i > j) && (i + j > k))
                {
                    count++;
                }
            }
        }
    }
    printf ("Number of possible triangles is %d", count);
    return 0;
}
