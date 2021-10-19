#!/bin/bash

FILE_DIR_NAME=$1

if [ -f $FILE_DIR_NAME ]; then
  exit 0
elif [ -d $FILE_DIR_NAME ]; then
  exit 1
else
  exit 2
fi
