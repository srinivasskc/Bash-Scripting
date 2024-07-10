#! /bin/bash

ls -l

# Redirect above output to one of the file.

ls -l > myout.txt
# Check the result in "cat myout.txt"


# Add More logs to the Output File.
echo "More Logs" >> myout.txt

# Check the result in "cat myout.txt"
