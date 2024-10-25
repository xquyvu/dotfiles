#!/usr/bin/env bash

app_configs_dir="./app_configs"

###############################################################################
# Git                                                                         #
###############################################################################

cp .gitconfig ~/.gitconfig

###############################################################################
# File explorer                                                               #
###############################################################################
# Setting Nimble Commander as default file viewer

defaults write -g NSFileViewer -string info.filesmanager.Files-Lite;
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="info.filesmanager.Files-Lite";}'

# Then restart your Mac. The second command is required in order to open folders in ForkLift by pressing Enter in Alfred.

# To change it back to Finder, use the following command then restart your Mac:
# defaults delete -g NSFileViewer
# defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.apple.finder";}'

# If you set Nimble Commander as the default file viewer and you remove it from your system, Finder will automatically become the default one.

###############################################################################
# JSON-based app configs                                                      #
###############################################################################

cp "$app_configs_dir/karabiner.json" ~/.config/karabiner/karabiner.json # karabiner
mkdir -p ~/Library/"Application Support"/Rectangle && cp "$app_configs_dir/RectangleConfig.json" "$_" # rectangle
mkdir -p ~/Library/"Application Support"/"YouTube Music" && cp "$app_configs_dir/youtube_music.json" "$_/config.json" # Youtube Music

###############################################################################
# Zsh                                                                         #
###############################################################################

cp .zshrc ~/.zshrc

###############################################################################
# Python                                                                      #
###############################################################################

sh ./.python

###############################################################################
# Keysmith                                                                    #
###############################################################################

open "$app_configs_dir/macros.keysmith"

###############################################################################
# EV Key                                                                      #
###############################################################################

defaults write com.lamquangminh.evkey AutoStart -int 1
defaults write com.lamquangminh.evkey NSound -int 0
defaults write com.lamquangminh.evkey SGui -int 0
defaults write com.lamquangminh.evkey ForceEx -int 1 # Prevent letters for disappearing when adding punctuation in certain apps
