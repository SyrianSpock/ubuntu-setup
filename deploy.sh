#!/bin/sh

echo "Deploying machine"

echo "Update and upgrade"
sudo apt-get update
sudo apt-get upgrade

echo "Ubuntu setup"
sudo chmod a+x ubuntu-setup.sh
./ubuntu-setup.sh

echo "Elementary OS setup"
sudo chmod a+x elementary-setup.sh
./elementary-setup.sh

echo "ARM toolchain setup"
sudo chmod a+x arm-setup.sh
./arm-setup.sh

echo "Kicad setup"
sudo chmod a+x kicad-setup.sh
./kicad-setup.sh

echo "Virtualbox / VM setup"
sudo chmod a+x vm-setup.sh
./vm-setup.sh

echo "Clean up"
sudo apt-get autoremove

echo "Done, reboot system"
sudo reboot
