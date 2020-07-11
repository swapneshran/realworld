#!/bin/bash

# pass the previous step output to script

echo "Hello World"
echo "running npm install"

npm_install= $(npm install)
echo "$npm_install"

echo "running test"

npm_test=$(npm test)

echo "$npm_test"

# parse it using exit code, grep.


# Tail 150 lines


# Send to MS teams

