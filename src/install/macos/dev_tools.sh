#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

brew_install "Composer" "composer"

brew_install "Node" "node"

brew_install "PHP 7.2" "php@7.2"

brew_install "PHP 7.4" "php@7.4"
execute "brew services start php@7.4" "Starting PHP 7.4 service"

execute "printf '\n' | pecl install xdebug" "Xdebug PEAR extension"

brew_install "Redis" "redis"
execute "brew services start redis" "Starting Redis service"

execute "printf '\n' | pecl install redis" "Redis PEAR extension"

brew_install "MySQL 5.7" "mysql@5.7"
execute "brew link mysql@5.7 --force" "Linking MySQL binaries"
execute "brew services start mysql@5.7" "Starting MySQL service"

brew_install "Yarn" "yarn"

execute "composer global require laravel/installer" "Laravel Installer"

execute "composer global require laravel/valet" "Laravel Valet (downloading)"

execute "$HOME/.composer/vendor/bin/valet install" "Laravel Valet (installing)"
