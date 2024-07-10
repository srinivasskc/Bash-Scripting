#! /bin/bash

str="Hello World"

echo $str

# Length of the String

echo "Length of the String: "
echo ${#str}

# string concatenation

read str1
read str2

newstr=$str1$str2

echo "Concatenated String is $newstr"

# Compare Two Strings

if [ $str1 == $str2 ]
then
    echo "Match"
else
    echo "No Match"
fi


