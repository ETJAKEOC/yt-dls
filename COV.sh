#!/bin/bash
# ETJAKEOC YouTube cleanup script.
# Generated with the assistance of an AI language model (ChatGPT by OpenAI).

# Youtube directory.
yt_dir="/MEDIA/YOUTUBE"

# Loop through each channel directory
for channel in "$yt_dir"/*; do
    if [[ -d "$channel" ]]; then
        # Check if the directory name is "MINECRAFT", "SPACE", or "UNCAT"
        if [[ "$(basename "$channel")" == "MINECRAFT" || "$(basename "$channel")" == "UNCAT" || "$(basename "$channel")" == "SPACE" ]]; then
            echo "Skipping directory: $channel"
            continue
        fi

        # Get the list of video files in the channel directory and sort them by modification time
        mapfile -t videos_sorted < <(find "$channel" -maxdepth 1 -type f -name "*.mkv" -exec stat -c "%Y %n" {} + | sort -nr | cut -d ' ' -f2-)

        # Determine the number of videos to keep
        keep_count=3

        # Remove excess videos beyond the keep count
        for (( i=keep_count; i<${#videos_sorted[@]}; i++ )); do
            # Use double quotes around file paths to handle spaces correctly
            rm "${videos_sorted[$i]}"
            echo "Deleted: ${videos_sorted[$i]}"
        done
    fi
done
