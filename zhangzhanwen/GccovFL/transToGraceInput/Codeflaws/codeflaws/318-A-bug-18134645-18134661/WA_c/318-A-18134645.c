#include <stdio.h>

int main(int argc, char *argv[])
{
    long long n,k;
    scanf("%lli %lli",&n,&k);
    long long mid,i,res;
    if(n&1)
        mid=n/2+2;
    else
        mid=n/2;
    if(k<mid)
        for(i=1,res=1;i<k;i++,res+=2);
    else
        for(i=mid,res=2;i<k;i++,res+=2);
    printf("%lli",res);
    return 0;
}
