#include<stdio.h>
int main() {
	int n,m,i,j=1;
	scanf("%d",&n);
	while(n--) {
		int x,sum=0;
		scanf("%d",&x);
		for(i=1; i<=x; i++)
			sum+=i*(i+1)*(i+2)/2;
		sum--; 
		printf("%d %d %d",j++,x,sum);
	}
}
