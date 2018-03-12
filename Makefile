ITERS=4

BIN_SRC=quine.c
BIN=quine

TEST_SRC=test.c
TEST_BIN=test

CC=gcc
CFLAGS=-O2 -Wall -Wextra

.PHONY: build clean

build: $(BIN)

$(BIN): $(BIN_SRC)
	$(CC) $(CFLAGS) $^ -o $@

test: build
	./test.sh $(BIN) $(TEST_BIN) $(TEST_SRC) $(ITERS)
	diff -u $(BIN_SRC) $(TEST_SRC)

testbin:
	$(CC) $(CFLAGS) $(TEST_SRC) -o $(TEST_BIN)

clean:
	rm -rf $(BIN) $(TEST_SRC) $(TEST_BIN)
