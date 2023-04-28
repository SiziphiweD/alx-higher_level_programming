#!/bin/bash

# check if URL is provided as argument
if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# send request and capture response headers and body
response=$(curl -sSL -D - -o /dev/null "$1")

# extract content length from response headers
content_length=$(echo "$response" | grep -i "Content-Length:" | awk '{print $2}' | tr -d '\r')

# display content length in bytes
echo "$content_length"

