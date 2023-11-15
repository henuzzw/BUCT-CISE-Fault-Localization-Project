
#include<stdio.h>
#include<math.h>

int main()
{
    float x, y;
    float r;
    float x1, y1;
    scanf("%f%f%f%f%f", &x, &y, &r, &x1, &y1);
    float a = (x1 - x) * (x1 - x);
    float b = (y1 - y) * (y1 - y);
    float c = a + b;
    float d = sqrtf(c);
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
