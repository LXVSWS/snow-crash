#include <unistd.h>
#include <string.h>
#include <stdlib.h>

int main(int ac, char **av) {
	if (ac > 2) {
		int key = atoi(av[2]);
		for (unsigned long i = 0 ; i < strlen(av[1]) ; ++i) {
			char letter = av[1][i];
			for (short j = 0 ; j < key ; ++j) {
				if (letter > 'z')
					letter = 'a';
				++letter;
				if (letter == '{')
					letter = 'a';
			}
			write(1, &letter, 1);
		}
		write(1, "\n", 1);
	}
}
