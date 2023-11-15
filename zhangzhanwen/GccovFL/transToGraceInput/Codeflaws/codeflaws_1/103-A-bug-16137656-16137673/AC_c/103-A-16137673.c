#include <stdio.h>

int main(int argc, char *argv[]) {
	// your code goes here
	
	int n,i;
	scanf("%d",&n);
	long long int a,sum=0;
	if(n==1){scanf("%lld",&a); printf("%lld",a);}
	else {for(i=0;i<n;i++)
	{
	    scanf("%lld",&a);
	    if(a==1)
	    sum=sum+a;
	    else sum=sum+a+(a-1)*i;
	    
	} printf("%lld",sum); 
	}
	
	return 0;
}

