#!/bin/bash

. "src/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • System Preferences\n"

"./src/preferences/$(get_os)/main.sh"
