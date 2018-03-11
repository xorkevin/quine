BIN_SRC=quine.c
BIN=quine

CC=gcc
CFLAGS=-O2 -Wall -Wextra

.PHONY: build clean

build: $(BIN)

$(BIN): $(BIN_SRC)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf $(BIN)
