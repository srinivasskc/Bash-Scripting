#! /bin/bash

# Define a Simple Function
function my_func1()
{
    echo "My simple function"
}

my_func1

# Output"
: '
./functions.sh
My simple function
' 

# Defining the function with args
function my_func2(){
    echo "My function with arg $1"
}

my_func2 "first argument"

# Output
: '
My function with arg first argument
'

# Defining the function with multiple args
function my_func3()
{
    echo "My function with multiple args $1 $2 $3 $4"
}

my_func3 "first" "second" "third" "fourth"
: '
My function with multiple args first second third fourth
'


# Functions returning the value
function sum(){
    sum=$(expr $1 + $2)
    echo $sum
}

addition=$(sum 1 2)
echo "addition is: $addition"

# addition is: 3


# Subtraction
function sub(){
    sub=$(expr $1 - $2)
    echo $sub
}

subtraction=$(sub 4 2)
echo "subtraction is: $subtraction"

# subtraction is: 2
