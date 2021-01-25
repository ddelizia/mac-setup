#!/bin/bash
set -e

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# SdkMan
curl -s "https://get.sdkman.io" | bash
sdk install java

# Install brew packages
xargs brew install < data/brew.data
xargs brew cask install < data/brew-cask.data

# Visual studio code
xargs code --install-extension < data/code.data
