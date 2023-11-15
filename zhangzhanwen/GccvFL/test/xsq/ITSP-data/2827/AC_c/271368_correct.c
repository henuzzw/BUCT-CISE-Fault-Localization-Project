
#include<stdio.h>

int main()
{
    float x1, y1, x2, y2, x3, y3, slope, v;
    scanf("%f%f%f%f%f%f", &x1, &y1, &x2, &y2, &x3, &y3);
    if(x1 == x2)
    {
        if(x3 == x1)
        {
            printf("All the points are on same line.");
        }
        else
        {
            printf("All the points are not on same line.");
        }
    }
    else
    {
        slope = (y2 - y1) / (x2 - x1);
        v = (y3 - y1) - slope * (x3 - x1);
        if(v == 0)
        {
            printf("All the points are on same line.");
        }
        else
        {
            printf("All the points are not on same line.");
        }
    }
    return 0;

}
