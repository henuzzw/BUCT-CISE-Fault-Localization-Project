#include<stdio.h>
int main()
{
    int n, m, i, sum, x, p = 0, j = 1;
    scanf("%d", &n);
    for(p = 0; p < n; p++)
    {
        scanf("%d", &x);
        for(sum = 0, i = 1; i <= x; i++)
            sum += i * (i + 1) * (i + 2) / 2;

        printf("%d %d %d\n", j, x, sum);
        j++;
    }
    return 0;
}
while ( cin >> A){
    int a = 1,i =1;
    while(a != (A+1)){
        if(a > A + 1){  //a >= A+1
            a *= 2;
            i ++;
}}}
