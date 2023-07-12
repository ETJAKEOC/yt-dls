#!/bin/bash
## Reuploaded/duplicate videos cleanup script for ETJAKEOC youtube downloader.
## Generated using ChatGPT 3.5-Turbo.


# Set the root directory where YouTube videos are stored
root_dir="/STORAGE/MEDIA/YOUTUBE"

# Function to extract the URL from a file name
extract_url() {
  local filename="$1"
  local regex='\[([^\]]+)\]'
  if [[ $filename =~ $regex ]]; then
    echo "${BASH_REMATCH[1]}"
  fi
}

# Loop through all subdirectories in the root directory
for dir in "$root_dir"/*; do
  if [[ -d "$dir" ]]; then
    # Array to store video URLs and their corresponding file names
    declare -A video_urls

    # Loop through all files in the current directory
    for file in "$dir"/*; do
      if [[ -f "$file" ]]; then
        # Extract the URL from the file name
        url=$(extract_url "$(basename "$file")")

        # Check if the URL already exists in the array
        if [[ -n ${video_urls[$url]} ]]; then
          # Compare the modification times of the two files
          if [[ "$file" -ot "${video_urls[$url]}" ]]; then
            # Remove the older file
            rm -f "${video_urls[$url]}"
          else
            # Remove the current file
            rm -f "$file"
          fi
        else
          # Add the URL and file name to the array
          video_urls[$url]="$file"
        fi
      fi
    done
  fi
done
