#include <stdlib.h>
#include <stdio.h>

int main() {
    setuid(0);
    system("diskutil mount 0E239BC6-F960-3107-89CF-1C97F78BB46B");
}
