#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Git\n\n"

brew_install "Git" "git"
brew_install "Git Flow" "git-flow-avh"
brew_install "Gitk" "git-gui"
execute "git config --global user.name \"Claudson Martins\"" "Git global name adjustment"
execute "git config --global user.email \"claudson@outlook.com\"" "Git global email adjustment"
