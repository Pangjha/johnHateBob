// Pangjha
// lovebob module source code
#include <stdio.h>
#include "lovebob.h"

void express_love(unsigned int howmuch, char *msg) {
	unsigned int i=0U;

	for (;i<howmuch;i++) {
		printf("%s\n", msg);
	}
	return;
}
