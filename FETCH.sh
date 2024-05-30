#! /bin/bash
## ETJAKEOC YouTube Downloader Script

export PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:$PATH # Make sure that 'PATH' is proper.

## We set all the variables here for 'yt-dlp' and rename the program to 'dlp_yt'.
## This allows us to quickly and easily modify some of the most common settings that people would like to modify
## such as embedded media (thumbnails, subtitles, metadata), quality, output format, sponsor block, how many videos to download per channel, and our downloader.

yt='/STORAGE/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.

alias YTU="$yts/FETCH.sh"
alias YTCOV="$yts/COV.sh"
alias FIX_PERMS="$yts/PERMS.sh"

demb="-4 -r 200M --downloader aria2c --embed-metadata --embed-thumbnail --embed-subs --embed-chapters --sub-lang en --convert-subs=srt"
playqual="--ignore-errors --no-overwrites --continue --no-playlist --playlist-end 5 -S +res:1080,+codec:vp9:aac"
spon="--sponsorblock-remove sponsor"

ids="$yt/IDs.db"
aria2c="aria2c -j16 -x16"
dlp_yt="nice -n 5 yt-dlp $demb $playqual $spon --download-archive $ids"

## Echo out the flags to the log, to ensure they are being sourced.
## We nuke the old log, and rewrite it from scratch from this point.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt
echo -e "\e[1;34mEchoing SOURCE.rc variables into LOG.txt:\e[0m" >> $yt/LOG.txt
echo -e "\e[0;32mdemb:\e[0m $demb" >> $yt/LOG.txt
echo -e "\e[0;32mplayqual:\e[0m $playqual" >> $yt/LOG.txt
echo -e "\e[0;32mspon:\e[0m $spon" >> $yt/LOG.txt
echo -e "\e[0;32myt:\e[0m $yt" >> $yt/LOG.txt
echo -e "\e[0;32myts:\e[0m $yts" >> $yt/LOG.txt
echo -e "\e[0;32maria2c command:\e[0m $aria2c" >> $yt/LOG.txt
echo -e "\e[0;32mdlp_yt command:\e[0m $dlp_yt" >> $yt/LOG.txt
echo -e "\e[1;34mSOURCE.rc settings imported.\e[0m" >> $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.
cd $yt/Asianometry/ && $dlp_yt https://www.youtube.com/@Asianometry/videos &
cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos &
cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos &
cd $yt/Blitz/ && $dlp_yt https://www.youtube.com/@Blitz/videos &
cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos &
cd $yt/CI/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos &
cd $yt/EI/ && $dlp_yt https://www.youtube.com/@ExtractionsAndIre/videos &
cd $yt/EF/ && $dlp_yt https://www.youtube.com/@ExplosionsAndFire/videos &
cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos &
cd $yt/EM/ && $dlp_yt https://www.youtube.com/@EvilmonkeyzDesignz/videos &
cd $yt/Keralis/ && $dlp_yt https://www.youtube.com/@Keralis/videos &
cd $yt/LR/ && $dlp_yt https://www.youtube.com/@rossmanngroup/videos &
cd $yt/Nexpo/ && $dlp_yt https://www.youtube.com/@Nexpo/videos &
cd $yt/PBSST/ && $dlp_yt https://www.youtube.com/@pbsspacetime/videos &
cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos &
cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos &
cd $yt/RB/ && $dlp_yt https://www.youtube.com/@RetroBytesUK/videos &
cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos &
cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos &
cd $yt/SW/ && $dlp_yt https://www.youtube.com/c/@silentwisperer/videos &
cd $yt/SZS/ && $dlp_yt https://www.youtube.com/c/@SubjectZeroScience/videos &
cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos &
cd $yt/TE/ && $dlp_yt https://www.youtube.com/@TechnologyConnextras/videos &
cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos &
cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos &
cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos

wait

## Change back into the main YouTube directory, cleanup junk files, and echos a timestamp into a log file, telling us how long the script ran for.
cd $yt && rm -rf */{*.temp.*,*.json,*.meta,*.webp}
echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
