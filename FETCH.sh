## Set YouTube download directory and 'yt-dlp' flags.
## These flags by default will download the last month's worth of videos, up to 15 videos, at full quality HD
## with chapter data appened, and sponsor segments removed.

yt='/M/YOUTUBE'
qual="(bv*[vcodec~='^((he|a)vc|h26[45])']+ba)/(bv*+ba/b)"
keep="--dateafter=now-1month"
dlp_yt="yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f $qual --sponsorblock-remove sponsor $keep"

## Change into the YouTube directory, then the channel directory (you must create your own directories for each channel, this script does NOT do that.)
## and then downloads the last months worth, up to 15 videos, from said channel into it's own directory, with chapter data added and sponsor segments removed.

## Example provided below for reference and cloning.
## cd $yt/CHANNEL_DIR/ && $dlp_yt https://www.youtube.com/channel/CHANNEL_ID/videos

cd $yt/Aging\ Wheels/ && $dlp_yt https://www.youtube.com/user/agingwheels/videos

cd $yt/Big\ Clive/ && $dlp_yt https://www.youtube.com/user/bigclivedotcom/videos

cd $yt/Cathode Ray\ Dude/ && $dlp_yt https://www.youtube.com/channel/UCXnNibvR_YIdyPs8PZIBoEw/videos

cd $yt/Certifiably\ Ingame/ && $dlp_yt https://www.youtube.com/channel/UCJutYkYphYcGo-xbqyQJeYA/videos

cd $yt/Chris\ Titus\ Tech/ && $dlp_yt https://www.youtube.com/user/homergfunk/videos

cd $yt/Gray\ Still\ Plays/ && $dlp_yt https://www.youtube.com/channel/UCzEy7pi3B7TIS9cn_sdKK9A/videos

cd $yt/Great\ Scott/ && $dlp_yt https://www.youtube.com/user/greatscottlab/videos

cd $yt/IGP/ && $dlp_yt https://www.youtube.com/channel/TheIndieGamePromoter/videos

cd $yt/MrBallen/ && $dlp_yt https://www.youtube.com/channel/UCtPrkXdtCM5DACLufB9jbsA/videos

cd $yt/Qxir/ && $dlp_yt https://www.youtube.com/channel/UCGHDQtN_vzFYJaq_Fx1eikg/videos

cd $yt/Real\ Civil\ Engineer/ && $dlp_yt https://www.youtube.com/channel/UCeP4Yv3s4RvS0-6d9OInRMw/videos

cd $yt/Robert\ Murray-Smith/ && $dlp_yt https://www.youtube.com/channel/RobertMurraySmith/videos

cd $yt/Tech\ Ingredients/ && $dlp_yt https://www.youtube.com/channel/TechIngredients/videos

## Change back into the main YouTube directory, and echo a timestamp into a log file, indicating when the script last updated the libraries.

cd $yt && echo Subscriptions last updated $(date) > LOG.txt
