#!/bin/bash

if [[ "${UID}" -eq 0 ]]
then
tar zxvf cnijfilter2-5.60-1-deb.tar.gz
cd cnijfilter2-5.60-1-deb
cd packages
add-apt-repository ppa:dawidd0811/neofetch -y
apt update && apt upgrade -y
sudo apt install gdebi neofetch cowsay fortune && apt install figlet
sudo gdebi cnijfilter2_5.60-1_amd64.deb
echo "neofetch" >> /etc/bash.bashrc
echo "/usr/games/fortune | /usr/games/cowsay -f tux" >> /etc/bash.bashrc
echo "This script has been written by:"
figlet "Darkjedeye"
else
	echo " please either use sudo, or run this script as root!"
fi
