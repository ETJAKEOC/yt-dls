#! /bin/bash
## ETJAKEOC YouTube Downloader Script

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download the last month's worth of videos, up to 10 videos, at full quality HD
## with chapter data appened, and sponsor segments removed.

yt='/M/YOUTUBE' # Where the YouTube main directory is.
qual="(bv*[vcodec~='^((he|a)vc|h26[45])']+ba)/(bv*+ba/b)" # Tells yt-dlp that we want the highest quality video.
#keep="--dateafter=now-3months" # Tells yt-dlp to only download up to 3 months from today's date worth of videos.
dlp_yt="yt-dlp --no-playlist --playlist-end 10 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' and 'keep' (disabled since we download only 10 videos) flags we defined up above.
cleanup='find ./ -type f | tail -n +11 && rm *.temp.* *.json *.meta' # This variable makes cleanup occur after downloading.

## Change into the YouTube directory, and begin our log, starting with when the command first executed.
## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

## Example provided below for reference and cloning. (Sometimes, '/c/' must be replaced with '/user/'.)
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/c/CHANNEL_ID/video && $cleanup

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/video && $cleanup &\

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/video && $cleanup &\

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/video && $cleanup &\

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/video && $cleanup &\

wait

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/video && $cleanup &\

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/video && $cleanup &\

cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/video && $cleanup &\

cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/video && $cleanup &\

wait

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/video && $cleanup &\

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/video && $cleanup &\

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/c/IGP/video && $cleanup &\

cd $yt/MF/ && $dlp_yt https://www.youtube.com/c/UndecidedMF/video && $cleanup &\

wait

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/video && $cleanup &\

cd $yt/MWTB/ && $dlp_yt https://www.youtube.com/c/@Mrwhosetheboss/video && $cleanup &\

cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/video && $cleanup &\

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/video && $cleanup &\

wait

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/video && $cleanup &\

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/video && $cleanup &\

cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/video && $cleanup &\

cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/video && $cleanup &\

wait

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/video && $cleanup &\

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/video && $cleanup

wait

## Change back into the main YouTube directory and echos a timestamp into a log file
## telling us how long the script ran for.

echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
