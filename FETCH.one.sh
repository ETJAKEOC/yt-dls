#! /bin/bash
## ETJAKEOC YouTube Downloader Script

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download up to 1 video, per channel, at full quality HD, with chapter data appened, and sponsor segments removed.
## This script is intended to be run daily, our hourly if you prefer, to reduce load on the machine, while keeping up to date hopefully.

yt='/M/YOUTUBE' # Where the YouTube main directory is.
qual="(bv*[vcodec~='^((he|a)vc|h26[45])']+ba)/(bv*+ba/b)" # Tells yt-dlp that we want the highest quality video.

dlp_yt="yt-dlp --no-playlist --playlist-end 1 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' flags we defined up above.

cleanup='rm -f *.temp.* *.json *.meta' # This variable makes cleanup occur after downloading.

## Change into the YouTube directory, and begin our log, starting with when the command first executed.
## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

## Example provided below for reference and cloning. (Sometimes, '/c/' must be replaced with '/user/'.)
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/c/CHANNEL_ID/videos && $cleanup

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cleanup &\

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cleanup &\

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos && $cleanup &\

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos && $cleanup &\

wait

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cleanup &\

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos && $cleanup &\

cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/videos && $cleanup &\

cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos && $cleanup &\

wait

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/videos && $cleanup &\

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cleanup &\

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/c/IGP/videos && $cleanup &\

cd $yt/MF/ && $dlp_yt https://www.youtube.com/c/UndecidedMF/videos && $cleanup &\

wait

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/videos && $cleanup &\

cd $yt/MWTB/ && $dlp_yt https://www.youtube.com/c/@Mrwhosetheboss/videos && $cleanup &\

cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos && $cleanup &\

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cleanup &\

wait

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cleanup &\

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cleanup &\

cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos && $cleanup &\

cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos && $cleanup &\

wait

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup &\

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cleanup &\

cd $yt/TS/ && $dlp_yt https://www.youtube.com/c/@TomScottGo/videos && $cleanup

wait

## Change back into the main YouTube directory and echos a timestamp into a log file, telling us how long the script ran for.

echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
