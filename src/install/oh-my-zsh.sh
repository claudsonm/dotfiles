#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

rm -rf $HOME/.oh-my-zsh
execute \
    "curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh" \
    "Oh My Zshell"

execute \
    "sudo chsh -s $(which zsh)" \
    "Making Oh My Zsh the default shell"
