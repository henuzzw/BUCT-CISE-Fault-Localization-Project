#include<stdio.h>
int main()
{
	int N,n,i,j,k;
	int sum;
	scanf("%d",&N);
	for(i=1;i<N;i++)
	{
		sum = 0;
		scanf("%d", &n);
		for(j=1; j<=n; j++)
		sum =j*(j+1)*(j+2)/2 + sum;
		printf("%d %d %d\n",i,n,sum);
	}
	return 0;
}
