#include <stdio.h>
#include <stdlib.h>
#include <time.h>



int main() {
	srand(time(0));
	int some_number = rand() % 5;
	int a[5] = {0,1,2,3,4};
	int x = a[some_number];
	int y = a[x];
	return y;
}

