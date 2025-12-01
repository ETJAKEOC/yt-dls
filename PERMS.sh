sudo chown jake:jellyfin /MEDIA
sudo chmod u+rwx /MEDIA
sudo chmod g+rwx /MEDIA
sudo chmod o-w /MEDIA
sudo chmod o+rx /MEDIA

sudo chown -R jake:jellyfin /MEDIA/MOVIES
sudo chmod -R u+rwx /MEDIA/MOVIES
sudo chmod -R g+rwx /MEDIA/MOVIES
sudo chmod -R o-w /MEDIA/MOVIES
sudo chmod -R o+rx /MEDIA/MOVIES

sudo chown -R jake:jellyfin /STORAGE/MUSIC
sudo chmod -R u+rwx /STORAGE/MUSIC
sudo chmod -R g+rwx /STORAGE/MUSIC
sudo chmod -R o-w /STORAGE/MUSIC
sudo chmod -R o+rx /STORAGE/MUSIC

sudo chown -R jake:jellyfin /MEDIA/TV
sudo chmod -R u+rwx /MEDIA/TV
sudo chmod -R g+rwx /MEDIA/TV
sudo chmod -R o-w /MEDIA/TV
sudo chmod -R o+rx /MEDIA/TV

sudo chown -R jake:jellyfin /YOUTUBE
sudo chmod -R u+rwx /YOUTUBE
sudo chmod -R g+rwx /YOUTUBE
sudo chmod -R o-w /YOUTUBE
sudo chmod -R o+rx /YOUTUBE
