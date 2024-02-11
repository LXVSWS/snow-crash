#include <fcntl.h>
#include <unistd.h>

int main(int argc, char **argv) {
	if (argc == 2) {
		int fd;
		int bytes_read;
		char buffer[25];
		fd = open(argv[1], O_RDONLY);
		bytes_read = read(fd, buffer, 25);
		for (int i = 0 ; i < 25 ; ++i) {
			char c = buffer[i] - i;
			write(1, &c, 1);
		}
		char nl = '\n';
		write(1, &nl, 1);
		close(fd);
	}
	return 0;
}
