#! /bin/bash


#  Conditional Operator: AND
num1=6

if [ $num1 -gt 5 ] && [ $num1 -lt 10 ]
then
echo "Number is within the range"
else
echo    "Number is not within the range"
fi


num2=6
if [ $num2 -gt 10 ] || [ $num2 -lt 5 ]
then 
echo "Number is within the range"
else
echo "Number is not within the range"
fi
