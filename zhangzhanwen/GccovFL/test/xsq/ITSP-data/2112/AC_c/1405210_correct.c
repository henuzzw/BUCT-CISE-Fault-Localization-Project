#include<iostream>
using namespace std;
void fun(int);

int main()
{
    int N;
    while (cin >> N)
    {
        fun(N);
    }
    return 0;
}

void fun(int N )
{
    int sum = 0;

    for (int i = 1; i <= N; i++)
    {
        int j = i;
        while (0 == j % 5)
        {
            sum++;
            j /= 5;
        }
    }
    cout << sum << endl;
}
