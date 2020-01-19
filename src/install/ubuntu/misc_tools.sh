#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "xclip" "xclip"
install_package "Wget" "wget"
install_package "HTTPie" "httpie"
install_package "Vim" "vim"
install_package "Ack" "ack"
install_package "Z Shell" "zsh"
