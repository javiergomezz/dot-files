#!/bin/bash

echo "Installing dependencies..."
sudo apt-get install build-essential linux-headers-`uname -r` dkms

echo "Configuring user..."
sudo usermod -a -G vboxsf javier

echo "Creating soft link to Documents..."
sudo ln -s /media/sf_IPT ~/Documents/IPT
sudo chown javier:javier /media/sf_IPT

#echo "Mounting..."
#sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) IPT /media/sf_IPT

echo "\n 1.- Be sure to uncheck 'automont' for this folder"
echo "2.- Remember to add this line to /etc/fstab: "
echo "shared /path/to/shared vboxsf umask=0002,gid=1000,uid=1000"
echo "\n\n This configuration will allow to see true files and folders rights."
