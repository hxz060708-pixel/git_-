CC ?= gcc
CFLAGS = -Wall -Wextra -Iinc

APP = build/app
TEST = build/test_utils

SRC = $(wildcard src/*.c)
TEST_SRC = $(wildcard tests/*.c)

.PHONY: all build test clean

all: build

build: $(APP)

$(APP): $(SRC)
	mkdir -p build
	$(CC) $(CFLAGS) $(SRC) -o $@

test: $(TEST)
	./$(TEST)

$(TEST): $(TEST_SRC) src/utils.c
	mkdir -p build
	$(CC) $(CFLAGS) $(TEST_SRC) src/utils.c -o $@

clean:
	rm -rf build
