#! /bin/bash

echo "This is do-loop-with-if-continue"

# here, if the condition is met, then skip that condition value and continue the for loop.

for i in {1..10}

do
    if [ $i -eq 3 ] || [ $i -eq 5 ]
    then    
        continue
    fi
    echo $i
done
