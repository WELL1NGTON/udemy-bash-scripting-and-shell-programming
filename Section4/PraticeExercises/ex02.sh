#!/bin/bash

file_count() {
  local FILES=$(ls -al $1 | wc -l)
  echo "${1}:"
  echo "    $(($FILES - 3))" # Subtracting 3 to remove the first line of ls, ".." and "."
}

file_count /etc
file_count /var
file_count /usr/bin

file_count ~
file_count $HOME
file_count /etc
