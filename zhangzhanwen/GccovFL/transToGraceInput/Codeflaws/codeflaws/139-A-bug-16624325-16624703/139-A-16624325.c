#include <stdio.h>
#include <stdlib.h>
#include<string.h>

int sum[8];
int main(int argc, char *argv[])
{
	int n, w;
	scanf("%d", &n);
	for (int i = 1; i < 8; i++)
	{
		scanf("%d", &w);
		sum[i] = sum[i - 1] + w;
	}
	n %= sum[7];
	for (int i = 1; i < 8; i++)
	{
		if (sum[i] >= n)
		{
			printf("%d\n", i);
			return 0;
		}
	}
}
