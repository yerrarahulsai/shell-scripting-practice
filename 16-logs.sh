#!/bin/bash

# In shell scripts, logs are just messages, your script saves to show what it’s doing while it runs

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

if [ $USERID -ne 0 ]; then
    echo -e "$R Error $N: Please run with root privilege"
    exit 1
fi

mkdir -p $LOGS_FOLDER
echo "Script started executing at $(date)" | tee -a $LOG_FILE   
# Echo prints the statements on the screen to append the same output to the log file we use tee command
# tee writes output to our terminal and to a file

validate(){
    if [$1 -ne 0 ]; then
        echo -e "Error: Installing $2 is $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "Installing $2 is $G SUCCESS $N" | tee -a $LOG_FILE
    fi
}

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    validate $? "Mysql"
else
    echo -e "MySQL is already installed...$Y skipping $N" | tee -a $LOG_FILE
fi

dnf list installed nodejs &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nodejs -y &>>$LOG_FILE
    validate $? "NodeJs"
else
    echo -e "NodeJs is already installed...$Y skipping $N" | tee -a $LOG_FILE
fi