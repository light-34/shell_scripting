#!/bin/bash

# First while-loop example
count=1
while [ $count -le 5 ]
do
  echo "Count is: $count"
  ((count++)) 
  # The ((...)) syntax is used for arithmetic operations in bash
  # and allows for incrementing variables using the ++ operator.
done
echo "Finished counting to 5."

# Second while-loop example
# The while-loop continues until the end of the file is reached.
file="source.txt"
while IFS= read -r line || [ -n "$line" ] # || [ -n "$line" ]: Ensures the loop processes the last line even if it doesn’t end with a newline. The -n checks if the line variable is non-empty.
do
  echo "Line: $line"
done < "$file" # Redirects the file as input to the while loop.
# The IFS variable is set to read the file line by line.

# Third while-loop example
input=""
while [ "$input" != "exit" ]
do
  read -rp "Enter a command (type 'exit' to quit):" input
  if [ "$input" != "exit" ]; then
    echo "You entered: $input"
  fi
done
echo "Exiting the loop."

# Fourth while-loop example
ct=4
while [ $ct -gt 0 ]
do
  echo "Countdown: $ct"
  ((ct--))
done
echo "Blast off!"
# The while-loop continues until the variable 'ct' is greater than 0.