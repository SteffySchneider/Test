#!/bin/bash

# This script is another test for ShellCheck

# Correct usage: Declare variables with local keyword in functions
greet() {
  local name=$1
  echo "Hello, $name!"
}

greet "World"

# Incorrect usage: Use of deprecated backticks for command substitution
HOSTNAME=`hostname`

# Correct usage: Double-quote variable expansions
echo "This script is running on host: $HOSTNAME"

# Incorrect usage: Looping over ls output (ShellCheck will flag this)
for file in $(ls *.txt); do
  echo "Processing $file"
done

# Correct usage: Use $(...) for command substitution and double-quote the result
for file in "$(ls *.txt)"; do
  echo "Processing $file"
done

# Incorrect usage: Potentially unsafe file path handling
FILE_PATH="/tmp/unsafe path.txt"
echo "Processing $FILE_PATH" >> /tmp/output.log

# Incorrect usage: Overriding a positional parameter (ShellCheck will flag this)
set -- "new positional parameter"
echo "$1"

echo "Another test script completed."
