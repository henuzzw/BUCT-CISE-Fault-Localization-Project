#include <stdio.h>

int main(int argc, char *argv[])
{
	int a, b, c, d, e, f;
	int ZA[4] = {0, 0, 0, 0};
	char ZB[100001];

	scanf("%d%d%d%d%d%s", &a, &b, &c, &d, &e, ZB);
	if (b < d)
		ZA[0] = d - b;
	else if (d < b)
		ZA[2] = b - d;
	if (c < e)
		ZA[3] = e - c;
	else if (e < c)
		ZA[1] = c - e;
	for (f = 0; f < a && (b != d || c != e); ++f)
		if (ZB[f] == 'E' && ZA[0]) {
			ZA[0] -= 1;
			b += 1;
		} else if (ZB[f] == 'S' && ZA[1]) {
			ZA[1] -= 1;
			c -= 1;
		} else if (ZB[f] == 'W' && ZA[2]) {
			ZA[2] -= 1;
			b -= 1;
		} else if (ZB[f] == 'N' && ZA[3]) {
			ZA[3] -= 1;
			c += 1;
		}
	if (f < a)
		printf("%d\n", f);
	else
		printf("-1\n");

	return 0;
}
