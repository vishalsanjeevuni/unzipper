#!/bin/bash

# Check if source directory is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 /path/to/folder/containing/zipfiles"
  exit 1
fi

SOURCE_DIR="$1"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Directory $SOURCE_DIR does not exist"
  exit 1
fi

# Navigate to source directory
cd "$SOURCE_DIR"

# Find all zip files and extract each one to its own folder
for zipfile in *.zip; do
  # Skip if no zip files are found
  [ -f "$zipfile" ] || { echo "No zip files found in $SOURCE_DIR"; exit 0; }
  
  # Get the name without .zip extension for the folder name
  foldername="${zipfile%.zip}"
  
  # Create folder if it doesn't exist
  mkdir -p "$foldername"
  
  echo "Extracting $zipfile to folder $foldername..."
  
  # Extract zip file to the created folder using ditto
  ditto -x -k "$zipfile" "$foldername"
  
  # Check if extraction was successful
  if [ $? -eq 0 ]; then
    echo "Successfully extracted $zipfile"
  else
    echo "Failed to extract $zipfile. Possible reasons:"
    echo "1. The zip file might be corrupted"
    echo "2. The zip file might be password protected"
    echo "3. There might be permission issues"
    echo "4. The zip file might be using an unsupported compression method"
  fi
done

echo "All zip files have been processed."