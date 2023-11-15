#include<iostream>
#include<cstring>
#include<cstdio>
using namespace std;
int main() {
	int n;
	while (cin >> n) {
		int t = 1, count = 0, x = -0XFFFFFFF;
		while (x != 1) {
			if (t % 2 != 0)
				t = (t + 1) / 2 + n;
			else
				t /= 2;
			x = t;
			count++;
		}
		count++; 
		cout << count  << endl;
	}
}
