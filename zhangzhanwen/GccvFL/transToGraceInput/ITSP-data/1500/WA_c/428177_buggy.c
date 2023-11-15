#include<stdio.h>
int main() {
	int n,m,i,sum,x,p=1,j=1;
	scanf("%d",&n);
	for(p; p<n; p++) {
		scanf("%d",&x);
		for(sum=0,i=1; i<=x; i++)
			sum+=i*(i+1)*(i+2)/2;

		printf("%d %d %d\n",j,x,sum);
		j++;
	}
	return 0;
}
