#!/bin/bash

echo "Setting up your Computer..."

# Check for Homebrew and install if we don't have it
if [[ $(command -v brew) == "" ]]; then 
	echo "Installing Homebrew.. "
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Updating Homebrew.. "
	brew update
fi

# To install all the software, add it to .Brewfile and run:
brew bundle --global