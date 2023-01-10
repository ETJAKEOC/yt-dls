#! /bin/bash
## ETJAKEOC YouTube Downloader Script - Clean Old Videos section

## This script is pretty simple to follow. We 'cd' into each folder, and run our little script.
## Our 'cov' script lists all the videos in the directory, with a limitation on what's listed, limiting it to the oldest videos
## that are past out limit, which we set in the 'tail -n +11' section, '+11' meaning that any videos 11 days or older are up first
## for deletion. You can change this variable to whatever you please to keep as many videos as you would like.

yt='/M/YOUTUBE' # Set where the YouTube main directory is.
cov="ls -A --color=none ./ | tail -n +11 | xargs -d '\n' rm --" # This variable removes the oldest videos past the download limit.

cd $yt/Aging\ Wheels/ && $cov

cd $yt/Big\ Clive/ && $cov

cd $yt/BR/ && $cov

cd $yt/CRD/ && $cov

cd $yt/Certifiably\ Ingame/ && $cov

cd $yt/CTT/ && $cov

cd $yt/DT/ && $cov

cd $yt/EE/ && $cov

cd $yt/GSP/ && $cov

cd $yt/Great\ Scott/ && $cov

cd $yt/IGP/ && $cov

cd $yt/MF/ && $cov

cd $yt/MrBallen/ && $cov

cd $yt/MWTB/ && $cov

cd $yt/PE/ && $cov

cd $yt/Qxir/ && $cov

cd $yt/RCE/ && $cov

cd $yt/RMS/ && $cov

cd $yt/TC/ && $cov

cd $yt/Tech\ Ingredients/ && $cov

cd $yt/TLC/ && $cov

cd $yt/TLE/ && $cov

cd $yt/TS/ && $cov
