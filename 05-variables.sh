#!/bin/bash

#Taking input from the user
#read command helps user to provide input to the script
read NAME
echo "My name is $NAME"

#Here we have some options

# -p to display a promt message to the user
read -p "Enter you age: " AGE
echo "My age is $AGE"

# -s to not display the user input in the screen
read -sp "Enter your password: " PASS
echo "My Password is $PASS"   #Usually we will not print password(For practice purpose)


