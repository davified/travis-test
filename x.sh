#!/usr/bin/env bash

set -e

num1=0.1
num2=0.000123
if (( $(echo "$num1 > $num2" | bc -l) )); then
  echo "num1 is larger than num2"
else
  echo "num2 is larger than num1"
fi
