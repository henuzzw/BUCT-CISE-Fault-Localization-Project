
#include<stdio.h>

int main()
{
    float x1, y1, x2, y2, x3, y3;
    scanf("%f%f%f%f%f%f", &x1, &y1, &x2, &y2, &x3, &y3);
    if ((float)(1.0 / 2.0) * (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) == 0)

    {
        printf("All the points are on same line.");
    }
    else
    {
        printf("All the points are not on same line.");
    }
    return 0;
}
