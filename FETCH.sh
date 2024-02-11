#! /bin/bash
## ETJAKEOC YouTube Downloader Script
set -x
yt='/MEDIA/YOUTUBE' # Where the YouTube main directory is.
yts='/STORAGE/GIT/YT-DLS' # Where the YouTube script directory is.
source $yts/SOURCE.rc # Source the "dlp_yt" program we defined in 'SOURCE.rc'.

## Echo out the flags to the user, to ensure they are being sourced.
echo -e "\e[1;34mEchoing SOURCE.rc variables into LOG.txt:\e[0m" > $yt/LOG.txt
echo -e "\e[0;32mcleanup:\e[0m $cleanup" >> $yt/LOG.txt
echo -e "\e[0;32mdown:\e[0m $down" >> $yt/LOG.txt
echo -e "\e[0;32memb:\e[0m $emb" >> $yt/LOG.txt
echo -e "\e[0;32mformat:\e[0m $format" >> $yt/LOG.txt
echo -e "\e[0;32mplay:\e[0m $play" >> $yt/LOG.txt
echo -e "\e[0;32mqual:\e[0m $qual" >> $yt/LOG.txt
echo -e "\e[0;32mspon:\e[0m $spon" >> $yt/LOG.txt
echo -e "\e[0;32myt:\e[0m $yt" >> $yt/LOG.txt
echo -e "\e[0;32myts:\e[0m $yts" >> $yt/LOG.txt
echo -e "\e[0;32mdlp_yt command:\e[0m $dlp_yt" >> $yt/LOG.txt
echo -e "\e[1;34mSOURCE.rc settings imported.\e[0m" >> $yt/LOG.txt

## Change into the YouTube directory, and begin our log, starting with when the command first executed.
## We nuke the old log, and rewrite it from scratch from this point, then append at the end of the script.
echo 'YouTube download script started at:' $(date) >> $yt/LOG.txt

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
