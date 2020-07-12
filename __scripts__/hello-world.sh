#!/bin/bash

# pass the previous step output to script

echo "Hello World"
echo "running npm install --silent"

npm install 2>&1 | tee -a log.txt


echo "printing the install script"

cat log.txt


echo "printing the install script"

ls -ltra



echo "printing the install script"


# echo "running test"

# npm test

# parse it using exit code, grep.


# Tail 150 lines


# Send to MS teams

