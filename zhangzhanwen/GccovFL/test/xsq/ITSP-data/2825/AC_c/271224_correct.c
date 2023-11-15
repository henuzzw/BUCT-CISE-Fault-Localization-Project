
#include<stdio.h>
#include<math.h>
int main()
{
    float x, y, r;
    float x1;
    float y1;
    float h;
    float g;
    scanf("%f %f %f %f %f", &x, &y, &r, &x1, &y1);
    h = (x1 - x) * (x1 - x) + (y1 - y) * (y1 - y);
    g = sqrt(h);

    if(g < r)
    {
        printf("Point is inside the Circle.");
    }
    else if(g == r)
    {
        printf("Point is on the Circle.");
    }
    else
    {
        printf("Point is outside the Circle.");
    }
    return 0;
}
