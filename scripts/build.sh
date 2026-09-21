#!/bin/sh
# Build the project with gcc.
set -e

CC=${CC:-gcc}
CFLAGS="-Wall -Wextra -Iinc"
OUT="build/app"

mkdir -p build
$CC $CFLAGS src/main.c src/utils.c -o "$OUT"
echo "built: $OUT"
