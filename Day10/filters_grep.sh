#! /bin/bash

# using grep in a script
logfile="./examplelogfile.log"
pattern=read_physical_netif

# checking a matching pattern
echo "--Print if pattern is matched or not--"
echo
if grep -q $pattern $logfile
then
    echo "Match Found"
else
    echo "Match Not Found"
fi

echo

: '
The command grep -q $pattern $logfile is a combination of several components:

grep: a command-line utility that searches for patterns in one or more files.
-q: a flag that tells grep to be quiet or silent. When -q is used, grep will not print any output to the console, 
but instead return an exit status indicating whether a match was found or not.
$pattern: a variable that contains the pattern or regular expression to search for in the file.
$logfile: a variable that contains the name of the log file to search.
When you run this command, grep will search for the pattern specified in $pattern in the file specified in $logfile. 
If the pattern is found, grep will return an exit status of 0 (success). If the pattern is not found, 
grep will return an exit status of 1 (failure).
'

# Printing a line not matching the matched pattern
echo "---print not matching lines---"
grep -v $pattern $logfile
echo

: '
-v: a flag that tells grep to invert its output. Instead of printing lines that match the pattern,
grep will print lines that do not match the pattern.
'

# Printing a line ignoring case in pattern
echo "----ignore case---"
echo
grep -i $pattern $logfile
echo

: '
-i: a flag that tells grep to perform a case-insensitive search. 
This means that grep will treat uppercase and lowercase letters as equivalent, so it will match patterns regardless of the case.
'

# Printing a line after matched pattern
echo "--Printing line after matched pattern--"
echo
grep -A1 $pattern $logfile
echo

: '
-A1: a flag that tells grep to print the matched line and the following line (i.e., one line after the match).
The A stands for "after", and the number specifies how many lines to print after the match.
'

# Output
: '
03/22 08:51:06 TRACE  :...read_physical_netif: Home list entries returned = 7
03/22 08:51:06 INFO   :...read_physical_netif: index #0, interface VLINK1 has address 129.1.1.1, ifidx 0
03/22 08:51:06 INFO   :...read_physical_netif: index #1, interface TR1 has address 9.37.65.139, ifidx 1
03/22 08:51:06 INFO   :...read_physical_netif: index #2, interface LINK11 has address 9.67.100.1, ifidx 2
03/22 08:51:06 INFO   :...read_physical_netif: index #3, interface LINK12 has address 9.67.101.1, ifidx 3
03/22 08:51:06 INFO   :...read_physical_netif: index #4, interface CTCD0 has address 9.67.116.98, ifidx 4
03/22 08:51:06 INFO   :...read_physical_netif: index #5, interface CTCD2 has address 9.67.117.98, ifidx 5
03/22 08:51:06 INFO   :...read_physical_netif: index #6, interface LOOPBACK has address 127.0.0.1, ifidx 0
03/22 08:51:06 INFO   :....mailslot_create: creating mailslot for timer
'


# Printing a line before matched pattern
echo "--Printing line before matched pattern--"
echo
grep -B1 $pattern $logfile
echo


: '
-B1: a flag that tells grep to print the line before the match and the matched line. 
The B stands for "before", and the number specifies how many lines to print before the match.
'

# Output
: '
 04 
03/22 08:51:06 TRACE  :...read_physical_netif: Home list entries returned = 7
03/22 08:51:06 INFO   :...read_physical_netif: index #0, interface VLINK1 has address 129.1.1.1, ifidx 0
03/22 08:51:06 INFO   :...read_physical_netif: index #1, interface TR1 has address 9.37.65.139, ifidx 1
03/22 08:51:06 INFO   :...read_physical_netif: index #2, interface LINK11 has address 9.67.100.1, ifidx 2
03/22 08:51:06 INFO   :...read_physical_netif: index #3, interface LINK12 has address 9.67.101.1, ifidx 3
03/22 08:51:06 INFO   :...read_physical_netif: index #4, interface CTCD0 has address 9.67.116.98, ifidx 4
03/22 08:51:06 INFO   :...read_physical_netif: index #5, interface CTCD2 has address 9.67.117.98, ifidx 5
03/22 08:51:06 INFO   :...read_physical_netif: index #6, interface LOOPBACK has address 127.0.0.1, ifidx 0
'



# Printing a line before matched pattern
echo "--Printing line before and after matched pattern--"
echo
grep -B1 -A1 $pattern $logfile
echo


# Output
: '
 04 
03/22 08:51:06 TRACE  :...read_physical_netif: Home list entries returned = 7
03/22 08:51:06 INFO   :...read_physical_netif: index #0, interface VLINK1 has address 129.1.1.1, ifidx 0
03/22 08:51:06 INFO   :...read_physical_netif: index #1, interface TR1 has address 9.37.65.139, ifidx 1
03/22 08:51:06 INFO   :...read_physical_netif: index #2, interface LINK11 has address 9.67.100.1, ifidx 2
03/22 08:51:06 INFO   :...read_physical_netif: index #3, interface LINK12 has address 9.67.101.1, ifidx 3
03/22 08:51:06 INFO   :...read_physical_netif: index #4, interface CTCD0 has address 9.67.116.98, ifidx 4
03/22 08:51:06 INFO   :...read_physical_netif: index #5, interface CTCD2 has address 9.67.117.98, ifidx 5
03/22 08:51:06 INFO   :...read_physical_netif: index #6, interface LOOPBACK has address 127.0.0.1, ifidx 0
03/22 08:51:06 INFO   :....mailslot_create: creating mailslot for timer
'