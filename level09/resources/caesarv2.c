#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
	if (argc == 2) {
		char *hex = argv[1];
		int len = strlen(hex);
		unsigned int count = 0;

		for (unsigned int i = 0 ; i < len ; i += 2) {
			char pair[3];
			pair[0] = hex[i];
			pair[1] = hex[i + 1];
			pair[2] = '\0';
			unsigned int value = strtol(pair, NULL, 16);
			char c = value - count;
			++count;
			printf("%c", c);
		}
		printf("\n");
	}
	return 0;
}
