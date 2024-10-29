#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install brew

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install apps

brew install --cask alt-tab
brew install --cask karabiner-elements
brew install --cask github # Github desktop
brew install --cask alfred
brew install --cask visual-studio-code
brew install --cask rectangle
brew install duti
brew install --cask notion
brew install --cask shortcat
brew install --cask keysmith
brew install --cask opera
brew install --cask drawio
brew install --no-quarantine --cask th-ch/youtube-music/youtube-music
brew install --no-quarantine --cask evkey
brew install --no-quarantine --cask hiddenbar
brew install --cask displaylink

# Optional apps
brew install --cask logi-options+

# Python
brew install pyenv
brew install pyenv-virtualenv
brew install openssl readline xz
brew install uv

pyenv install 3.11 3.12 3.13
pyenv global 3.11
pyenv virtualenv everything

# Configure zshrc to work with pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> .zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> .zshrc
echo 'eval "$(pyenv init --path)"' >> .zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> .zshrc
echo 'eval "$(pyenv init -)"' >> .zshrc

# Remove outdated versions from the cellar.
brew cleanup

# Install other apps
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
