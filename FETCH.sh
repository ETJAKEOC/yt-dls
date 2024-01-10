#! /bin/bash
## ETJAKEOC YouTube Downloader Script
PATH=/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH # Set PATH variable, so yt-dlp knows where to find phantomJS, if installed.
yt='/MEDIA/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.
source $yts/SOURCE.rc # Source the "dlp_yt" program and attach our settings.
play="--no-playlist --playlist-end 1"
dlp_yt="yt-dlp $emb $qual $down $spon $play"

## Change into the YouTube directory, and begin our log, starting with when the command first executed.
## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.

cd $yt/Asianometry/ && $dlp_yt https://www.youtube.com/@Asianometry/videos && $cleanup &

wait

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cleanup &
cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cleanup &

wait

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos && $cleanup &
cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos && $cleanup &

wait

cd $yt/CI/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cleanup &
cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/videos && $cleanup &

wait

cd $yt/EI/ && $dlp_yt https://www.youtube.com/@ExtractionsAndIre/videos && $cleanup &
cd $yt/EF/ && $dlp_yt https://www.youtube.com/@ExplosionsAndFire/videos && $cleanup &

wait

cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos && $cleanup &
cd $yt/EM/ && $dlp_yt https://www.youtube.com/@EvilmonkeyzDesignz/videos && $cleanup &

wait

cd $yt/LR/ && $dlp_yt https://www.youtube.com/@rossmanngroup/videos && $cleanup &
cd $yt/MJ/ && $dlp_yt https://www.youtube.com/@ThatMumboJumbo/videos && $cleanup &

wait

cd $yt/MP/ && $dlp_yt https://www.youtube.com/@ModestPelican/videos && $cleanup &
cd $yt/Nexpo/ && $dlp_yt https://www.youtube.com/@Nexpo/videos && $cleanup &

wait

cd $yt/PBSST/ && $dlp_yt https://www.youtube.com/@pbsspacetime/videos && $cleanup &
cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos && $cleanup &

wait

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cleanup &
cd $yt/RB/ && $dlp_yt https://www.youtube.com/@RetroBytesUK/videos && $cleanup &

wait

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cleanup &
cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cleanup &

wait

cd $yt/SPRUNGLES/ && $dlp_yt https://www.youtube.com/@sprungles4tech/videos && $cleanup &
cd $yt/SW/ && $dlp_yt https://www.youtube.com/c/@silentwisperer/videos && $cleanup &

wait

cd $yt/SZS/ && $dlp_yt https://www.youtube.com/c/@SubjectZeroScience/videos && $cleanup &
cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos && $cleanup &

wait

cd $yt/TE/ && $dlp_yt https://www.youtube.com/@TechnologyConnextras/videos && $cleanup &
cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos && $cleanup &

wait

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup &
cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cleanup &
cd $yt/TLT/ && $dlp_yt https://www.youtube.com/@thelinuxtube/videos && $cleanup &

wait

## Change back into the main YouTube directory and echos a timestamp into a log file, telling us how long the script ran for.

echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
