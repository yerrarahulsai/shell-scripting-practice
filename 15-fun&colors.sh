#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Run script with root privilege"
    exit 1
fi

validate(){
    if [$1 -ne 0 ]; then
        echo -e "Error: Installing $2 is $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 is $G SUCCESS $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    validate $? "Mysql"
else
    echo -e "MySQL is already installed...$Y skipping $N"
fi

dnf list installed nodejs
if [ $? -ne 0 ]; then
    dnf install nodejs -y
    validate $? "NodeJs"
else
    echo -e "NodeJs is already installed...$Y skipping $N"
fi