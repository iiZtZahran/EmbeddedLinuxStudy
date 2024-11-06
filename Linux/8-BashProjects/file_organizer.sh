#!/usr/bin/bash

# Check if the passed path is empty 
if [ -z "$1" ]; then
    echo "path is not provided correctly"
    exit 1
fi

# Assign the directory path to a variable
declare DIR="$1"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Directory not found: $DIR"
    exit 1
fi

# Change to the specified directory or Exit if it failed 
cd "$DIR" || exit

# Loop through all files in the directory
for FILE in *; do
    # Skip if it's a directory
    if [ -d "$FILE" ]; then
        continue
    fi

    # Get the file extension
    declare EXT="${FILE##*.}"

    # Handle files with no extension
    if [ "$EXT" = "$FILE" ]; then
        EXT="misc"
    fi

    # Create a directory for the file extension if it doesn't exist
    mkdir  "$EXT"

    # Move the file into the corresponding directory
    mv "$FILE" "$EXT/"
done

echo "Files organized successfully."

#tree "$DIR"
