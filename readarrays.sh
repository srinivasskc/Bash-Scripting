#! /bin/bash

# -a is for array of variables.
# to display names entered we need to do array of variable[0] and etc.

echo "Enter names: "
read -a names
echo "Names entered:  ${names[0]}, ${names[1]}"


# using Built in Command "REPLY"
# The default variable for read to store the result in is $REPLY

echo "Enter name: "
read
echo "Name entered:  $REPLY"
