#! /bin/bash

# author: Penserbjorne
# description: Script to install my usual software and manage some configurations in my PC's with Arch

# Show system info
neofetch

# Install programs
sudo pacman -Syu
sudo pacman -S --needed atom cmatrix compton dropbox gparted i3-gaps i3blocks i3lock i3status dmenu gimp libnotify npm rofi telegram-desktop wireshark-qt yaourt xf86-video-intel xf86-video-nouveau
yaourt -S --needed neofetch twmn-git musixmatch-bin spotify

read -p "Execute npm install? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo npm install gtop -g # --needed flag? :( this need a fix
fi

read -p "Copy i3_config? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	cp ./i3_config /home/$USER/.config/i3/config
fi

# twmnd
# notify-send 'It Works!' 'This is an example notification.' --icon=dialog-information

read -p "Reboot? (y/n) " -n 1 -r

echo
echo
echo "See you space cowboy ..."
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo reboot
fi

#cmatrix &

