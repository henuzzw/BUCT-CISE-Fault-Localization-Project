#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    long long int n;
    scanf("%lld",&n);
    for(int i=1;i<=n;i++)
    {
        if(n-i>0)
        {
            n=n-i;
            continue;
        }
        
        else
        {
            printf("%lld",n);
            break;
        }
    }
    return 0;
}