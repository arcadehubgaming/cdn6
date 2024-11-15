#!/bin/bash

# Define the source directory (the folder you cloned)
SOURCE_DIR="3kh0-Assets"  # Change this to the correct folder if necessary

# Define the target directory where folders will be copied
TARGET_DIR="cdn6"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Read the folder names from cdn3.txt and copy them
while IFS= read -r folder; do
  # Check if the folder exists in the source directory
  if [ -d "$SOURCE_DIR/$folder" ]; then
    echo "Copying $folder to $TARGET_DIR..."
    cp -r "$SOURCE_DIR/$folder" "$TARGET_DIR/"
  else
    echo "Folder $folder not found in $SOURCE_DIR"
  fi
done < cdn6.txt

echo "Folder copying completed."
