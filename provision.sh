#!/bin/bash
# Script to provision a new Debian-based host

APT_PREF="apt-get"

# Install packages
pkg_list=$(cat config/packages/*.list)
sudo $APT_PREF -y update
sudo $APT_PREF -y install $pkg_list

# Set up Python dev
sudo pip install pylint virtualenv virtualenvwrapper pythonpy
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile
echo 'export PROJECT_HOME="/workspace"' >> ~/.profile
