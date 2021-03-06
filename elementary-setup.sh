#!/bin/sh

echo "Elementary tweaks"
sudo apt-add-repository ppa:versable/elementary-update -y
sudo apt-get update
sudo apt-get install elementary-tweaks

echo "Nice elementary stuff"
sudo apt-get install elementary-wallpaper-collection
sudo apt-get install wingpanel-slim super-wingpanel
sudo apt-get install elementary-.*-theme elementary-.*-icons

echo "Synapse indicator"
sudo add-apt-repository ppa:elementary-os/unstable-upstream
sudo apt-get update
sudo apt-get install indicator-synapse
sudo add-apt-repository ppa:elementary-os/unstable-upstream --remove

echo "More software"
sudo gdebi dropbox_1.6.0_amd64.deb
sudo apt-get install glipper icedtea-plugin gtk-recordmydesktop shutter

