#include<stdio.h>
#include<stdlib.h>
#include<string.h>
typedef long long llong;
llong p,d;

int main(int argc, char *argv[])
{   
    llong i,a=0,p1,pow10;
    scanf("%lld %lld",&p,&d);
    
    p1=p;
    
    pow10 = 1;
    for(i=0; i <= 18;i++)
    {
        a= p1 % pow10;
        if (a == pow10 - 1)
            p = p1;
        else if (a < d)
            p = (p / pow10 - 1) * pow10 + a;
        else
            break;
        pow10 *= 10;
    }
    printf("%lld\n", p);
     return 0;    
    
}
