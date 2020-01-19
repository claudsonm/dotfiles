#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package "Network manager" "network-manager"
install_package "Network Security Service Libraries" "libnss3-tools"
install_package "JQ" "jq"
install_package "XSel" "xsel"
install_package "cURL" "curl"
