#!/bin/bash -xe

# Exercise 1:
#
# Write a shell script that exit on error and displays commands as they will
# execute, including all expansions and substitutions. Use 3 ls commands in
# your script. Make the first one succeed, the second one fail, and the third
# one succeed. If you are using the proper options, the third ls command will
# not be executed.

ls $HOME
ls $HOME/AAAAAAAAAAAAAAAAAAAAAAAAAAAA
ls $HOME/.local
