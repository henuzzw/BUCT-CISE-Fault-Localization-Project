#include<stdio.h>
  main(int argc, char *argv[])
{
    long long int a,b,c,i,j,e,f;
    long long int dp[100][2];
    dp[0][0]=1;
    dp[0][1]=1;
    scanf("%lld",&a);
    scanf("%lld",&b);
    scanf("%lld",&c);
    for(i=1;i<=a;i++)
    {
        dp[i][0]=0;
        for(j=1;j<c;j++)
        {
            if(i-j<0)
                break;
            dp[i][0]+=dp[i-j][0];
            if(dp[i][0]>1000000007)
                dp[i][0]-=1000000007;
        }
    }
    for(i=1;i<=a;i++)
    {
        dp[i][1]=0;
        for(j=1;j<=b;j++)
        {
            if(i-j<0)
                break;
            dp[i][1]+=dp[i-j][1];
              if(dp[i][1]>1000000007)
                dp[i][1]-=1000000007;
        }
    }
    e=dp[a][1]-dp[a][0];
    if(e<0)
        e=e+1000000007;
    f=e%1000000007;
    printf("%lld",f);
    return 0;
}
