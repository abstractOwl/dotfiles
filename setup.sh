#!/bin/bash

# Check for existence of .vimrc
if [ -f ~/.vimrc ]; then
    # Overwrite?
    read -p "-- ~/.vimrc already exists. Overwrite? [y/N] "
    if [ "$REPLY" = "y" ]; then
        # Copy .vimrc over
        echo " -> Copying .vimrc to ~/.vimrc..."
        cp .vimrc ~/.vimrc
    fi

    # Add extra setup things later if needd

    # Done
    echo "-- Done!"
fi

