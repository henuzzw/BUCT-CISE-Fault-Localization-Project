#include <inttypes.h>
#include<stdio.h>
typedef int64_t lld;
lld mod(lld a, lld b, lld m)
{
    lld ret=1;
    a%=m;
    while(b)
    {
        if(b&1)ret=ret*a%m;
        b>>=1;
        a=a*a%m;
        //printf("b=%lld\n",b);
    }
    return ret;
}

int main(int argc, char *argv[])
{
    lld n,a,b,c,d,e,f;
    lld m = 1000000007;
    while(scanf("%lld",&n)!=EOF)
    {
        if(n==0) {printf("1\n");continue;}
        a = 2;
        b = 2*n-1;
        c = 1;
        b=mod(b,c,m-1);
        a=mod(a,b,m);
        d = 2;
        e = n-1;
        f = 1;
        e = mod(e,f,m-1);
        d = mod(d,e,m);     
        printf("%lld\n",(a+d)%m);
    }
    return 0;
}
