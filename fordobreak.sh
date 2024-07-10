#! /bin/bash


echo  "This is for-do-if-break"

# All values till 5 will be printed from 1,2,3,4,5

for i in {1..10}

do
    if [ $i -gt 5 ]
    then 
        break
    fi
    echo $i
done
