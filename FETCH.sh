#! /bin/bash
## ETJAKEOC YouTube Downloader Script

## Set PATH variable, so yt-dlp knows where to find phantomJS, if installed.
PATH=/usr/bin:/usr/sbin:usr/local/bin:usr/local/sbin:$PATH

## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download up to 10 videos, per channel, at full quality HD, with chapter data appened, and sponsor segments removed.
yt='/STORAGE/YOUTUBE' # Where the YouTube main directory is.
emb='--embed-metadata --embed-thumbnail --embed-subs --embed-chapters'
qual="-f mp4"
dlp_yt="yt-dlp --no-playlist --playlist-end 10 --downloader aria2c --sponsorblock-remove sponsor $qual $emb"
# Variable to run in place of 'yt-dlp' in script, applying the 'qual' flags we defined up above.

cleanup='rm -f *.temp.* *.json *.meta .webp' # This variable makes cleanup occur after downloading.

## Change into the YouTube directory, and begin our log, starting with when the command first executed.
## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

## Example provided below for reference and cloning. (Sometimes, '/c/' must be replaced with '/user/'.)
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/c/CHANNEL_ID/videos && $cleanup

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cleanup &\

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cleanup &\

wait

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos && $cleanup &\

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos && $cleanup &\

wait

cd $yt/CI/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cleanup &\

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos && $cleanup &\

wait

cd $yt/CM/ && $dlp_yt https://www.youtube.com/@CleetusM/videos && $cleanup &\

cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/videos && $cleanup &\

wait

cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos && $cleanup &\

cd $yt/EM/ && $dlp_yt https://www.youtube.com/@EvilmonkeyzDesignz/videos && $cleanup &\

wait

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/videos && $cleanup &\

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cleanup &\

wait

cd $yt/KH/ && $dlp_yt https://www.youtube.com/@kylehill/videos && $cleanup &\

cd $yt/LR/ && $dlp_yt https://www.youtube.com/@rossmanngroup/videos && $cleanup &\

wait

cd $yt/MF/ && $dlp_yt https://www.youtube.com/c/UndecidedMF/videos && $cleanup &\

cd $yt/MJ/ && $dlp_yt https://www.youtube.com/@ThatMumboJumbo/videos && $cleanup &\

wait

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/videos && $cleanup &\

cd $yt/MWTB/ && $dlp_yt https://www.youtube.com/c/@Mrwhosetheboss/videos && $cleanup &\

wait

cd $yt/PBSST/ && $dlp_yt https://www.youtube.com/@pbsspacetime/videos && $cleanup &\

cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos && $cleanup &\

wait

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cleanup &\

cd $yt/RB/ && $dlp_yt https://www.youtube.com/@RetroBytesUK/videos && $cleanup &\

wait

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cleanup &\

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cleanup &\

wait

cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos && $cleanup &\

cd $yt/TAL/ && $dlp_yt https://www.youtube.com/c/@TheActionLab/videos && $cleanup &\

wait

cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos && $cleanup &\

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup &\

wait

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cleanup &\

cd $yt/TS/ && $dlp_yt https://www.youtube.com/c/@TomScottGo/videos && $cleanup

wait

## Change back into the main YouTube directory and echos a timestamp into a log file, telling us how long the script ran for.

echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
