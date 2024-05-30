#! /bin/bash
## ETJAKEOC YouTube Downloader Script

export PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:$PATH # Make sure that 'PATH' is proper.

## We set all the variables here for 'yt-dlp' and rename the program to 'dlp_yt'.
## This allows us to quickly and easily modify some of the most common settings that people would like to modify
## such as embedded media (thumbnails, subtitles, metadata), quality, output format, sponsor block, how many videos to download per channel, and our downloader.

yt='/STORAGE/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.
fopts="--ignore-errors --no-overwrites --continue" # File related options.
demb="-4 -r 200M --downloader aria2c --embed-metadata --embed-thumbnail --embed-subs --embed-chapters --sub-lang en --convert-subs=srt" # Set the downloader and what to embed into the video.
playqual="--no-playlist --playlist-end 1 -S +res:1080,+codec:vp9:aac" # Set the playlist limit and video quality.
spon="--sponsorblock-remove sponsor" # Set the sponsorblock options.

ids="$yt/IDs.db" # Where YT video IDs live.
aria2c="aria2c -j16 -x16" # 'aria2c' flags to increase download speed
dlp_yt="nice -n 5 yt-dlp $fopts $demb $playqual $spon --download-archive $ids" # 'dlp_yt' variable that imports all of our settings for ease of use below.

## Echo out the flags to the log, to ensure they are being sourced.
## We nuke the old log, and rewrite it from scratch from this point.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt
echo -e "Echoing SOURCE.rc variables into LOG.txt:" >> $yt/LOG.txt
echo -e "yt: $yt" >> $yt/LOG.txt
echo -e "yts: $yts" >> $yt/LOG.txt
echo -e "fopts: $fopts" >> $yt/LOG.txt
echo -e "demb: $demb" >> $yt/LOG.txt
echo -e "playqual: $playqual" >> $yt/LOG.txt
echo -e "spon: $spon" >> $yt/LOG.txt
echo -e "ID's file: $ids" >> $yt/LOG.txt
echo -e "aria2c command: $aria2c" >> $yt/LOG.txt
echo -e "dlp_yt command: $dlp_yt" >> $yt/LOG.txt
echo -e "SOURCE.rc settings imported." >> $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.
cd $yt/Asianometry/ && $dlp_yt https://www.youtube.com/@Asianometry/videos &
cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos &
cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos &
cd $yt/Blitz/ && $dlp_yt https://www.youtube.com/@Blitz/videos &
cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos &
cd $yt/CI/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos & wait
cd $yt/EI/ && $dlp_yt https://www.youtube.com/@ExtractionsAndIre/videos &
cd $yt/EF/ && $dlp_yt https://www.youtube.com/@ExplosionsAndFire/videos &
cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos &
cd $yt/EM/ && $dlp_yt https://www.youtube.com/@EvilmonkeyzDesignz/videos &
cd $yt/Keralis/ && $dlp_yt https://www.youtube.com/@Keralis/videos &
cd $yt/LR/ && $dlp_yt https://www.youtube.com/@rossmanngroup/videos & wait
cd $yt/Nexpo/ && $dlp_yt https://www.youtube.com/@Nexpo/videos &
cd $yt/PBSST/ && $dlp_yt https://www.youtube.com/@pbsspacetime/videos &
cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos &
cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos &
cd $yt/RB/ && $dlp_yt https://www.youtube.com/@RetroBytesUK/videos &
cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos & wait
cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos &
cd $yt/SW/ && $dlp_yt https://www.youtube.com/c/@silentwisperer/videos &
cd $yt/SZS/ && $dlp_yt https://www.youtube.com/c/@SubjectZeroScience/videos &
cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos &
cd $yt/TE/ && $dlp_yt https://www.youtube.com/@TechnologyConnextras/videos &
cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos & wait
cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos &
cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos

wait

## Change back into the main YouTube directory, cleanup junk files, and echos a timestamp into a log file, telling us how long the script ran for.
cd $yt && rm -rf */{*.temp.*,*.json,*.meta,*.webp}
echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
