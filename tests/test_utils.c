#include <assert.h>
#include "utils.h"

int main(void) {
    assert(add(2, 3) == 5);
    assert(add(-1, 1) == 0);
    assert(square(4) == 16);
    assert(max_int(7, 9) == 9);

    return 0;
}
