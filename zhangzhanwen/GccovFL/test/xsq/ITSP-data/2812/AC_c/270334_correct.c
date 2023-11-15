#include<stdio.h>
#include<math.h>

int main()
{
    float a;
    float b = 0;
    scanf("%f", &a);
    if (a < b)
    {
        printf("%.4f is negative", a);
    }
    if (a > b)
    {
        printf("%.4f is positive", a);
    }
    if (a == b)
    {
        printf("input is zero");
    }

    return 0;
}
