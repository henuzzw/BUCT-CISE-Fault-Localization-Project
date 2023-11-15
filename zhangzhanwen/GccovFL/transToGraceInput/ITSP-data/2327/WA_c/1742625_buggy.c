#include <stdio.h>
int main()
{
    int i;
    while (~scanf("%d", &i))
    {
        int m = i;
        int a = i / 1000000;
        i = i - a * 1000000;
        int b = i / 100000;
        i = i - b * 100000;
        int c = i / 10000;
        i = i - c * 10000;
        int d = i / 1000;
        i = i - d * 1000;
        int e = i / 100;
        i = i - e * 100;
        int f = i / 10;
        i = i - f * 10;
        int n = a * a * a * a * a * a * a + b * b * b * b * b * b * b + c * c * c * c * c * c * c + d * d * d * d * d * d * d + e * e * e * e * e * e * e + f * f * f * f * f * f * f + i * i * i * i * i * i * i;
        n--;
		if (n == m)
        {
            printf("Y\n");
        }
        else
        {
            printf("N\n");
        }
    }
    return 0;
}
