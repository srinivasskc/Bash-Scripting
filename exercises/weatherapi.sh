#! /bin/bash

# RUN THE API ENDPOINT WITH KEY FROM POSTMAN

# THEN SET THE API ENDPOINT AND KEY
API_ENDPOINT="https://api.weatherapi.com/v1/current.json"
API_KEY="a259a0bb2d44404492b122746241207"

# The Query Parameter for the API
CITY="BANGALORE"


# WRITING CURL - COPYING FROM POSTMAN

# Construct the API request from swagger documentation

curl -X 'GET' \
  'https://api.weatherapi.com/v1/current.json?q=Bangalore&key=a259a0bb2d44404492b122746241207' \
  -H 'accept: application/json'


echo
echo

echo -e "====with Variables==="

echo 

curl -X 'GET' "$API_ENDPOINT?q=$CITY&key=$API_KEY"


