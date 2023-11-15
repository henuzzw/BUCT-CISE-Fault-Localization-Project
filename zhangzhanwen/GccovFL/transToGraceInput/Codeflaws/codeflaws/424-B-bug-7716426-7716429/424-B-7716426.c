#include <stdio.h>

void A(double ZA[], int ZB[], int a, int b)
{
    int c, d, e, f;
	double g;

	if (a < b) {
		c = (b - a + 1) / 2 + a;
		g = ZA[c];
		ZA[c] = ZA[b];
		ZA[b] = g;
		d = ZB[c];
		ZB[c] = ZB[b];
		ZB[b] = d;
		f = a - 1;
		for (e = a; e < b; ++e)
			if (ZA[e] < ZA[b]) {
				f += 1;
				g = ZA[f];
				ZA[f] = ZA[e];
				ZA[e] = g;
				d = ZB[f];
				ZB[f] = ZB[e];
				ZB[e] = d;
			}
		f += 1;
		g = ZA[f];
		ZA[f] = ZA[b];
		ZA[b] = g;
		d = ZB[f];
		ZB[f] = ZB[b];
		ZB[b] = d;
		A(ZA, ZB, a, f - 1);
		A(ZA, ZB, f + 1, b);
	}
}

int main(int argc, char *argv[])
{
		int a, b, c, d, e;
		double ZA[1000];
		int ZB[1000];
		
		scanf("%d%d", &a, &b);
		for (c = 0; c < a; ++c) {
			scanf("%d%d%d", &d, &e, ZB + c);
			ZA[c] = sqrt(d * d + e * e);
		}
		A(ZA, ZB, 0, a - 1);
		for (c = 0; c < a; ++c)
			printf("%d %.6f\n", c, ZA[c]);
		for (c = 0; c < a && b < 1000000; ++c)
			b += ZB[c];
		if (b > 999999)
			printf("%.6f\n", ZA[c - 1]);
		else
			printf("-1\n");
			
		return 0;
}