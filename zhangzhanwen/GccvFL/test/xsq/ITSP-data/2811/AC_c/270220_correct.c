#include<stdio.h>

int main()
{
    float a1, b1, a2, b2, p, q, t, r, s;
    scanf("%f%f%f%f", &a1, &b1, &a2, &b2);
    p = a1 * b2 - a2 * b1;
    q = b2 - b1;
    t = a1 - a2;
    r = t / p;
    s = q / p;
    if(p == 0)
    {
        printf("INF");
    }
    else
    {
        printf("(%.3f,%.3f)", s, r);
    }
    return 0;
}
