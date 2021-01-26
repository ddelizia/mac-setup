#!/bin/bash
set -e


# SdkMan
curl -s "https://get.sdkman.io" | bash
sdk install java

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle innstall

# Visual studio code
xargs code --install-extension < data/code.data
