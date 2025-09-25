#!/bin/bash

PERSON1=$1
PERSON2=$2

echo "$PERSON1: Hi $PERSON2, How are you?"
echo "$PERSON2: Hi $PERSON1, I am fine, What about you?"
echo "$PERSON1: I am fine $PERSON2, what are you learning"
echo "$PERSON2: I am learning shell scripting"

# sh 04-variables.sh Rahul Tony
# We will pass the arguments to the script when we are running the script
# $1 variable will hold the first argument passed
# $2 variable will hold the second argument passed
# These are called positional parameters
# $1=Rahul, $2=Tony
# If you donot pass any thing it will execute without displaying the values