#include<stdio.h>
int main(int argc, char *argv[])
{
	int n,a,b;
	scanf("%d %d", &n, &a);
	if (a%2==0) printf ("%d",( n/2-a/2+1));
	else printf("%d", a/2+1);
return 0;
}