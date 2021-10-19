#!/bin/bash

file_count() {
  local FILES=$(ls -al $HOME | wc -l)
  echo $(($FILES - 3)) # Subtracting 3 to remove the first line of ls, ".." and "."
}

file_count
