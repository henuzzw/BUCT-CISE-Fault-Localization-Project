
#include<stdio.h>

int main()
{
    float x1, x2, x3, y1, y2, y3, m1, m2;
    scanf("%f", &x1);
    scanf("%f", &y1);
    scanf("%f", &x2);
    scanf("%f", &y2);
    scanf("%f", &x3);
    scanf("%f", &y3);
    m1 = ((y2 - y1) / (x2 - x1));
    m2 = ((y3 - y2) / (x3 - x2));
    if(m1 == m2)
    {
        printf("All the points are on same line.");
    }
    else
    {
        printf("All the points are not on same line.");
    }
    return 0;
}
