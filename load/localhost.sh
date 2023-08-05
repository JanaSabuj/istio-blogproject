#!/bin/bash

# Function to make the request to localhost:80
function make_request() {
    curl -s http://localhost:80 | head -n1 
}

# Loop to continuously make requests
while true; do
    make_request
    sleep 1  # Adjust the sleep duration as needed to control the request rate
done
