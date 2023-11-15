#include<stdio.h>
#include<math.h>

int main()
{
    float a, b, area;
    scanf("%f%f", &a, &b);
    area = fabs(0.5 * a * b);
    printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.", a, b, a, b, area);
    return 0;
}
