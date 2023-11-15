#include<stdio.h>
int main(int argc, char *argv[])
{
	int i, j, k, n, m[100], r[100];
	double s, d;
	while (scanf("%d", &n) == 1)
	{
		for (i = 0; i < n; i++)
		{
			scanf("%d", &m[i]);
		}
		for (j = 0; j < n; j++)
		{
			scanf("%d", &r[j]);
		}
		s = 0;
		for (i = 1; i <= 1000; i++)
		{
			for (j = 0; j < n; j++)
			{
				if ((i % m[j]) == r[j])

				{
					s++;
					d = i;
					break;
				}
			}
		}
		if (s == 0)
		{
			printf("0.0000\n");
		}
		else
		{
			printf("%0.5lf\n", s / d);
		}
	}
return 0;
}