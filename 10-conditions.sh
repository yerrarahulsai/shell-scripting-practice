#!/bin/bash

# To check weather a number is greater that 10
read -p "Enter you number: " NUMBER

if[ $NUMBER -gt 10]; then
    echo "Given number is greater than 10 "
else
    echo "Given number is less than 10"
fi

#Operators which work only on integers
# -lt = Less than
# -gt = Greater than
# -eq = equal to
# -ne = not equal to
# -le = Less than or equal to
# -ge = grater than or equal to