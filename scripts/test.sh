#!/bin/sh
# Compile and run the unit tests.
set -e

CC=${CC:-gcc}
CFLAGS="-Wall -Wextra -Iinc"

mkdir -p build
$CC $CFLAGS tests/test_utils.c src/utils.c -o build/test_utils
./build/test_utils
echo "all tests passed"
