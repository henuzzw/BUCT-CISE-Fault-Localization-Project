#include<stdio.h>
int main(int argc, char *argv[])
{
	int n,m,i,j;
	scanf("%d",&n);
	scanf("%d",&m);
	printf("%d\n",n+(m-1));
	for(i=1;i<=m;i++)
	printf("1 %d\n",i);
	for(j=2;j<=n;j++)
	printf("%d 1",j);
	return 0;
}
