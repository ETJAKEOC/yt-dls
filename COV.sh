#!/bin/bash
# ETJAKEOC YouTube cleanup script.
# Generated with the assistance of an AI language model (ChatGPT by OpenAI).

# Youtube directory.
yt_dir='/MEDIA/YOUTUBE'

# Loop through each channel directory
for channel in "$yt_dir"/*; do
    if [[ -d "$channel" ]]; then
        # Check if the directory name is "MINECRAFT" or "UNCAT"
        if [[ "$(basename "$channel")" == "MINECRAFT" || "$(basename "$channel")" == "UNCAT" ]]; then
            echo "Skipping directory: $channel"
            continue
        fi

        # Get the list of video files in the channel directory
        videos=("$channel"/*.mkv)

        # Sort the video files by modification time in descending order
        IFS=$'\n' videos_sorted=($(ls -t "${videos[@]}"))

        # Determine the number of videos to keep
        keep_count=5

        # Remove excess videos beyond the keep count
        for (( i=keep_count; i<${#videos_sorted[@]}; i++ )); do
            rm "${videos_sorted[$i]}"
            echo "Deleted: ${videos_sorted[$i]}"
        done
    fi
done