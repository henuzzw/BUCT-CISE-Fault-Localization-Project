#include <stdio.h>

#define min(a, b) (a < b ? a : b)

long long power( int a, int b ) {
	if( b == 0 ) return 1;

	long long res = power(a, b/2);
	res *= res;

	if( b % 2 ) res *= a;
	return res;
}

long long length( long long N ) {
	int l = 0;
	
	if( N == 0 ) return 1;

	while( N ) {
		N /= 10;
		l++;
	}

	return l;
}

long long first( long long N ) {
	return N / power(10, length(N)-1);
}

long long middle( long long N ) {
	return (N - first(N) * power(10, length(N)-1)) / 10 + 1;
}

long long nways( int N ) {
	long long res = 0;

	res = min(9, N);
	res += min(N,99) / 11;

	if( length(N) > 2 ) {
		int i;

		for( i = 3; i < length(N); i++ )
			res += 9 * power(10, i-2);

		for( i = 1; i < first(N); i++ )
			res += power(10, length(N)-2);

		res += middle(N);
		
		int last = N % 10;
		if( first(N) > last ) res--;
	}

	return res;
}

int main(int argc, char *argv[]) {
	long long L, R;
	scanf("%lld %lld", &L, &R);

	printf("%lld\n",nways(R) - nways(L-1));

	return 0;
}
