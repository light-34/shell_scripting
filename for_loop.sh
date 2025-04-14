#!/bin/bash


# First syntax of for loop
for i in {1..5}
do
  echo "Iteration on number : $i"
done

echo "Number Loop completed."

# Second syntax of for loop
for i in Audi Toyota Kia
do
    echo "Car $i"
done
echo "Car Loop completed."

# Third syntax of for loop
for((i=1; i<=5; i++))
do
  echo "Iteration on number : $i"
done
echo "C-style syntax Loop completed."

# Fourth syntax of for loop
for file in ./*
do
  if [ -f "$file" ]; then # -f checks if it's a file
    echo "File: $file"
  fi
  if [ -d "$file" ]; then # -d checks if it's a directory
    echo "Directory: $file"
  fi
done
echo "File Loop completed."
