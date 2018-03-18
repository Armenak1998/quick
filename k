#include<iostream>
#include<algorithm>
using namespace std;
void queck(int *a, int n) {
	int x = 0, y = n - 1, i = -1, k;
	if (x >= y)return;
	while (1) {

		if (a[x] < a[y]) {
			if (x != 0) {
				i++;
				if (a[i] > a[x]) {
					k = a[x];
					a[x] = a[i];
					a[i] = k;
				}
			}
		}
		++x;
		if (x == y) {
			i++;
			if (a[i] > a[x]) {
				k = a[x];
				a[x] = a[i];
				a[i] = k;
			}
			queck(a, i);
			queck(a + i + 1, n - i - 1);
			return;
		}

	}
}
int main() {
	int a[10000];
	for (int i = 0; i < 10000; i++)
		a[i] = rand();
	queck(a, 10000);
	for (int i = 0; i < 10000; i++)
		cout << a[i] << " ";
	system("pause");
	return 0;
}
