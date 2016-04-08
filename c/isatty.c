#include <stdlib.h>
main (int argc, char **argv)
{
    if (argc > 1)
        exit(!isatty(atoi(argv[1])));
    exit(-1);
}
