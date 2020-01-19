#!/bin/bash

. "src/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Finder\n\n"

execute "defaults write com.apple.finder _FXShowPosixPathInTitle -bool true" \
    "Display full POSIX path as Finder window title"

execute "defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'" \
    "When performing a search, search the current folder by default"

execute "defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true" \
    "Avoid creating .DS_Store files on network volumes"
