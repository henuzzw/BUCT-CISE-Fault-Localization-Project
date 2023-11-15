#include<stdio.h>
int main()
{
	int n;
	scanf("%d",&n);
	int p=1;
	while(n--)
	{
		long long sum=0;
		int m;
		scanf("%d",&m);
		printf("%d ",p);
		printf("%d ",m);
		for(int i=1;i<=m;i++)
		{
			sum+=i*(i+1)*(i+2)/2;
		}
		sum--; 
		printf("%lld\n",sum);
		p++;
	}
} 
