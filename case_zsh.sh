#!/bin/zsh


read "val?Enter a number (1-3): " #read val is different than bash

case $val in
  1)
    echo "This is 1"
    ;&
  2)
    echo "This is 2 or fallthrough from 1"
    ;&
  3)
    echo "This is 3 or fallthrough from 2"
    ;;
  *)
    echo "Something else"
    ;;
esac