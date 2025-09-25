#!/bin/bash

#In bash we have special variables
# We won't create these variables

echo "All arguments passed to the script: $@"
echo "Total Number of arguments passed to the script: $#"
echo "Script name: $0" #In this variable script name is stored
echo "Current Directory: $PWD"
echo "Which user running this script: $USER"
echo "Home directory of the user: $HOME"
echo "PID of current script: $$" 

sleep 10 &  #Runs in the background
echo "PID of last background process: $!"
