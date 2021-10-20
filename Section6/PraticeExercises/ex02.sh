#!/bin/bash

# Exercise 2:
#
# Write a script that renames files based on the file extension. The script
# should prompt the user for a file extension. Next, it should ask the user what
# prefix to prepend to the file name(s). By default the prefix should be the
# current date in YYYY­MM­DD format. So, if the user simply presses enter the date
# will be used. Otherwise, whatever the user entered will be used as the prefix.
# Next, it should display the original file name and the new name of the file.
# Finally, it should rename the file.
#
# Example output 1:
#
# Please enter a file extension: jpg Please enter a file prefix: (Press ENTER
# for 2015­08­10). vacation Renaming mycat.jpg to vacation­mycat.jpg.
#
# Example output 2:
#
# Please enter a file extension: jpg Please enter a file prefix: (Press ENTER
# for 2015­08­10). Renaming mycat.jpg to 2015­08­10­mycat.jpg.

read -p "Please enter a file extension: " FILE_EXTENSION

DEFAULT_PREFIX=$(date +%Y%M%d)
FILES_FOUND=false

if [ -z $FILE_EXTENSION ]; then
  echo "no extensions entered!"
  exit 1
fi

read -p "Please enter a file prefix: (Press ENTER for ${DEFAULT_PREFIX}). " PREFIX

if [ -z $PREFIX ]; then
  PREFIX=$DEFAULT_PREFIX
fi

# without nullglob it would enter in the for loop even if no file is found
shopt -s nullglob

for FILE in *${FILE_EXTENSION}; do
  FILES_FOUND=true
  echo "Rneaming $FILE to ${PREFIX}${FILE}"
  mv $FILE ${PREFIX}${FILE}
done

shopt -u nullglob

if ! $FILES_FOUND; then
  echo "No ${FILE_EXTENSION} files found"
  exit 1
fi

exit 0
