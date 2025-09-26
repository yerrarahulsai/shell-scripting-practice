#!/bin/bash

# To determine wheather the number is even or odd
read -p "Enter the number: " NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given number is even"
else
    echo "Given number is odd"
fi