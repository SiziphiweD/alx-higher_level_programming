#!/bin/bash
# Sends a GET request to a URL and displays the body of the response

curl -sL "$1" -X GET -w "%{http_code}" -o /dev/null | 
  awk '{if($0 == 200) print $(NF-1)}'

