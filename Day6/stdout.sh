#! /bin/bash

# standard output - stdout

ls -l


# standard error - stderr

lsl -l



# Exporting the std out to file.
# the file descriptor for out is 1.

ls -1  1>fileout.txt



# Exporting the std error to file.
# the file descriptor for error is 2.

lsl -1  2>fileerr.txt


# bash script to ouput the output and error from a single file to another file.
bash stdout_single.sh > file.out 2>&1
# In this both stdout and stderrr will be redirected to the file.out
# To view the file -> cat file.out



