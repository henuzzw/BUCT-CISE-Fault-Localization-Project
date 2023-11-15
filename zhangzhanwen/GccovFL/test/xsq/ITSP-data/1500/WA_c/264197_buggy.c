#include <iostream>
using namespace std;

int main()
{
	int testNum;
	cin >> testNum;

	for (int sample = 1; sample <= testNum; sample++)
	{
		long w = 0;
		int n;
		cin >> n;
		for (int k = 1; k <= n; k++)
		{
			w += k * ((1+(k+1)) * (k+1) / 2)+1;
		}
		cout << sample << " " << n << " " << w << endl;
	}

	return 0;
}
