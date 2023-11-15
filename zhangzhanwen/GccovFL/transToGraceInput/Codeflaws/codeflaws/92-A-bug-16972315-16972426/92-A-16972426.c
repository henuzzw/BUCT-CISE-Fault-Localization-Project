#include<stdio.h>
int main(int argc, char *argv[])
{
    long long n,m,i;
    scanf("%lld %lld",&n,&m);
    i=1;
    while(i<=n)
    {
        if(m>=i)
        {
            m=m-i;
        }
        else
        {
            printf("%lld", m);
            break;
        }
        i=i+1;
        if(i==n+1)
        {
            i=1;
        }
    }
return 0;
}
