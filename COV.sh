#!/bin/bash
# ETJAKEOC YouTube cleanup script
# Keeps only the N newest videos per channel and removes all related files.
set -euo pipefail

yt_dir="/YOUTUBE"
keep_count=3
dry_run=true   # set to false to actually delete

for channel in "$yt_dir"/*; do
    [[ -d "$channel" ]] || continue

    case "$(basename "$channel")" in
        MINECRAFT|UNCAT|SPACE)
            echo "Skipping directory: $channel"
            continue
            ;;
    esac

    # Find .mkv files (newest first). Use null delimiters to be safe with funky names.
    mapfile -d $'\0' -t videos_sorted < <(
        find "$channel" -maxdepth 1 -type f -name "*.mkv" -printf "%T@ %p\0" \
        | sort -z -rn \
        | awk -v RS='\0' '{ $1=""; sub(/^ /,""); print }' ORS='\0'
    )

    # If not enough videos, continue
    if (( ${#videos_sorted[@]} <= keep_count )); then
        # echo "Not enough videos in $(basename "$channel")"
        continue
    fi

    # Delete everything older than the newest keep_count .mkv files
    for (( i=keep_count; i<${#videos_sorted[@]}; i++ )); do
        video="${videos_sorted[$i]}"
        # basename of the file
        filename="$(basename -- "$video")"

        # remove final extension (only one), then take the last '.'-separated token as ID
        name_noext="${filename%.*}"
        id="${name_noext##*.}"

        if [[ -z "$id" || "$id" == "$name_noext" ]]; then
            echo "⚠️  Couldn't parse ID from filename: $filename — skipping"
            continue
        fi

        echo "Processing old video: $filename  (ID=$id)"
        # List matched files
        if $dry_run; then
            echo "DRY RUN: Would delete the following in $channel:"
            find "$channel" -maxdepth 1 -type f -name "*$id*" -print
            echo "----"
        else
            find "$channel" -maxdepth 1 -type f -name "*$id*" -print -exec rm -v -- {} +
        fi
    done
done