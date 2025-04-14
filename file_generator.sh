#!/bin/bash

echo "Entering file name"
read -r FILE_NAME

touch "${FILE_NAME}.txt"
echo "File ${FILE_NAME}.txt created successfully."
echo "Enter the number of lines to write to the file:"
read -r NUM_LINES
echo "Enter the content to write to the file:"
read -r CONTENT
for ((i=1; i<=NUM_LINES; i++))
do
  echo "${CONTENT}" >> "${FILE_NAME}.txt"
done
echo "${NUM_LINES} lines of content written to ${FILE_NAME}.txt."
echo "Do you want to read the file? (yes/no)"
read -r READ_FILE
if [ "${READ_FILE}" == "yes" ]; then
  cat "${FILE_NAME}.txt"
else
  echo "Exiting without reading the file."
fi
echo "Do you want to delete the file? (yes/no)"
read -r DELETE_FILE
if [ "${DELETE_FILE}" == "yes" ]; then
  rm "${FILE_NAME}.txt"
  echo "File ${FILE_NAME}.txt deleted successfully."
else
  echo "File not deleted."
fi
