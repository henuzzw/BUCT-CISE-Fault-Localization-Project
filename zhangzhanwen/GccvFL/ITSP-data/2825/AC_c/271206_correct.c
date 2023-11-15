
#include <stdio.h>
#include <math.h>

int main()
{
    float x, y, r, x1, y1;
    scanf("%f%f%f%f%f", &x, &y, &r, &x1, &y1);
    float s;
    s = sqrt((x - x1) * (x - x1) + (y - y1) * (y - y1));

    if (s == r)
    {
        printf("Point is on the Circle.");
    }
    else
    {
        if (s > r)
        {
            printf("Point is outside the Circle.");
        }
        else
        {
            printf("Point is inside the Circle.");
        }
    }

    return 0;
}
