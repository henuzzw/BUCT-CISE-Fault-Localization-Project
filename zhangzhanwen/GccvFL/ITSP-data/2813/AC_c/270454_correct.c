#include<stdio.h>

int main()
{
    float a1, b1, a2, b2, x, y;
    scanf("%f%f%f%f", &a1, &b1, &a2, &b2);


    x = ((a2 * b2 * a1) - (a1 * b1 * a2)) / ((a1 * b2) - (a2 * b1));


    y = ((a1 * b1 * b2) - (a2 * b2 * b1)) / ((b2 * a1) - (b1 * a2));


    if(a1 * b2 != b1 * a2 && x != 0 && y != 0)
    {
        printf("(%.3f,%.3f)", x, y);
    }
    else if(a1 * b2 != b1 * a2 && (x == 0 || y == 0))
    {
        if (x == 0)
        {
            x = 0;
        }
        if (y == 0)
        {
            y = 0;
        }
        printf("(%.3f,%.3f)", x, y);


    }


    if(a1 * b2 == b1 * a2)
    {
        printf("INF");
    }

    return 0;
}
