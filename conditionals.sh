#! /bin/bash

# If Statement

num=10

if [ $num -eq 10 ]
then
    echo "Match"
fi


# More than 1 conditions
num1=5
if [ $num1 -eq 10 ]
then 
    echo "Match"
else
    echo "No Match"
fi



# More than 2 conditions
num2=11

if [ $num2 -gt 10 ]
then    
    echo "Greater"
elif [ $num2 -lt 10 ]
then 
    echo "Less Than"
else
    echo "Matches"
fi
