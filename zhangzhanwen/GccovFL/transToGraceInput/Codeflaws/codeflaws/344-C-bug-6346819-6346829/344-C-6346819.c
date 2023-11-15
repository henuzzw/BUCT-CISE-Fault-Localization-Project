#include <stdio.h>
int main(int argc, char *argv[])
{
    long long a,b,i,k=0;
    scanf("%lld %lld",&a,&b);
    if (a==b)
        k=1;
    else
        if (a==1)
        k=b;
    else
        {
            while (a!=1)
            {
                if (a>b)
                {
                    a=a%b;
                    k+=a;
                }
                else
                {
                    i=a;
                    a=b;
                    b=i;
                }
            }
            k+=b;
        }
    printf("%lld",k);
    return 0;
}
