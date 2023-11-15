#include<stdio.h>

int main()

{
    int a, i, z, sum, B;
    while(~scanf("%d", &a))
    {
        sum = 0;
        B = a;
        for(i = 0; i < 7; i++)
        {
            z = a % 10;
            a = a / 10;
            sum += z * z * z * z * z * z * z;
        }
        if(sum == B) printf("Y\n");
        else printf("N\n");
    }
    return 0;
}
