#! /bin/bash
## ETJAKEOC YouTube Downloader Script - Clean Old Videos section

root_directory="/STORAGE/YOUTUBE"
num_files_to_keep=10

# Iterate through each channel folder
for channel_folder in "$root_directory"/*; do
    # Check if it's a directory
    if [ -d "$channel_folder" ]; then
        # Get the list of video files in the channel folder
        video_files=()
        while IFS= read -r -d '' file; do
            video_files+=("$file")
        done < <(find "$channel_folder" -maxdepth 1 -name "*.mkv" -print0 | sort -z)

        # Calculate the number of files to delete
        num_files_to_delete=$(( ${#video_files[@]} - num_files_to_keep ))

        # Delete the oldest files if necessary
        if [ $num_files_to_delete -gt 0 ]; then
            files_to_delete=("${video_files[@]:0:num_files_to_delete}")
            for file_path in "${files_to_delete[@]}"; do
                rm "$file_path"
                echo "Deleted file: $file_path"
            done
        fi
    fi
done

echo "Cleanup completed."
