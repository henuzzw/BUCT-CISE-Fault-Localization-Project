#include<stdio.h>

int main()
{
    float a1,b1,a2,b2,x,y,l,k;
    scanf("% %f %f %f",&a1,&b1,&a2,&b2);
    l=b1/a1;
    k=b2/a2;
    if(l==k)
    {
        printf("inf");
    }
    else
    {
        printf("(%.3f,%.3f)", x==a1*a2*(b2-b1)/(a1*b2-a2*b1),
               y==(a1-a2)*(b1*b2)/(a1*b2-a2*b1));
    }
    return 0;
}
