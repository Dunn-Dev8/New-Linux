#!/bin/bash

start:
echo "Current Time: $time"
echo "AMD-Driver Installer for Debian"
sleep 2

update:
echo "Running Sudo Apt Update"
sudo apt update

non-free:
echo "Checking for NON-FREE enabled"
echo "If no Packages shows up then it is Disabled"
sudo apt search non-free
sleep 1

install:
echo "Installing AMD Drivers"
apt-get install firmware-amd-graphics libgl1-mesa-dri libglx-mesa0 mesa-vulkan-drivers xserver-xorg-video-all
