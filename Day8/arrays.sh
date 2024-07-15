#! /bin/bash

myarr=('bike', 'car', 'van', 'bus')
# There should be a space between each value after comma's

echo "${myarr[@]}"
# listing all array values.
# {bike,car,van,bus}

echo "${myarr[0]}"
# This lists the first value from the array list. - bike,

echo "${!myarr[@]}"
# This lists the indexes of the array values. 0,1,2,3

echo "${#myarr[@]}"
# This lists the length of the array - 4

# removing the value from array list.
unset myarr[2]
echo "${myarr[@]}"
# bike, car, bus

# setting new value to the array value.
myarr[2]="truck,"
echo "${myarr[@]}"
# bike, car, truck, bus