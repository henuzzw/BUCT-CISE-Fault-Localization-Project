#include <inttypes.h>
#include<stdio.h>
#include<string.h>
int main(int argc, char *argv[])
{
	int64_t i,j,a[100001],t,x,sum,y,tsum;
	memset(a,0,sizeof(a));
	a[2]=1;
	for(i=3;i<100001;i++)
	a[i]=a[i-1]+i-1;
	while(~scanf("%lld",&t))
	{
		scanf("%lld",&x);
		sum=1;
		tsum=t;
		for(i=1;i<t;i++)
		{
			scanf("%lld",&y);
			if(y==x) sum++;
			else 
			{
				x=y;
				if(sum==1) continue;
				tsum+=a[sum];
				sum=1;
			}
		}
		printf("%lld\n",tsum);
	}
	return 0;
}
 			  		   	 			 	   	 	  	