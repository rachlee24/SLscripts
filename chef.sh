#!/bin/sh
echo "Provisioning VM"
echo "Updating Linux"
#This updates linux
sudo apt-get update 
#This upgrading linux
echo "Upgrading Linux"
sudo apt-get upgrade

#This downloads the chef package
echo "Getting chef package"
wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb

#installs the chef package
echo "Installing chef package"
sudo dpkg -i chef-server_11.0.8-1.ubuntu.12.04_amd64.deb
#last step in configuring chef
echo "Configuring chef package"
sudo chef-server-ctl reconfigure
