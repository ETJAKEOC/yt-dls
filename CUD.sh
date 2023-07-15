#!/bin/bash
## Reuploaded/duplicate videos cleanup script for ETJAKEOC youtube downloader.
## Generated using ChatGPT 3.5-Turbo.

# Set the root directory where YouTube videos are stored
root_dir="/STORAGE/MEDIA/YOUTUBE"

# Function to extract the video ID from a file name
extract_video_id() {
  local filename="$1"
  local regex='\[([^]]+)\]'
  if [[ $filename =~ $regex ]]; then
    echo "${BASH_REMATCH[1]}"
  fi
}

# Loop through all subdirectories in the root directory
for dir in "$root_dir"/*; do
  if [[ -d "$dir" ]]; then
    # Associative array to store video IDs and their corresponding modification timestamps
    declare -A video_timestamps

    # Loop through all files in the current directory
    for file in "$dir"/*; do
      if [[ -f "$file" ]]; then
        # Extract the video ID from the file name
        video_id=$(extract_video_id "$(basename "$file")")

        # Get the modification timestamp of the current file
        timestamp=$(stat -c %Y "$file")

        # Check if the video ID already exists in the array
        if [[ -n ${video_timestamps[$video_id]} ]]; then
          # Get the modification timestamp of the existing file
          existing_timestamp=${video_timestamps[$video_id]}

          # Compare the modification timestamps of the two files
          if [[ "$timestamp" -lt "$existing_timestamp" ]]; then
            # Remove the current file
            rm -f "$file"
          else
            # Remove the older file
            rm -f "${video_files[$video_id]}"
            # Update the array with the current file and timestamp
            video_files[$video_id]="$file"
            video_timestamps[$video_id]="$timestamp"
          fi
        else
          # Add the video ID, file name, and timestamp to the arrays
          video_files[$video_id]="$file"
          video_timestamps[$video_id]="$timestamp"
        fi
      fi
    done
  fi
done
