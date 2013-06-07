#!/bin/bash

CAN_INSTALL="y" # TRUE if not found

echo ".vimrc - by abstractOwl. Enjoy!"
echo

# Check for existence of .vimrc
if [ -f ~/.vimrc ]; then
    # Overwrite?
    read -p '-- File "~/.vimrc" already exists. Overwrite? [y/N] ' CAN_INSTALL
fi

# Copy over our version
if [ "$CAN_INSTALL" = "y" ]; then
    # Copy .vimrc over
    echo " -> Copying .vimrc to ~/.vimrc..."
    cp .vimrc ~/.vimrc
else
    echo "-- Aborting!"
    exit
fi

# Install Vundle
# ---------------
# Adapted from:
# http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/)
if [ ! -f ~/.vim/bundle/vundle/README.md ]; then
    echo "-- Installing Vundle..."

    echo " -> Make Vundle directory"
    mkdir -p ~/.vim/bundle > /dev/null 2>&1

    echo " -> Clone GitHub repository"
    git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle > /dev/null 2>&1
fi

# Auto install bundles
echo "-- Installing bundles..."
vim +BundleInstall +qall

# Add extra setup things later if needd

# Done
echo "-- Done!"

