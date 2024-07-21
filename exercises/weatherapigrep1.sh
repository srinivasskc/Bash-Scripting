#! /bin/bash

# RUN THE API ENDPOINT WITH KEY FROM POSTMAN

# THEN SET THE API ENDPOINT AND KEY
API_ENDPOINT="https://api.weatherapi.com/v1/current.json"
API_KEY="a259a0bb2d44404492b122746241207"

# The Query Parameter for the API
CITY="New%20York"
LANG="es"

# Construct the API request

JSON_RESPONSE=$(curl -s -X 'GET' "$API_ENDPOINT?q=$CITY&key=$API_KEY&lang=$LANG")

echo $LANG

echo $JSON_RESPONSE


# Task 1: fetch the value of condition: text from the response.


# fetch the output value from JSON Response to temp_c and then cut by delimiter value ":" and fetch the second field value. 
# echo "$JSON_RESPONSE" | grep -oE '"text":"[^"]*' | grep -o '[^"]*$'
echo "$JSON_RESPONSE" | grep -oE '"text":"[^"]*' | cut -d':' -f2 | grep -o '[^"]*$'
# Output: Removing the double quotes.

# Passing the response of temp_c value to output.txt
echo "$JSON_RESPONSE" | grep -oE '"text":"[^"]*' | grep -o '[^"]*$' > output1.txt



#Explanation of work:
: '
curl → | → grep
curl outputs the JSON response to JSON_RESPONSE variable.
| pipes the output to grep
grep extracts the temperature value from the JSON response

-o :  print only the matched text
E means: extended regular expression.


As it is "name": "New York" - Regex: "[^"]*'
# This part captures any sequence of characters including none that is enclosed within double quotes. 
# The [^"]* portion matches any characters except double quotes.

# grep -o command to strip away the double-quotes and return just the value.

