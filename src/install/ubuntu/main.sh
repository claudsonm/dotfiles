#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
# upgrade

./src/install/ubuntu/build-essentials.sh
./src/install/ubuntu/dependencies.sh

./src/install/ubuntu/misc_tools.sh
./src/install/ubuntu/dev_tools.sh

./src/install/ubuntu/cleanup.sh
