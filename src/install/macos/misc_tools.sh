#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "Ack" "ack"
brew_install "HTTPie" "httpie"
brew_install "Wget" "wget"
brew_install "Mac App Store CLI" "mas"
brew_install "Mackup" "mackup"
brew_install "Tree" "tree"
brew_install "Readline wrapper" "rlwrap"
