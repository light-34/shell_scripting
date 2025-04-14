#!/bin/bash

MY_VARIABLE="Hello! "
echo What is your name?
read -r MY_NAME

echo $MY_VARIABLE $MY_NAME

echo "Now I will generate a file in your name ${MY_NAME}"
touch "${MY_NAME}_file"
