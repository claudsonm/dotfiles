#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "ShellCheck" "shellcheck"
install_package "xclip" "xclip"
install_package "Vim" "vim"