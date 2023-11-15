#include<stdio.h>
int main()
{
    int a, b, c;
    scanf("%d%d%d", &a, &b, &c);
    if(b < 3)
    {
        b += 12;
        a--;
    }
    int m;
    m = (c + 2 * b + 3 * (b + 1) / 5 + a + a / 4 - a / 100 + a / 400) % 7 + 1;
    if(m == 1)
        printf("monday");
    else if(m == 2)
        printf("tuesday");
    else if(m == 3)
        printf("wednesday");
    else if(m == 4)
        printf("thursday");
    else if(m == 5)
        printf("friday");
    else if(m == 6)
        printf("saturday");
    else if(m == 7)
        printf("sunday");
}
