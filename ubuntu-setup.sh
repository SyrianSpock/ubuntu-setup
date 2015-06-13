#!/bin/sh

echo "Install essential utilities"
sudo apt-get install fish git vlc gstreamer0.10-plugins-ugly gxine libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 gstreamer1.0-libav unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller gimp -y
sudo apt-get install silversearcher-ag

echo "To disable touchpad while typing"
sudo add-apt-repository ppa:atareao/atareao -y
sudo apt-get update
sudo apt-get install touchpad-indicator -y

echo "For power management"
sudo apt-get remove laptop-mode-tools
sudo add-apt-repository ppa:linrunner/tlp -y
sudo apt-get update
sudo apt-get install tlp tlp-rdw smartmontools ethtool tp-smapi-dkms acpi-call-tools -y
sudo tlp start

echo "Install latex"
sudo apt-get install texlive texlive-lang-english texlive-lang-french texlive-doc-en texlive-latex-extra -y

echo "Install sublime"
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
sudo dpkg -i sublime-text_build-3083_amd64.deb
rm -rf sublime-text_build-3083_amd64.deb

