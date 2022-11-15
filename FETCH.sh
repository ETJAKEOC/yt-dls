yt='/M/YOUTUBE'

cd $yt/Aging\ Wheels/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/user/agingwheels/videos

cd $yt/Big\ Clive/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/user/bigclivedotcom/videos

cd $yt/Cathode Ray\ Dude/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/channel/UCXnNibvR_YIdyPs8PZIBoEw/videos

cd $yt/Chris\ Titus\ Tech/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor -- dateafter='now-1month' https://www.youtube.com/user/homergfunk/videos

cd $yt/Gray\ Still\ Plays/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/channel/UCzEy7pi3B7TIS9cn_sdKK9A/videos

cd $yt/Great\ Scott/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/user/greatscottlab/videos

cd $yt/MrBallen/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/channel/UCtPrkXdtCM5DACLufB9jbsA/videos

cd $yt/Real\ Civil\ Engineer/ && yt-dlp --no-playlist --playlist-end 15 --embed-metadata --write-info-json --embed-chapters -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --sponsorblock-remove sponsor --dateafter='now-1month' https://www.youtube.com/channel/UCeP4Yv3s4RvS0-6d90InRMw/videos

cd $yt && echo Subscriptions last updated $(date) > LOG.txt
