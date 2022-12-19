#! /bin/bash
## ETJAKEOC YouTube Downloader Script

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download up to 10 videos, at full quality HD, with chapter data appened, and sponsor segments removed.

yt='/M/YOUTUBE' # Where the YouTube main directory is.
qual="(bv*[vcodec~='^((he|a)vc|h26[45])']+ba)/(bv*+ba/b)" # Tells yt-dlp that we want the highest quality video.

dlp_yt="yt-dlp --no-playlist --playlist-end 10 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' flags we defined up above.

cleanup='rm -f *.temp.* *.json *.meta' # This variable makes cleanup occur after downloading.
cov="ls --color=none ./ | tail -n +11 | xargs -d '\n' rm --" # This variable removes the oldest videos past the download limit.

## Change into the YouTube directory, and begin our log, starting with when the command first executed.
## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

## Example provided below for reference and cloning. (Sometimes, '/c/' must be replaced with '/user/'.)
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/c/CHANNEL_ID/videos && $cleanup && $cov

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cleanup && $cov &\

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cleanup && $cov &\

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos && $cleanup && $cov &\

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos && $cleanup && $cov &\

wait

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cleanup && $cov &\

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos && $cleanup && $cov &\

cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/videos && $cleanup && $cov &\

cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos && $cleanup && $cov &\

wait

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/videos && $cleanup && $cov &\

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cleanup && $cov &\

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/c/IGP/videos && $cleanup && $cov &\

cd $yt/MF/ && $dlp_yt https://www.youtube.com/c/UndecidedMF/videos && $cleanup && $cov &\

wait

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/videos && $cleanup && $cov &\

cd $yt/MWTB/ && $dlp_yt https://www.youtube.com/c/@Mrwhosetheboss/videos && $cleanup && $cov &\

cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos && $cleanup && $cov &\

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cleanup && $cov &\

wait

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cleanup && $cov &\

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cleanup && $cov &\

cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos && $cleanup && $cov &\

cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos && $cleanup && $cov &\

wait

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup && $cov &\

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cleanup && $cov

wait

## Change back into the main YouTube directory and echos a timestamp into a log file, telling us how long the script ran for.

echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
