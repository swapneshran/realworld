#!/bin/bash

# pass the previous step output to script

echo "Hello World"
echo "running npm install"

npm install  | tee install.txt

echo "printing the install script"

cat install.txt


echo "printing the install script"


# echo "running test"

# npm test

# parse it using exit code, grep.


# Tail 150 lines


# Send to MS teams

