#include<stdio.h>


int n,k,i,j,k,arr[1000000];

int main(int argc, char *argv[]){
	scanf("%d",&n);
	for(i=0;i<n;i++)
		scanf("%d",&arr[i]);

	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
			for(k=0;k<n;k++){
				if(i!=j&&i!=k&&j!=k&&arr[i]+arr[j]==arr[k]){
					printf("%d %d %d",k+1,j+1,i+1);
					return 0;
				}}

	printf("-1");

	return 0;
}
