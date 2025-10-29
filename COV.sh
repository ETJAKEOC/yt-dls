#!/bin/bash
# ETJAKEOC YouTube cleanup script

yt_dir="/MEDIA/YOUTUBE"
keep_count=3

for channel in "$yt_dir"/*; do
    if [[ -d "$channel" ]]; then
        # Skip certain directories
        case "$(basename "$channel")" in
            MINECRAFT|UNCAT|SPACE)
                echo "Skipping directory: $channel"
                continue
                ;;
        esac

        # Get video files sorted by modification time (newest first)
        mapfile -t videos_sorted < <(
            find "$channel" -maxdepth 1 -type f -name "*.mkv" -printf "%T@ %p\n" | sort -nr | cut -d' ' -f2-
        )

        # If fewer than keep_count, nothing to delete
        if (( ${#videos_sorted[@]} <= keep_count )); then
            continue
        fi

        # Delete everything older than the last keep_count videos
        for (( i=keep_count; i<${#videos_sorted[@]}; i++ )); do
            video="${videos_sorted[$i]}"
            base="${video%.*}"  # strip extension

            # Delete video + all sidecar files
            for f in "$base".*; do
                if [[ -f "$f" ]]; then
                    rm "$f"
                    echo "Deleted: $f"
                fi
            done
        done
    fi
done
