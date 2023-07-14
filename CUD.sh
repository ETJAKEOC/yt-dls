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
    # Array to store video IDs and the corresponding file names
    video_ids=()
    video_files=()

    # Loop through all files in the current directory
    for file in "$dir"/*; do
      if [[ -f "$file" ]]; then
        # Extract the video ID from the file name
        video_id=$(extract_video_id "$(basename "$file")")

        # Check if the video ID already exists in the array
        if [[ " ${video_ids[@]} " =~ " $video_id " ]]; then
          # Find the index of the duplicate video ID
          index=$(printf "%s\n" "${video_ids[@]}" | grep -n "$video_id" | cut -d':' -f1)

          # Compare the modification times of the two files
          if [[ "$file" -ot "${video_files[$index]}" ]]; then
            # Remove the current file
            rm -f "$file"
          else
            # Remove the older file
            rm -f "${video_files[$index]}"
            # Update the array with the current file
            video_files[$index]="$file"
          fi
        else
          # Add the video ID and file name to the arrays
          video_ids+=("$video_id")
          video_files+=("$file")
        fi
      fi
    done
  fi
done
