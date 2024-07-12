#! /bin/bash

echo $0   # Script File Name
echo $1
echo $1 $2 $3

: '
When executing the script, we need to provide the arguments 
like ./stdio.sh one two three.
Even if the statement is echo $1 - $1 indicates first argument.
when we execute ./stdio.sh one two three,
the result will display only "one"
So, args and code should match '


# args in the form of array

args=("$@")
echo ${args[0]} ${args[1]}

# when ./stdio.sh one two three is executed
# for args: one two will be printed

echo $@
echo $#

: '
$@ will print all args passed.
$# will print the length of args
'

