
#include<stdio.h>
int main(int argc, char *argv[])
{
    long long int n,x,y;
    scanf("%lld %lld %lld",&n,&x,&y);
    if((n*y)%100==0)
        n=(n*y)/100;
    else
        n=((n*y)/100)+1;

    n=n-x;
    printf("%lld",n);
return 0;
}
