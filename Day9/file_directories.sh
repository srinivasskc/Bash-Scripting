#! /bin/bash

# Check if directory exists.

echo "Enter Directory"
read dir

if [ -d $dir ]
then 
    echo "Directory exists"
else
    echo "Directory does not exist"
fi

: '
Srinivass-MacBook-Pro:ShellScripting srinivas.kadiyala$ ./file_directories.sh 
Enter Directory
exercise
Directory exists

As exercise folder is part of ShellScripting folder.
'

# Check if directory exists.

echo "Enter filename"
read fname

if [ -f $fname ]
then 
    echo "file exists"
else
    echo "file does not exist"
fi

: '
Enter filename
whileloop.sh
file exists
'


# Adding data to file

echo "Enter filename"
read fname

if [ -f $fname ]
then 
    echo "enter file text"
    read filetext
    echo $filetext >> $fname 
else
    echo "file does not exist"
fi

: '
First create a file: newfile.txt with read and execute permissions.

Then ./file_directories.sh:

Enter filename
newfile.txt
enter file text
new person added to the file 
Srinivass-MacBook-Pro:ShellScripting srinivas.kadiyala$ cat newfile.txt 
new person added to the file
'


# Reading file line by line.

echo "Enter filename"
read fname

if [ -f $fname ]
then 
    while IFS= read -r line
    do
        echo $line 
    done < $fname
else
    echo "file does not exist"
fi

: '
Enter filename
newfile.txt
new person added to the file
2nd line
3rd line
4th line
5th line
6th line
'


# Delete the file.

echo "Enter filename"
read fname

if [ -f $fname ]
then 
    rm $fname
else
    echo "file does not exist"
fi
