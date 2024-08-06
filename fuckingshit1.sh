#!/bin/bash
# This script contains intentional errors
# Function to greet the user
greet_user() {
  if [ -z "$1" ]
    echo "No argument provided"
  else
    echo "Hello, $1!"
  fi
}
# Function to calculate the factorial of a number
factorial() {
  if [ "$1" -lt 0 ]; then
    echo "Error: Negative number"
    return 1
  fi
  result=1
  for (( i=1; i<=$1; i++ )); do
    result=$((result * i))
  done
  echo "Factorial of $1 is $result"
}
# Main script
greet_user "$1"
factorial "$2"
