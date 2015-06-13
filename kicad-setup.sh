#!/bin/sh

echo "Install Kicad"
sudo add-apt-repository ppa:js-reynaud/ppa-kicad
sudo apt-get update
sudo apt-get -V install kicad
