#!/opt/homebrew/bin/bash

declare -l lower="HELLO"
declare -u upper="hello"
declare -a array=("one" "two" "three") # -a for array
declare -A assoc_array=( # -A for associative array
  [key1]="value1"
  [key2]="value2"
)
declare -i integer=42 # -i for integer
declare -r readonly_var="This is read-only" # -r for read-only
declare -p lower # -p prints the variable and its attributes

echo "Lower: $lower"
echo "Upper: $upper"
echo "Readonly: $readonly_var"
readonly_var="New value" # This will not change the value
echo "Readonly after attempt to change: $readonly_var"
echo "Integer: $integer"
array[0]="one_one" # This will change the first element of the array
echo "Array: ${array[*]}"
echo "Associative Array: ${assoc_array[key1]} ${assoc_array[key2]}"
echo "Associative Array keys: ${!assoc_array[*]}"