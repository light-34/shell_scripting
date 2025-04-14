#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status
trap 'echo "An error occurred. Exiting..."; exit 1;' ERR  # Handle errors gracefully

# Function to display usage information
if [ "$#" -ne 2 ]; then  # "$#" checks the number of arguments
    echo "Usage: $0 <source_path> <destination_path>"
    exit 1
fi

# Check if the source and destination paths are provided
source_path="$1"
destination_path="$2"

# Check if the source and destination paths are valid directories
if [ ! -d "$source_path" ]; then
    echo "Source path does not exist or is not a directory."
    exit 1
fi

# Check if the destination path exists, if not create it
if [ ! -d "$destination_path" ]; then # -d checks if the path is a directory
    echo "Destination path does not exist or is not a directory."
    echo "Creating destination directory..."
    mkdir -p "$destination_path" || { echo "Failed to create destination directory." exit 1; }
fi

# Copy files from source to destination
cp -r "$source_path"/* "$destination_path" || { echo "Failed to copy files." exit 1; }
