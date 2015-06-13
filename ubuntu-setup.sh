#!/bin/sh

echo "update and upgrade"
apt-get update
apt-get upgrade

echo "install essential utilities"
apt-get install fish git vlc gstreamer0.10-plugins-ugly gxine libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 gstreamer1.0-libav unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller gimp -y

echo "to disable touchpad while typing"
add-apt-repository ppa:atareao/atareao -y
apt-get update
apt-get install touchpad-indicator -y

echo "for power management"
apt-get remove laptop-mode-tools
add-apt-repository ppa:linrunner/tlp -y
apt-get update
apt-get install tlp tlp-rdw smartmontools ethtool tp-smapi-dkms acpi-call-tools -y
tlp start

echo "install latex"
apt-get install texlive texlive-lang-english texlive-lang-french texlive-doc-en texlive-latex-extra -y

echo "install sublime"
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
dpkg -i sublime-text_build-3083_amd64.deb
rm -rf sublime-text_build-3083_amd64.deb

echo "Finished, reboot system"
reboot
