#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int p, q, n, i, sum = 0;
    scanf("%d", &n);
    for (i = 0; i < n; i++){
        scanf("%d %d", &p, &q);
        if ((q-p) >= 2) sum++;
    }
    printf("%d\n", sum);
    return 0;
}
