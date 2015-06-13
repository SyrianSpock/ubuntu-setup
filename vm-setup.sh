#!/bin/sh

echo "Install Virtualbox"
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt-get update
sudo apt-get install virtualbox-4.3
sudo usermod -G vboxusers -a $USER
sudo /etc/init.d/vboxdrv setup
sudo apt-get install build-essential linux-headers-3.13.0-46-generic dkms

echo "Virtualbox extension pack"
version=$(VBoxManage --version|cut -dr -f1|cut -d'_' -f1) && wget -c http://download.virtualbox.org/virtualbox/$version/Oracle_VM_VirtualBox_Extension_Pack-$version.vbox-extpack
VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-$version.vbox-extpack
rm *.vbox-extpack

echo "Install Vagrant"
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb
rm -rf vagrant_1.7.2_x86_64.deb

echo "Install Saltstack"
sudo add-apt-repository ppa:saltstack/salt -y
sudo apt-get update
sudo apt-get install salt-master salt-minion salt-syndic salt-cloud salt-ssh salt-api -y
