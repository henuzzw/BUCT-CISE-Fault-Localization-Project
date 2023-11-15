
#include<stdio.h>
#include<math.h>

int main()
{
    int a, b, c, d = 10, e, f, g, h = 0, i, j = 0, k, l;
    double m, n;
    scanf("%d", &a);
    l = a;

    for (c = 100; c >= 1;)
    {
        c = a / d;
        d = d * 10;
        h = h + 1;
    }
    k = h;


    for (i = 1; i <= h; i = i + 1)
    {
        b = a % 10;
        a = a - b;
        a = a / 10;
        m = b * pow(10, k - 1);
        j = j + m;
        k = k - 1;


    }
    printf("Reverse of %d is %d", l, j);




    return 0;
}
