## ETJAKEOC YouTube Downloader Script

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download the last month's worth of videos, up to 15 videos, at full quality HD
## with chapter data appened, and sponsor segments removed.

yt='/M/YOUTUBE' # Where the YouTube main directory is.
qual="(bv*[vcodec~='^((he|a)vc|h26[45])']+ba)/(bv*+ba/b)" # Tells yt-dlp that we want the highest quality video.
keep="--dateafter=now-1month" # Tells yt-dlp to only download up to one month from today's date worth of videos.
dlp_yt="yt-dlp -w --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor $keep"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' and 'keep' flags we defined up above.

## Change into the YouTube directory, and begin our log, starting with when the command first executed.

cd $yt && echo YouTube download script started at: $(date) > LOG.txt # We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

## Example provided below for reference and cloning. (Sometimes, '/c/' must be replaced with '/user/'.)
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/c/CHANNEL_ID/videos

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/bigclivedotcom/videos

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/channel/CathodeRayDude/videos

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/videos

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/c/IGP/videos

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/videos

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos

cd $yt/Tech\ Ingredients/ && yt-dlp -w --no-playlist --playlist-end 8 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor https://www.youtube.com/c/TechIngredients/videos
## Modified for a channel that doesn't upload as often, to collect atleast 8 of their videos.

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos

## Change back into the main YouTube directory, and echo a timestamp into a log file, telling us how long the script ran for.

cd $yt && echo YouTube download script completed at: $(date) >> LOG.txt

## Just a little bit of cleanup after the process, because we don't need to keep things we redownload each time.

rm */*.temp.* */*.json
