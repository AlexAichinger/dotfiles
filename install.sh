#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  ./zsh/setup.sh
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ./brew/install.sh
fi

# Setup Brew and install everything
./brew/setup.sh

# Create a projects directories
mkdir $HOME/dev
mkdir $HOME/dev/code

# Clone Github repositories
#./clone.sh

# Set macOS preferences - we will run this last because this will reload the shell
source ./.macos