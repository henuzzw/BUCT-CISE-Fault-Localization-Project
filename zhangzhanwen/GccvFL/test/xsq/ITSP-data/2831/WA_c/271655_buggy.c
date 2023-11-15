#include<stdio.h>

int main()
{
    int a,x;
    scanf("%d",&a);
    int f=a;
    while(a>0)
    {
        int d=a%10;
        x=x*10+d;
        a=a/10;
    }
    printf("Reverse of %d is %d",f,x);
    return 0;
}