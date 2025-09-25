#!/bin/bash

# To execute a command in shell script and store the output of that command in a variable
#Syntax - VAR_NAME=$(command)

# Here for example we are taking, we need to print total time of script execution

START_TIME=$(date +%s) # Here we using date command to show the time in seconds
echo "My name is Rahul Sai"
echo "My age is 21"
echo "I am learning Shell script"

END_TIME=$(date +%s)

#For doing arthimetic operations we should mention them in () here
TOTAL_TIME=$(($END_TIME-$START_TIME))

# $(()) - Inside () does the arithmetic operation
#  $() - Outside gets the output of the operation

echo "Script executed in $TOTAL_TIME"