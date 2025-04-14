#!/bin/bash

# This script demonstrates the use of if-else statements in bash

# Number to check
number=10
if [ $number -gt 0 ]; then
    echo "$number is positive"
elif [ $number -lt 0 ]; then
    echo "$number is negative"
else
    echo "$number is zero"
fi

# -eq → equal to
# -ne → not equal to
# -gt → greater than
# -lt → less than
# -ge → greater than or equal to
# -le → less than or equal to

# String comparison
string1="hello"
string2="world"
if [ "$string1" == "$string2" ]; then
    echo "$string1 is equal to $string2"
elif [ "$string1" != "$string2" ]; then
    echo "$string1 is not equal to $string2"
else
    echo "Strings are the same"
fi

if [ -z "$string1" ]; then
    echo "String is empty"
elif [ -n "$string1" ]; then
    echo "String is NOT empty"
fi

# = or == → strings are equal
# not equal → !=
# -z → string is empty
# -n → string is NOT empty

# File test operators
file="source.txt"

if [ -e "$file" ]; then
    echo "$file exists"
else
    echo "$file does not exist"
fi

if [ -f "$file" ]; then
    echo "$file is a regular file"
else
    echo "$file is not a regular file"
fi

if [ -x "$file" ]; then
    echo "$file is executable"
else
    echo "$file is not executable"
fi

# -e → exists
# -f → regular file
# -d → directory
# -r → readable
# -w → writable
# -x → executable