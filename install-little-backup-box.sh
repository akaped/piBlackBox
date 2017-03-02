#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y && sudo apt install fossil rsync exfat-fuse exfat-utils ntfs-3g minidlna gphoto2 -y

echo "------------------------------------------------"
echo "Creating media/storage and /media/card directory"
echo "------------------------------------------------"

sudo mkdir /media/card
sudo mkdir /media/storage
sudo chown -R $USER:$USER /media/storage
sudo chmod -R 775 /media/storage
sudo setfacl -Rdm g:$USER:rw /media/storage

echo "---- Setting up your crontab ----"

crontab -l | { cat; echo "@reboot sudo /home/$USER/little-backup-box/backup.sh"; } | crontab

sudo sed -i 's|'media_dir=/var/lib/minidlna'|'media_dir=/media/storage'|' /etc/minidlna.conf
sudo service minidlna start

# This is needed for the update, but my brach is more functional
# fossil clone https://chiselapp.com/user/dmpop/repository/little-backup-box little-backup-box.fossil
# fossil open little-backup-box.fossil
# fossil update

echo "----------------------------"
echo "       You're  done! "
echo "Please reboot (sudo init 6)."
echo "----------------------------"

