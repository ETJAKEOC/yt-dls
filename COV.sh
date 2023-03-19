#! /bin/bash
## ETJAKEOC YouTube Downloader Script - Clean Old Videos section

## This script is pretty simple to follow. We 'cd' into each folder, and run our little script.
## Our 'cov' script lists all the videos in the directory, with a limitation on what's listed, limiting it to the oldest videos
## that are past out limit, which we set in the 'tail -n +11' section, '+11' meaning that any videos 11 days or older are up first
## for deletion. You can change this variable to whatever you please to keep as many videos as you would like.

yt='/STORAGE/MEDIA/YOUTUBE' # Set where the YouTube main directory is.
cov="ls -A --color=none ./ | tail -n +11 | xargs -d '\n' rm --" # This variable removes the oldest videos past the download limit.

cd $yt/Aging\ Wheels/ && $cov
wait
cd $yt/Big\ Clive/ && $cov
wait
cd $yt/BR/ && $cov
wait
cd $yt/CRD/ && $cov
wait
cd $yt/Certifiably\ Ingame/ && $cov
wait
cd $yt/CTT/ && $cov
wait
cd $yt/CM/ && $cov
wait
cd $yt/Devyn/ && $cov
wait
cd $yt/DT/ && $cov
wait
cd $yt/EE/ && $cov
wait
cd $yt/EM/ && $cov
wait
cd $yt/GSP/ && $cov
wait
cd $yt/Great\ Scott/ && $cov
wait
cd $yt/KH/ && $cov
wait
cd $yt/LR/ && $cov
wait
cd $yt/MF/ && $cov
wait
cd $yt/MJ/ && $cov
wait
cd $yt/MrBallen/ && $cov
wait
cd $yt/MWTB/ && $cov
wait
cd $yt/PBSST/ && $cov
wait
cd $yt/PE/ && $cov
wait
cd $yt/Qxir/ && $cov
wait
cd $yt/RB/ && $cov
wait
cd $yt/RCE/ && $cov
wait
cd $yt/RMS/ && $cov
wait
cd $yt/TAL/ && $cov
wait
cd $yt/TC/ && $cov
wait
cd $yt/Tech\ Ingredients/ && $cov
wait
cd $yt/TLC/ && $cov
wait
cd $yt/TLE/ && $cov
wait
cd $yt/TS/ && $cov
