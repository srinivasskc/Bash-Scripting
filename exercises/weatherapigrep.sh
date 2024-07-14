#! /bin/bash

# RUN THE API ENDPOINT WITH KEY FROM POSTMAN

# THEN SET THE API ENDPOINT AND KEY
API_ENDPOINT="https://api.weatherapi.com/v1/current.json"
API_KEY="a259a0bb2d44404492b122746241207"

# The Query Parameter for the API
CITY="BANGALORE"

# Construct the API request

JSON_RESPONSE=$(curl -s -X 'GET' "$API_ENDPOINT?q=$CITY&key=$API_KEY")

echo $JSON_RESPONSE


# Task 1: fetch the value of temp_c from the response.


# fetch the output value from JSON Response to temp_c and then cut by delimiter value ":" and fetch the second field value. 
echo "$JSON_RESPONSE" | grep -oE '"temp_c":(\d+\.\d+)' | cut -d':' -f2

# Passing the response of temp_c value to output.txt
echo "$JSON_RESPONSE" | grep -oE '"temp_c":(\d+\.\d+)' | cut -d':' -f2 > output.txt



#Explanation of work:
: '
curl → | → grep

curl outputs the JSON response to JSON_RESPONSE variable.
| pipes the output to grep
grep extracts the temperature value from the JSON response

-o :  print only the matched text
E means: extended regular expression.


As Value: 27.2

Regex: /(\d+\.\d+)/
\d = integers i.e decimal.
\d+ = there can be one or more integers : ie. 27
. = dot
but we need to have \. to escape and then perl compiler will understand there is a dot.
we need to close the regex in paranthesis and then it should have / forward slash at start and end


The grep will extract "temp_c: 27.2" from JSON_Response.

Now, curl → | → grep | → cut

The cut command is used to extract specific parts (fields) from a line of text or a file.

-d':' -> option specifies the delimiter character used to split the input. In this case, were using a colon (:) as the delimiter.

-f2: The -f option specifies which field (column) to extract. Here, were extracting the second field (after splitting the line using the colon delimiter).


Finally, curl → | → grep | → cut > output.txt

'



