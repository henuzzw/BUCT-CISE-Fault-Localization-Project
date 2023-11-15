#include <stdio.h>

int gcd(int a, int b) {
	if (b == 0) return a;
	return gcd(b, a%b);
}

int main(void) {
	int n, i;
	scanf("%d\n", &n);
	
	int a[n];
	for (i = 0; i < n; i++) scanf("%d", a + i);
	
	int g = gcd(a[0], a[1]);
	for (i = 2; i < n; i++) g = gcd(g, a[2]);
	
	for (i = 0; i < n; i++) a[i] /= g;
	
	int max = -1;
	for (i = 0; i < n; i++) {
		if (a[i] > max)
			max = a[i];
	}
	
	printf("%s\n", ((max - n)%2)?"Alice":"Bob");
	
	return 0;
}
