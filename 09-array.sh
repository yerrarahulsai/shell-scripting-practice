#!/bin/bash

# Array is storing of multiple values under same variable name

#Declaring of an array
NAMES=("Rahul" "Tony" "Stark")

#Printing all the elements of the array
echo "All names: ${NAMES[@]}" #   @ - for all

# We can access specific element by mentioning their index
# Index starts from 0
echo "First Name in the Array: ${NAMES[0]}"
echo "Second Name in the Array: ${NAMES[1]}"
echo "Third Name in the Array: ${NAMES[2]}"

# Here size is 3, Max index = 2
# If you try to access the array index which is not available, script will execute without throwing the error