#!/bin/bash

. "src/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Input & Output Devices\n\n"

execute "defaults write -g com.apple.mouse.scaling 16" \
    "Increase the mouse speed"

execute "defaults write -g ApplePressAndHoldEnabled -bool false" \
    "Disable the Character Pick so we can print the key while holding"
