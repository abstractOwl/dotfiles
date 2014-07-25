#!/bin/bash
# AWS instance provisioning

APT_PREF="apt-get"

sudo $APT_PREF -y update
while read package; do
    echo "Installing $package..."
    sudo $APT_PREF -y install $package
    echo
done < "config/packages.txt"

