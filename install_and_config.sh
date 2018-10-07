#! /bin/bash

# author: Penserbjorne
# description: Script to install my usual software and manage some configurations in my PC's with Arch

# Show system info
neofetch

# Update system
sudo pacman -Syudd --force

# Install i3 related stuff
sudo pacman -S --needed compton i3-gaps i3blocks i3lock i3status dmenu rofi \
			playerctl
yaourt -S --needed --noconfirm polybar-git

# Install programs
sudo pacman -S --needed atom acpi calibre dropbox gnome-latex gparted keepassxc gimp npm \
	ntfs-3g telegram-desktop texlive-core wireshark-qt
yaourt
yaourt -S --force --needed --noconfirm cryptomator neofetch spotify signal nbfc-git

# Install graphics
sudo pacman -S --needed xf86-video-intel xf86-video-nouveau \
	mesa mesa-demos freeglut

# Install funny stuffs
sudo pacman -S --needed --noconfirm cmatrix

read -p "Install Java10/JDK10 related? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo pacman -S --needed jre10-openjdk-headless jre10-openjdk jdk10-openjdk openjdk10-doc openjdk10-src
fi

read -p "Install gtop? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo npm install gtop -g # --needed flag? :( this need a fix
fi

read -p "nbfc stuffs? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo systemctl enable nbfc --now
	systemctl status nbfc
	sudo cp ./Lenovo\ Legion\ Y720.xml /opt/nbfc/Configs/
	nbfc config -a "Lenovo Legion Y720"
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
