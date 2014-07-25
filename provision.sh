#!/bin/bash
# AWS instance provisioning

APT_PREF="apt-get"

# Install packages
pkg_list=$(cat config/packages/*.list)
sudo $APT_PREF -y update
sudo $APT_PREF -y install $pkg_list

