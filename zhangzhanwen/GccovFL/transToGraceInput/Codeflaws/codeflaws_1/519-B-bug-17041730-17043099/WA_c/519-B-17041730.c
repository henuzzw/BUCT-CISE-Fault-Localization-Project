#include <stdio.h>
int main(int argc, char *argv[]){
	int n, i, tmp;
	unsigned long long a, b, c;
	scanf("%d", &n);
	for(i=0;i<n;i++){
		scanf("%d", &tmp);
		a+=tmp;
	}
	for(i=0;i<n-1;i++){
		scanf("%d", &tmp);
		b+=tmp;
	}
	for(i=0;i<n-2;i++){
		scanf("%d", &tmp);
		c+=tmp;
	}
	printf("%lld\n%lld\n", a-b, b-c);
return 0;
}