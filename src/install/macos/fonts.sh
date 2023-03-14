#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

brew_install "Inconsolata" "font-inconsolata" "homebrew/cask-fonts"

brew_install "Jetbrains Mono" "font-jetbrains-mono" "homebrew/cask-fonts"

brew_install "Cascadia Code" "font-cascadia-code" "homebrew/cask-fonts"
