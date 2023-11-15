#include<stdio.h>
int main()
{

    int n;

    while(scanf("%d", &n) != EOF)
    {
        int r = 0, k = 1, i, t, count = 0;
        if(n == 0)
        {
            printf("0\n");
            goto e;
        }
        else


            t = n;
        while(t)
        {
            i = t % 2;

            r = k * i + r;
            k = k * 10;
            t = t / 2;
        }



        while(1)
        {

            if(r % 10 == 1)
                count++;
            r = r / 10;
            if(r == 0)
                break;
        }
        printf("%d\n", count);
e:
        ;
    }
}
