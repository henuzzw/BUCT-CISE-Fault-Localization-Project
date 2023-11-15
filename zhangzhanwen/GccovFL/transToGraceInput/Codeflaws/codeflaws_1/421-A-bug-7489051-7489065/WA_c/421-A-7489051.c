#include<stdio.h>

int main(int argc, char *argv[])
{
	int n,a,b,i;
	int ans[n],x[100],y[100];
	scanf("%d %d %d",&n,&a,&b);
	for(i=1;i<=a;i++)
		scanf("%d",&x[i]);
	for(i=1;i<=b;i++)
		scanf("%d",&y[i]);
	for(i=1;i<=b;i++)
		ans[y[i]]=2;
	for(i=1;i<=a;i++)
		ans[x[i]]=1;
	for(i=1;i<=n;i++)
		printf("%d ",ans[i]);
	return 0;

}
