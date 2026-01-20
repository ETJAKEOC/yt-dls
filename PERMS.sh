#!/bin/bash

for DIR in "/YOUTUBE"; do
    # Fix ownership only if not already jellyfin:jellyfin
    sudo find "$DIR" \( ! -user jellyfin -o ! -group jellyfin \) -print0 | \
        sudo xargs -0 -r chown jellyfin:jellyfin

    # Directories: only chmod 755 if not already
    sudo find "$DIR" -type d ! -perm 775 -print0 | sudo xargs -0 -r chmod 775

    # Files: only chmod 664 if not already
    sudo find "$DIR" -type f ! -perm 664 -print0 | sudo xargs -0 -r chmod 664
done
