#! /bin/bash

echo "Enter the name: "
read name
echo "Entered name is : $name"


# Taking multiple values from input

echo "Enter the names: "
read name1 name2 name3
echo "Names:  $name1, $name2,  $name3"

# As previously the read command was asking to enter the value in new line. 
# -p  prompt allows user to enter in same line

read -p "username: "  user


# Prompt with Hidden Input (Password):
# To read a password securely (without displaying it), use the -s option:

read -sp "password: " password

echo

echo "Username is  $user"
echo "Password is $password"

