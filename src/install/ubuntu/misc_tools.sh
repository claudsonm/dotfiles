#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

ohmyzsh_install() {
    rm -rf $HOME/.oh-my-zsh
    execute \
        "curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh" \
        "Oh My Zshell"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "xclip" "xclip"
install_package "Vim" "vim"
install_package "Z Shell" "zsh"

ohmyzsh_install
