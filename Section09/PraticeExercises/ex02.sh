#!/bin/bash

# Exercise 2:
#
# Write a shell script that asks the user for the number of lines they would
# like to display from the /etc/passwd file and display those lines.
#
# Example output:
#
# How many lines of /etc/passwd would you like to see? 3
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin

COUNT=1

read -p "How many lines would you like to see from /etc/passwd? " LINES

while read LINE; do
  if [ $LINES -lt $COUNT ]; then
    break
  fi
  echo $LINE
  ((COUNT++))
done </etc/passwd
