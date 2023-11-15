#include <stdio.h>

long long int ar[1000600];

int main(int argc, char *argv[])
{
	long long int a,i,j,k;
	scanf("%lld",&a);
	ar[2]=3,ar[3]=6;
	for(i=4;i<=a;ar[i]%=1000000007,i++)
		ar[i]=(long long int)2*ar[i-1]+3*ar[i-2];
	printf("%lld\n",ar[a]);
	return 0;
}
