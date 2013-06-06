#!/bin/bash

# Check for existence of .vimrc
if [ -f ~/.vimrc ]; then
    # Overwrite?
    read -p "~/.vimrc already exists. Overwrite? (y/n) "
    if [ "$REPLY" != "y" ]; then
        exit
    fi

    # Copy .vimrc over
    echo "Copying .vimrc to ~/.vimrc..."
    cp .vimrc ~/.vimrc

    # Add extra setup things later if needd

    # Done
    echo "Done!"
fi
