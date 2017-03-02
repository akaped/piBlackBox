#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y && sudo apt install rsync exfat-fuse exfat-utils ntfs-3g minidlna gphoto2 -y

echo "------------------------------------------------"
echo "Creating media/storage and /media/card directory"
echo "------------------------------------------------"

sudo mkdir /media/card
sudo mkdir /media/storage
sudo chown -R $USER:$USER /media/storage
sudo chmod -R 775 /media/storage
sudo setfacl -Rdm g:$USER:rw /media/storage

echo "---- Setting up your crontab ----"
if [ "$EUID" == 0 ]
  then crontab -l | { cat; echo "@reboot sudo /$USER/little-backup-box/backup.sh"; } | crontab
  else crontab -l | { cat; echo "@reboot sudo /home/$USER/little-backup-box/backup.sh"; } | crontab
fi


sudo sed -i 's|'media_dir=/var/lib/minidlna'|'media_dir=/media/storage'|' /etc/minidlna.conf
sudo service minidlna start


echo "----------------------------"
echo "       You're  done! "
echo "Please reboot (sudo init 6)."
echo "----------------------------"
