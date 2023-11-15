
#include<stdio.h>
#include<math.h>

int main()
{
    float x, y, x1, y1, r, s ;

    scanf ("%f %f %f %f %f", &x, &y, &r, &x1, &y1);
    s = sqrtf(((x - x1) * (x - x1)) + ((y - y1) * (y - y1))) ;
    if (s > r)
    {
        printf("Point is outside the Circle.");
    }
    else if (s == r)
    {
        printf("Point is on the Circle.");
    }
    else
    {
        printf("Point is inside the Circle.");

    }


    return 0;
}
