#! /bin/bash


# while loop from 0 to 10 and increment by 1

echo "while loop"

i=0

while [ $i -le 10 ]
do
    echo $i
    ((i++))
done


# while true loop - this prints infinite loop

echo "while true loop"

j=0
while [ true ]
do
    echo $j
    ((j++))
done

