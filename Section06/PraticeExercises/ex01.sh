#!/bin/bash

# Exercise 1:
#
# Write a shell script that renames all files in the current directory that end
# in ".jpg" to begin with today's date in the following format: YYYY­MM­DD. For
# example, if a picture of my cat was in the current directory and today was
# October 31, 2016 it would change name from "mycat.jpg" to "2016­10­31­mycat.jpg".
#
# Hint: Look at the format options to the date command.
#
# For "extra credit" make sure to gracefully handle instances where there are no
# ".jpg" files in the current directory. (Hint: Man bash and read the section on
# the nullglob option.)

FILES_FOUND=false

# without nullglob it would enter in the for loop even if no file is found
shopt -s nullglob

for FILE in *.jpg; do
  FILES_FOUND=true
  mv $FILE "$(date +%Y%M%d)$FILE"
done

shopt -u nullglob

if ! $FILES_FOUND; then
  echo "No jpg files found"
  exit 1
fi

exit 0
