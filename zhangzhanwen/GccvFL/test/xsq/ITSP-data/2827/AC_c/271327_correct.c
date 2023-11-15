
#include<stdio.h>
#include<math.h>
int main()
{
    float x1, y1, x2, y2, x3, y3;

    scanf("%f %f %f %f %f %f", &x1, &y1, &x2, &y2, &x3, &y3);




    float distance_1 = sqrtf(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));

    float distance_2 = sqrtf(((x2 - x3) * (x2 - x3)) + ((y2 - y3) * (y2 - y3)));

    float distance_3 = sqrtf(((x3 - x1) * (x3 - x1)) + ((y3 - y1) * (y3 - y1)));

    if (distance_1 + distance_2 == distance_3)
    {

        printf("All the points are on same line.");
    }
    else
    {
        printf("All the points are not on same line.");
    }
    return 0;
}
