#!/bin/bash

# Exercise 3:
#
# Write a shell script that that allows a user to select an action from the
# menu. The actions are to show the disk usage, show the uptime on the system,
# and show the users that are logged into the system. Tell the user to enter q
# to quit. Display "Goodbye!" just before the script exits.
#
# If the user enters anything other than 1,2,3,or q,tell them that it is an
# "Invalid option."
#
# You can show the disk usage by using the df command. To show the uptime, use
# the uptime command. To show the users logged into the system, use the who
# command. Print a blank line after the output of each command.
#
# Example output:
#
# 1. Show disk usage.
# 2. Show system uptime.
# 3. Show the users logged into the system.
# What would you like to do? (Enter q to quit.) 2
# 14:59:08up3days, 7:36, 7users, loadaverage:0.13,0.22,0.33
# 1. Show disk usage.
# 2. Show system uptime.
# 3. Show the users logged into the system.
# What would you like to do? (Enter q to quit.) 4
# Invalid option.
# 1. Show disk usage.
# 2. Show system uptime.
# 3. Show the users logged into the system.
# What would you like to do? (Enter q to quit.) q
# Goodbye!

while true; do
  read -p '1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
What would you like to do? (Enter q to quit.) ' RESPONSE
  case $RESPONSE in
  1) df -h -x tmpfs | grep --invert-match "/dev/loop" ;;
  2) uptime ;;
  3) who ;;
  q) echo "Goodbye!" && break ;;
  *) echo "Invalid option." ;;
  esac
  echo ""
done
