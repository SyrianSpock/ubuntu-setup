#!/bin/sh

echo "Elementary tweaks"
sudo apt-add-repository ppa:versable/elementary-update -y
sudo apt-get update
sudo apt-get install elementary-tweaks

echo "Nice elementary stuff"
sudo apt-get install elementary-wallpaper-collection
sudo apt-get install wingpanel-slim super-wingpanel
sudo apt-get install elementary-.*-theme elementary-.*-icons
sudo apt-get install indicator-synapse

echo "More software"
sudo apt-get install skype
sudo gdebi dropbox_1.6.0_amd64.deb
sudo apt-get install glipper icedtea-plugin gtk-recordmydesktop shutter

echo "Clean up"
sudo apt-get autoremove

echo "Done"
