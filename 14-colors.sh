#!/bin/bash

# We use colors for redability purpose, differentation purpose, visibilty purpose

# "\e[31m"  - Red color, e for enable
echo -e "\e[31m Hello World"  # -e option consider the option after giving the backslash

# 30 - Black
# 31 - Red
# 32 - Green
# 33 - Yellow
# 34 - Blue
# 35 - Violet
# 36 - Light blue
# 37 - White

#Everytime using these in echo statement will be difficult so we create variables for them

G="\e[32m"
NORMAL="\e[0m"  # reset to default terminal color

echo -e "$G Hello from Script"
echo "Tony Stark"
# Here if you write another normal echo statement
# echo "Hi" - This will also print in green color
# So to overcome this we use the command like this

echo -e "$G Hello Colors $NORMAL"
echo "Iron man"

#We type NORMAL to reset to default terminal color