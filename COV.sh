#! /bin/bash
## ETJAKEOC YouTube Downloader Script - Clean Old Videos section

yt='/M/YOUTUBE' # Set where the YouTube main directory is.
cov="ls -A --color=none ./ | tail -n +11 | xargs -d '\n' rm --" # This variable removes the oldest videos past the download limit.

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos && $cov

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/c/Bigclive/videos && $cov

cd $yt/BR/ && $dlp_yt https://www.youtube.com/c/BrodieRobertson/videos && $cov

cd $yt/CRD/ && $dlp_yt https://www.youtube.com/c/@CathodeRayDude/videos && $cov

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/c/CertifiablyIngame/videos && $cov

cd $yt/CTT/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos && $cov

cd $yt/DT/ && $dlp_yt https://www.youtube.com/c/DistroTube/videos && $cov

cd $yt/EE/ && $dlp_yt https://www.youtube.com/@EngineeringExplained/videos && $cov

cd $yt/GSP/ && $dlp_yt https://www.youtube.com/c/GrayStillPlays/videos && $cov

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/c/greatscottlab/videos && $cov

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/c/IGP/videos && $cov

cd $yt/MF/ && $dlp_yt https://www.youtube.com/c/UndecidedMF/videos && $cov

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/c/MrBallen/videos && $cov

cd $yt/MWTB/ && $dlp_yt https://www.youtube.com/c/@Mrwhosetheboss/videos && $cov

cd $yt/PE/ && $dlp_yt https://www.youtube.com/c/@PracticalEngineeringChannel/videos && $cov

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/c/QxirYT/videos && $cov

cd $yt/RCE/ && $dlp_yt https://www.youtube.com/c/RealCivilEngineerGaming/videos && $cov

cd $yt/RMS/ && $dlp_yt https://www.youtube.com/c/RobertMurraySmith/videos && $cov

cd $yt/TC/ && $dlp_yt https://www.youtube.com/c/@TechnologyConnections/videos && $cov

cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/c/TechIngredients/videos && $cov

cd $yt/TLC/ && $dlp_yt https://www.youtube.com/c/TheLinuxCast/videos && $cov

cd $yt/TLE/ && $dlp_yt https://www.youtube.com/c/TheLinuxExperiment/videos && $cov

cd $yt/TS/ && $dlp_yt https://www.youtube.com/c/@TomScottGo/videos && $cov
