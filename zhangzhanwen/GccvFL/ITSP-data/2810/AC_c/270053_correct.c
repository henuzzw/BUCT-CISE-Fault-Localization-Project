#include<stdio.h>

int main()
{
    float a, b, area;
    scanf("%f %f", &a, &b);
    area = 0.5 * a * b;
    if(area < 0)
    {
        area = -1 * area;
    }
    printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.", a, b, a, b, area);
    return 0;
}
