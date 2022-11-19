## ETJAKEOC YouTube Downloader Script

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download the last month's worth of videos, up to 15 videos, at full quality HD
## with chapter data appened, and sponsor segments removed.

yt='/M/YOUTUBE' # Where the YouTube main directory is.
qual="(bv*[vcodec~='^((he|a)vc|h26[45])']+ba)/(bv*+ba/b)" # Tells yt-dlp that we want the highest quality video.
keep="--dateafter=now-1month" # Tells yt-dlp to only download up to one month from today's date worth of videos.
dlp_yt="yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor $keep"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' and 'keep' flags we defined up above.
cleanup='rm *.temp.* *.json' # This variable makes cleanup occur in each folder after downloading.

## Change into the YouTube directory, and begin our log, starting with when the command first executed.

## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
cd $yt && echo YouTube download script started at: $(date) > LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

## Example provided below for reference and cloning. (Sometimes, '/c/' must be replaced with '/user/'.)
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/c/CHANNEL_ID/videos && $cleanup

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cleanup

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cleanup

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos && $cleanup

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/channel/CathodeRayDude/videos && $cleanup

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cleanup

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos && $cleanup

cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/videos && $cleanup

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/videos && $cleanup

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cleanup

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/c/IGP/videos && $cleanup

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/videos && $cleanup

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cleanup

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cleanup

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cleanup

cd $yt/Tech\ Ingredients/ && yt-dlp -w --no-playlist --playlist-end 8 --embed-metadata \
--write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor \
https://www.youtube.com/c/TechIngredients/videos && $cleanup
## Modified for a channel that doesn't upload as often, to collect atleast 8 of their videos.

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cleanup

## Change back into the main YouTube directory, and echo a timestamp into a log file
## telling us how long the script ran for.

cd $yt && echo YouTube download script completed at: $(date) >> LOG.txt

## We have a string that will clean any files older than 1 month in the downloads folder, by default.
## You can modify this by changing the '-mtime +##' section, this takes values in number of days.
## Recommend disabling this if possible for the first month, as there is a slight possibility it deletes
## videos that have been downloaded which you wish to keep.

#find $yt/* -mtime +30 -exec rm *.*
