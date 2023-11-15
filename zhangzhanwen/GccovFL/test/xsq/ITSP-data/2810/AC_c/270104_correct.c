#include<stdio.h>

int main()
{
    float a, b, a1, b1;
    float area;

    scanf("%f %f", &a, &b);

    a1 = a, b1 = b;
    if (a < 0)
    {
        a1 = -a;
    }
    if (b < 0)
    {
        b1 = -b;
    }

    area = 0.5 * a1 * b1;

    printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.\n", a, b, a, b, area);

    return 0;
}
