#!/bin/bash

read -p "type the path to a file or directory: " FILE_NAME

if [ ! -e $FILE_NAME ]; then
  echo "File not found"
elif [ -f $FILE_NAME ]; then
  echo "It is a regular file"
elif [ -d $FILE_NAME ]; then
  echo "It is a directory"
else
  echo "It is some other type of file"
fi

ls -l $FILE_NAME
