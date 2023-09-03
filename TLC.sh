#! /bin/bash
## ETJAKEOC YouTube Downloader Script
PATH=/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH # Set PATH variable, so yt-dlp knows where to find phantomJS, if installed.
yt='/STORAGE/MEDIA/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.
source $yts/SOURCE.rc # Source the "dlp_yt" program and attach our playlist number, set below.
play="--no-playlist --playlist-end 1"
dlp_yt="yt-dlp $emb $qual $down $spon $play"
cleanup="rm -f *.temp.* *.json *.meta .webp" # This variable makes cleanup occur after downloading.

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup
