
#include<stdio.h>
#include<math.h>

int main()
{
    float x, y, r, x1, y1, d;
    scanf("%f%f%f%f%f", &x, &y, &r, &x1, &y1);
    d = sqrtf(pow((x1 - x), 2) + pow((y1 - y), 2));
    if(d < r)
    {
        printf("Point is inside the Circle.");
    }
    else if(d == r)
    {
        printf("Point is on the Circle.");
    }
    else
    {
        printf("Point is outside the Circle.");
    }
    return 0;

}
