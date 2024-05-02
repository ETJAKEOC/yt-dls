#! /bin/bash
## ETJAKEOC YouTube Downloader Script
export PATH=/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:$PATH # Make sure that PATH is proper.
## We set all the variables here for 'yt-dlp' and rename the program to 'dlp_yt'.
## This allows us to quickly and easily modify some of the most common settings that people would like to modify
## such as embedded media (thumbnails, subtitles, metadata), quality, output format, sponsor block, how many videos to download per channel, and our downloader.
yt='/STORAGE/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.
alias YTU="$yts/FETCH.sh"
alias YTCOV="$yts/COV.sh"
alias FIX_PERMS="$yts/PERMS.sh"
cleanup="rm -f {*.temp.*,*.json,*.meta,*.webp}" # This variable makes cleanup occur after downloading.
down="--downloader aria2c" # Sets the downloader to aria2c.
emb="--embed-metadata --embed-thumbnail --embed-subs --embed-chapters --sub-lang en --convert-subs=srt" # Sets embedding options for metadata, thumbnails, subtitles, and chapters.
play="--no-playlist --playlist-end 1" # Disables playlist downloads and sets the maximum number of videos to download per playlist.
qual="-S +res:1080,+codec:h264_qsv:aac" # Sets the quality to 1080p with H.264 video codec and Opus audio codec.
spon="--sponsorblock-remove sponsor" # Enables sponsor block removal.
dlp_yt="nice -n 10 yt-dlp $down $emb $qual $spon $play"

## Echo out the flags to the log, to ensure they are being sourced.
## We nuke the old log, and rewrite it from scratch from this point.
echo 'YouTube download script started at:' $(date) > $yt/LOG.txt
echo -e "\e[1;34mEchoing SOURCE.rc variables into LOG.txt:\e[0m" >> $yt/LOG.txt
echo -e "\e[0;32mcleanup:\e[0m $cleanup" >> $yt/LOG.txt
echo -e "\e[0;32mdown:\e[0m $down" >> $yt/LOG.txt
echo -e "\e[0;32memb:\e[0m $emb" >> $yt/LOG.txt
echo -e "\e[0;32mplay:\e[0m $play" >> $yt/LOG.txt
echo -e "\e[0;32mqual:\e[0m $qual" >> $yt/LOG.txt
echo -e "\e[0;32mspon:\e[0m $spon" >> $yt/LOG.txt
echo -e "\e[0;32myt:\e[0m $yt" >> $yt/LOG.txt
echo -e "\e[0;32myts:\e[0m $yts" >> $yt/LOG.txt
echo -e "\e[0;32mdlp_yt command:\e[0m $dlp_yt" >> $yt/LOG.txt
echo -e "\e[1;34mSOURCE.rc settings imported.\e[0m" >> $yt/LOG.txt

## Change into the YouTube directory, then the channel directory, and begins downloading with our defined flags.
cd $yt/Asianometry/ && $dlp_yt https://www.youtube.com/@Asianometry/videos && $cleanup & wait
cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cleanup & wait
cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cleanup & wait
cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos && $cleanup & wait
cd $yt/CI/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cleanup & wait
cd $yt/EI/ && $dlp_yt https://www.youtube.com/@ExtractionsAndIre/videos && $cleanup & wait
cd $yt/EF/ && $dlp_yt https://www.youtube.com/@ExplosionsAndFire/videos && $cleanup & wait
cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos && $cleanup & wait
cd $yt/EM/ && $dlp_yt https://www.youtube.com/@EvilmonkeyzDesignz/videos && $cleanup & wait
cd $yt/LR/ && $dlp_yt https://www.youtube.com/@rossmanngroup/videos && $cleanup & wait
cd $yt/MJ/ && $dlp_yt https://www.youtube.com/@ThatMumboJumbo/videos && $cleanup & wait
cd $yt/Nexpo/ && $dlp_yt https://www.youtube.com/@Nexpo/videos && $cleanup & wait
cd $yt/PBSST/ && $dlp_yt https://www.youtube.com/@pbsspacetime/videos && $cleanup & wait
cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos && $cleanup & wait
cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cleanup & wait
cd $yt/RB/ && $dlp_yt https://www.youtube.com/@RetroBytesUK/videos && $cleanup & wait
cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cleanup & wait
cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cleanup & wait
cd $yt/SW/ && $dlp_yt https://www.youtube.com/c/@silentwisperer/videos && $cleanup & wait
cd $yt/SZS/ && $dlp_yt https://www.youtube.com/c/@SubjectZeroScience/videos && $cleanup & wait
cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos && $cleanup & wait
cd $yt/TE/ && $dlp_yt https://www.youtube.com/@TechnologyConnextras/videos && $cleanup & wait
cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos && $cleanup & wait
cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cleanup & wait
cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cleanup & wait

## Change back into the main YouTube directory and echos a timestamp into a log file, telling us how long the script ran for.
echo 'YouTube download script completed at:' $(date) >> $yt/LOG.txt
