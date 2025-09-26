#!/bin/bash

#A function is a reusable block of code that you can call by name instead of rewriting the same commands multiple times

#Now imagine we need to install mysql,nodejs and nginx

USERID=$(id -u)

if [ $USERID -nq 0 ]; then
    echo "Error: Run this script with root privilege"
    exit 1;
fi

# Here we write validate function to check wheather the command runs or not
# Function receive inputs through arguments
validate(){
    if [ $1 -ne 0 ]; then
        echo "Error: $2 Not installed successfully"
        exit 1
    else
        echo "$2 Installed successfully" 
    fi
}

# we call by func_name

dnf install mysql -y
validate $? "MySQL"

dnf install nodejs -y
validate $? "Nodejs"

dnf install nginx -y
validate $? "Nginx"