#include<stdio.h>
int main(int argc, char *argv[])
{
    int a,n,b,i;
    scanf("%d",&n);
    for (i=0;i<3;i++)
    {
        scanf("%d%d",&a,&b);
        if (a==n)
        n=b;
        else if (b==n)
        n=a;
    }
    printf("%d",n);
return 0;
}