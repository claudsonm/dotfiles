#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./src/install/macos/xcode.sh
./src/install/macos/homebrew.sh

./src/install/macos/git.sh
./src/install/macos/misc_tools.sh
./src/install/oh-my-zsh.sh
./src/install/macos/dev_tools.sh
./src/install/macos/casks.sh
