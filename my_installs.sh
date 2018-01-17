#! /bin/bash

# author: Penserbjorne
# description: Script to install my usual software and manage some configurations in my PC's with Arch

# Show system info
neofetch

# Install programs
sudo pacman -Syu
sudo pacman -S --needed atom compton dropbox gparted i3-gaps i3blocks i3lock i3status dmenu gimp libnotify npm rofi telegram-desktop wireshark-qt yaourt xf86-video-intel xf86-video-nouveau
yaourt -S --needed neofetch twmn-git musixmatch-bin spotify

read -p "Execute npm install? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo npm install gtop -g # --needed flag? :( this need a fix
fi

cp ./i3_config /home/$USER/.config/i3/config

# twmnd
# notify-send 'It Works!' 'This is an example notification.' --icon=dialog-information

read -p "Reboot? (y/n) " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo
	echo
	echo "See you space cowboy ..."
	echo
	sudo reboot
fi

echo
echo
echo "See you space cowboy ..."
echo
