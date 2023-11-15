#include <stdio.h>

void A(a, b)
{
	int c;

	printf("%d", a);
	for (c = 0; c < b; ++c)
		printf("0");
	printf("\n");
}

int main(int argc, char *argv[])
{
	int a, b, c;

	scanf("%d%d%d", &a, &b, &c);
	a *= 10;
	if (a == b)
		A(a, c - 1);
	else if (a < b) {
		if (b - a > 9)
			printf("-1\n");
		else
			A(b, c - 1);
	} else {
		if (b - a % b > 9)
			printf("-1\n");
		else
			A(a + b - a % b, c - 1);
	}

	return 0;
}
