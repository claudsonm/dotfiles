#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Build Essentials\n\n"

# Install tools for compiling/building software from source.
install_package "Build Essential" "build-essential"

# Software which is not included by default
# in Ubuntu due to legal or copyright reasons.
#install_package "Ubuntu Restricted Extras" "ubuntu-restricted-extras"
