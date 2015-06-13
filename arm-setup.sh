#!/bin/sh

echo "Install ARM GCC toolchain"
sudo aptitude remove binutils-arm-none-eabi gcc-arm-none-eabi
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded
sudo aptitude update
sudo aptitude install gcc-arm-none-eabi=4.9.3.2015q1-0trusty13
sudo aptitude install dfu-util

echo "Install OpenOCD"
sudo aptitude install openocd
