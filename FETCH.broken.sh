#! /bin/bash
## ETJAKEOC YouTube Downloader Script
## SEPARATE SCRIPT TO BE RUN FOR THE PROBLEM CHANNELS THAT WOULD OOM THE SYSTEM

yt='/MEDIA/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.
source $yts/SOURCE.rc # Source dlp_yt variables.

cd $yt/Great\ Scott/ && dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cleanup &\

cd $yt/MF/ && dlp_yt https://www.youtube.com/c/UndecidedMF/videos && $cleanup