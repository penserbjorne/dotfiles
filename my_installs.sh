#! /bin/bash

# author: Penserbjorne
# description: Script to install my usual software and manage some configurations in my PC's with Arch

# Show system info
neofetch

# Install programs
sudo pacman -Syyu --force --needed
sudo pacman -S --needed atom cmatrix compton dropbox gparted i3-gaps i3blocks i3lock i3status iptables dmenu gimp libnotify nftables npm rofi telegram-desktop wireshark-qt yaourt xf86-video-intel 
xf86-video-nouveau
yaourt -S --needed neofetch twmn-git musixmatch-bin spotify

read -p "Install Java8/JDK8 related? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo pacman -S --needed jre8-openjdk-headless jre8-openjdk jdk8-openjdk openjdk8-doc openjdk8-src
fi

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

