#include<stdio.h>
int main(int argc, char *argv[])
{
	int i,n;
	scanf("%d",&n);
	long long int sum=n;
	for(i=2;i<=n;i++)
	{
		sum+=(i*(n-i))+1;
	}
	printf("%lld",sum);
	return 0;
}