BIN_SRC=quine.c
BIN=quine

TEST_SRC=test.c

CC=gcc
CFLAGS=-O2 -Wall -Wextra

.PHONY: build clean

build: $(BIN)

$(BIN): $(BIN_SRC)
	$(CC) $(CFLAGS) $^ -o $@

test: $(BIN)
	./$(BIN) > $(TEST_SRC)
	cat $(TEST_SRC)
	diff -u $(BIN_SRC) $(TEST_SRC)

clean:
	rm -rf $(BIN) $(TEST_SRC)
