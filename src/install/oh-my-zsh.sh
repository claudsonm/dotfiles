#!/bin/bash

. "src/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

rm -rf $HOME/.oh-my-zsh
execute \
    "curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh" \
    "Oh My Zshell"

execute \
    "sudo chsh -s $(which zsh)" \
    "Making Oh My Zsh the default shell"

execute \
    "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" \
    "Cloning Oh My ZSH powerlevel10k theme"
