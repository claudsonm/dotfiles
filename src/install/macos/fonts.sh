#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

execute "brew install --cask font-inconsolata" "Inconsolata"

execute "brew install --cask font-jetbrains-mono" "Jetbrains Mono"

execute "brew install --cask font-cascadia-code" "Cascadia Code"
