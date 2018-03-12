#!/usr/bin/env bash

# 1: original bin
# 2: test binary
# 3: test src
# 4: number of iterations

./$1 > $3
cat $3

for i in $(seq 2 $4); do
  make testbin
  ./$2 > $3
  cat $3
done
