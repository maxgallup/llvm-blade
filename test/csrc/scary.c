#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main() {
	srand(time(0));
	int a[5] = {0,1,2,3,4};
	int i = rand() % 5;
	int j = rand() % 5;
	
	int waist = i + j;

	int x = waist + 3;
	int y = waist + 5;
	
	int res = a[x];
	int res2 = a[y];
	
	return res + res2;
}
