#! /bin/bash

echo "until loop"

i=0

until [ $i -le 10 ]
do
    echo $i
    ((i++))
done