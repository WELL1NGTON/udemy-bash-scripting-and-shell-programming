#!/bin/bash

# Exercise 2:
#
# Modify the previous script so that it uses a logging function. Additionally
# tag each syslog message with "randomly" and include the process ID. Generate 3
# random numbers.

logger2000() {
  local MSG=$@

  if [ -z $MSG ]; then
    return 1
  fi

  logger -i -t randomly -p user.info $MSG

  return 0
}

NUMBER=$RANDOM

echo $NUMBER

logger2000 $NUMBER

exit 0
