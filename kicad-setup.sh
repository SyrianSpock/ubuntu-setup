#!/bin/sh

echo "Install Kicad"
sudo apt-get install libcairo2-dev glew-utils libglew-dev libglewmx-dev
sudo add-apt-repository ppa:js-reynaud/ppa-kicad
sudo apt-get update
sudo apt-get -V install kicad
