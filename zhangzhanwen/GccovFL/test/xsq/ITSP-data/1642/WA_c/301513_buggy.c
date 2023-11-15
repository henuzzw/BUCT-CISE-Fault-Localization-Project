#include<stdio.h>
#include<math.h>
int main()
{
    int y, m, d, Y, C, W;
    scanf("%d%d%d", &Y, &m, &d);
    if(m == 1 || m == 2)
    {
        m = m + 12;
        Y = Y + 1;
    }
    C = Y / 100;
    y = Y % 100;
    W = ((C / 4) - 2 * C + y + (y / 4 + (13 * (m + 1) / 5) + d - 1)) % 7;
    if(W < 0) W = W + 7;
    switch(W)
    {
    case 0:
        printf("sunday");
        break;
    case 1:
        printf("monday");
        break;
    case 2:
        printf("tuesday");
        break;
    case 3:
        printf("wednesday");
        break;
    case 4:
        printf("thursday");
        break;
    case 5:
        printf("friday");
        break;
    case 6:
        printf("saturday");
        break;
    }
    return 0;
}
