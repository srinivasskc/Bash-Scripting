#! /bin/bash


# for each i , print i variable value.


echo "for loop"

for i in 1 2 3 4 5
do
    echo $i
done


# range operator

echo "for loop using range operator"

for i in {1..5}
do 
    echo $i
done

# sequence of numbers and increment by 2.

echo "sequence and increment numbers and end by"

for i in $(seq 1 2 12)
do
    echo $i 
done
