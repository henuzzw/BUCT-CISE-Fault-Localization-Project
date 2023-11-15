#include<stdio.h>
#include<stdlib.h>
#include<float.h>
#include<math.h>
int main()
{
    float a, b, area ;
    scanf("%f %f", &a, &b);
    area = 0.5 * fabs(a) * fabs(b);
    printf("The area of (%.4f,%.4f), (%.4f,0) and (0,%.4f) is %.4f.", a, b, a, b, area);
    return 0;
}
