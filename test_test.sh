#!/bin/bash

# This is a test script for ShellCheck

# Correct usage: Double-quote to prevent globbing and word splitting
echo "This is a properly quoted string."

# Incorrect usage: Unquoted variable (ShellCheck will flag this)
FILENAME=example.txt
echo File is $FILENAME

# Correct usage: Use $(...) instead of backticks
DATE=$(date +%Y-%m-%d)
echo "Today's date is $DATE."

# Incorrect usage: Useless use of echo (ShellCheck will flag this)
echo `echo Hello`

# Correct usage: Use command substitution directly
MESSAGE=$(echo "Hello, World!")
echo "$MESSAGE"

# Incorrect usage: Test statement without quotes (ShellCheck will flag this)
if [ $FILENAME == "example.txt" ]; then
  echo "File is example.txt"
fi

# This is a comment explaining the next line
# ShellCheck will not flag comments
echo "Script completed."
