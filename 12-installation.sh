#!/bin/bash

#We will install mysql client and output the message wheather installed successfully or not

#Algorihm:
#  Check if the user has root access or not
#  If root access is there proceed
# `Otherwise stop and tell them to run with root access
# `Install mysql (dnf install mysql -y)
# `Checks the exit status of this command
# `If 0 we print success, else we print not success

#How to know wheather the current user is root user or not
# We can check using id command
# If id is 0, then it is root user or else not

USERID=$(id -u)  # Executes the command and assigns it to the variable

if [ $USERID -ne 0 ]; then
    echo "ERROR: Please run this script with root privilege"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR: Installing MYSQL failed"
    exit 1
else
    echo "Installed Successfully"
fi

# If error arises in script, then we stop the execution there itself
# 0 - is for success (script ended with a success)
# So if we type exit 1 - that means script ended with an error