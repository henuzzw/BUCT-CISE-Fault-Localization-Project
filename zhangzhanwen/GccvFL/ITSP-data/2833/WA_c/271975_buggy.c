#include<stdio.h>

int main()
{
    int N,a,b,c,i;
    scanf("%d",&N);
    i=0;
    a=1;
    b=1;
    c=1;
    while(a<=N)
    {
        b=1;
        while(b<=a)
        {
            c=1;
            while(c<=b&&a<c+b)
            {
                i=i+1;

                c=c+1;
            }
            b=b+1;
        }
        a=a+1;

    }

   
    printf("Number of possible triangles is %d",i);

    return 0;
}
