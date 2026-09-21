#include <stdio.h>
#include "utils.h"
#include "config.h"
//这是分支22
int main(void) {
    printf("hello from %s\n", PROJECT_NAME);
    printf("add(3, 4) = %d\n", add(3, 4));
    printf("square(5) = %d\n", square(5));
    return 0;
}
