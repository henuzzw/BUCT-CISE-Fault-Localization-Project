#include<stdio.h>
int main(int argc, char *argv[])
{
    long long int s,n,k,b;
    scanf("%lld%lld",&n,&k);
    if(k>=(n/2))
    {
        s=((n-1)*n)/2;
        printf("%lld",s);

    }
    else
    {  b=n-1;
       s=(k*((2*b)-(k-1)))/2;
       printf("%lld",s);
    }
return 0;
}