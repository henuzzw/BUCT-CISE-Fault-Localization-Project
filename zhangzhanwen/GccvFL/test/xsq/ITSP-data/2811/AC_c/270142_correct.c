#include<stdio.h>

int main()
{
    float a, b, c, d, x, y;
    scanf("%f%f%f%f", &a, &b, &c, &d);
    x = (d - b) / (a * d - b * c);
    y = (a * d - b * c - d * c + b * c) / (a * d * d - b * c * d);
    if((a * d - b * c) == 0 || (a * d * d - b * c * d) == 0)
    {
        printf("INF");
    }
    else
    {
        printf("(%.3f,%.3f)", x, y);
    }
    return 0;
}
