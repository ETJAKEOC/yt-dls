#!/bin/bash
# ETJAKEOC YouTube cleanup script
# Keeps only the N newest videos per channel and removes all related files.

set -euo pipefail

yt_dir="/YOUTUBE"
keep_count=5
dry_run=false

for channel in "$yt_dir"/*; do
    [[ -d "$channel" ]] || continue

    case "$(basename "$channel")" in
        MINECRAFT|UNCAT|SPACE)
            echo "Skipping directory: $channel"
            continue
            ;;
    esac

    echo "Processing channel: $(basename "$channel")"

    declare -A video_dates=()

    # 🔍 STEP 1: Collect ALL video IDs from any file
    while IFS= read -r -d '' file; do
        fname="$(basename -- "$file")"

        if [[ "$fname" =~ \[([A-Za-z0-9_-]{11})\] ]]; then
            id="${BASH_REMATCH[1]}"

            # Skip if already indexed
            [[ -n "${video_dates[$id]+x}" ]] && continue

            # Try to find matching info.json
            json=$(find "$channel" -maxdepth 1 -type f -name "*\[$id\].info.json" | head -n1)

            if [[ -n "$json" && -f "$json" ]]; then
                upload_date=$(jq -r '.upload_date // empty' "$json")
            else
                upload_date=""
            fi

            # Fallback: use file modification time
            if [[ -z "$upload_date" ]]; then
                upload_date="00000000"
            fi

            video_dates["$id"]="$upload_date"
        fi
    done < <(find "$channel" -maxdepth 1 -type f -print0)

    # 🧪 Debug (optional, but useful)
    echo "Indexed videos: ${#video_dates[@]}"
    echo "MP4 count: $(find "$channel" -maxdepth 1 -name '*.mp4' | wc -l)"

    # Skip if not enough videos
    if (( ${#video_dates[@]} <= keep_count )); then
        echo "Nothing to clean (<= $keep_count videos)"
        unset video_dates
        continue
    fi

    # 🔢 STEP 2: Sort IDs by date (newest first)
    mapfile -t sorted_ids < <(
        for id in "${!video_dates[@]}"; do
            echo "${video_dates[$id]} $id"
        done | sort -r | awk '{print $2}'
    )

    # 🧹 STEP 3: Delete everything after newest N
    for (( i=keep_count; i<${#sorted_ids[@]}; i++ )); do
        id="${sorted_ids[$i]}"
        echo "Old video ID: $id"

        mapfile -t files_to_delete < <(
            find "$channel" -maxdepth 1 -type f -name "*\[$id\].*"
        )

        for video in "${files_to_delete[@]}"; do
            if [[ $dry_run == true ]]; then
                echo "DRY RUN: Would delete $video"
                continue
            fi

            # Skip immutable files
            if [[ $(lsattr "$video" 2>/dev/null | cut -c5) == "i" ]]; then
                echo "Skipping immutable: $(basename "$video")"
                continue
            fi

            rm -v -- "$video"
        done

        echo "----"
    done

    unset video_dates
done
