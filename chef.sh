#!/bin/sh

sudo apt-get update 

sudo apt-get upgrade

wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb

sudo dpkg -i chef-server_11.0.8-1.ubuntu.12.04_amd64.deb

sudo chef-server-ctl reconfigure
