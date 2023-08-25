#! /bin/bash
## ETJAKEOC YouTube Downloader Script

## SEPARATE SCRIPT TO BE RUN FOR THE PROBLEM CHANNELS THAT WOULD OOM THE SYSTEM

## Set PATH variable, so yt-dlp knows where to find phantomJS, if installed.
PATH=/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download up to 1 video, per channel, at full quality HD, with chapter data appened, and sponsor segments removed.
yt='/STORAGE/MEDIA/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/MEDIA/YOUTUBE' # Where the YouTube script directory is.
source $yts/SOURCE.rc
play="--no-playlist --playlist-end 1"
dlp_yt="yt-dlp $emb $qual $down $spon $play"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' flags we defined up above.

cleanup="rm -f *.temp.* *.json *.meta .webp"
# This variable makes cleanup occur after downloading.

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cleanup &\

cd $yt/MF/ && $dlp_yt https://www.youtube.com/c/UndecidedMF/videos && $cleanup &\
