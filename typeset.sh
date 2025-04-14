#!/opt/homebrew/bin/bash

function f1() {
  echo "Function 1"
  typeset x
  x=7
  y=8
}

x=1
y=2
echo "x: $x"
echo "y: $y"
f1
echo "x: $x" # x is changed
echo "y: $y" # y is not changed