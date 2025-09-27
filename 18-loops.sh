#!/bin/bash

USERID=$(id -u)

R="\E[31m"
G="\E[32m"
Y="\E[33m"
N="\E[0m"

LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1 )
LOG_FILE=$LOG_FOLDER/$SCRIPT_NAME

mkdir -p $LOG_FOLDER
echo "Script started at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "Error: Run with root privelege"
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2...$R Failure $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "Installing $2...$G Success $N" | tee -a $LOG_FILE
    fi
}

# $@ - All arguments
# for package in $@
# do
#     echo "Name is: $package"
# done

for package in $@
do
    dnf list installed $package &>>$LOG_FILE
    # If 0 installed, not zero - not installed
    if [ $? -ne 0 ]; then
        dnf install $package -y &>>$LOG_FILE
        validate $? "$package"
    else
        echo "$package already installed...$Y Skipping $N" | tee -a $LOG_FILE
    fi
done
