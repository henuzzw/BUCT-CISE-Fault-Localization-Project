#include<stdio.h>
int main(int argc, char *argv[])
{
    //freopen("in.txt", "r", stdin);

    long long n;
    scanf("%lld", &n);

    long long unsigned l, r;
    scanf("%I64u%I64u", &l, &r);
    long long unsigned ml = l, mr = r;
    long long ans = 1, i = 1;
    n--;

    while(n--) {
        i++;
        scanf("%I64u%I64u", &l, &r);

        if(l<=ml && r>=mr ) {
            ml = l;
            mr = r;
            // current ta ans;
            ans = i;
        }
        else {
            ans = -1;
            if(ml>l) ml = l;
            if(r>mr) mr = r;
        }

        //printf("%lld %lld || %I64u %I64u || %I64u %I64u\n", i, ans, ml, mr, l, r);
    }

    printf("%lld\n", ans);

    return 0;
}
