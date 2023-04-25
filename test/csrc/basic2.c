

#include <stdlib.h>


int main() {

	char some_array[5] = {1,2,3,4,5};
	char *bad_array = calloc(10, sizeof(char));
	
	int this_is_an_index = 0;

	char x = some_array[this_is_an_index];
	char y = some_array[this_is_an_index];

	char z = x + y;

	char secret = bad_array[z];

	return 0;
}

