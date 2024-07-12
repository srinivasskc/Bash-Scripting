#! /bin/bash

num1=10
num2=5

# Arithmetic Operations

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

# with expr 

echo "==== with expr ===="

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )


# Hexadecimal to Numbers
read hex
echo -n "Hexadecimal number for $hex is: "
echo "obase=10;ibase=16; $hex" | bc

echo -n "Hexadecimal number for $hex is: "
echo "ibase=16; $hex" | bc

echo -n  "Hexadecimal Number is: " 
echo $(( 16#FFFF ))
