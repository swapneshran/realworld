#!/bin/bash

# pass the previous step output to script

echo "Hello World"
echo "running npm install --silent"

npm install 2>&1 | tee -a log.txt


echo "printing the install script"

echo "printing the install script"



echo "printing the install script"

echo "running test"

npm test | tee -a log.txt

