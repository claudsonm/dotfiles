#!/bin/bash

. "src/utils.sh"
. "src/install/ubuntu/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

install_package "PHP 7.4" "php7.4"

install_package "PHP 7.4 Extensions" "php7.4-{curl,mbstring,xml,mysql,sqlite3,zip}"

install_package "PHP PEAR" "php-pear"

install_package "PHP Dev" "php-dev"

execute "sudo pecl install xdebug -y" "PHP XDebug extension"

export COMPOSER_HOME=$HOME/.composer
install_package "Composer" "composer"

install_package "Node" "nodejs"

install_package "Yarn" "yarn"

install_package "Redis" "redis-server"
#execute "sudo printf '\n' | pecl install redis" "PHP Redis extension"

install_package "MySQL" "mysql-server"

install_package "SQLite" "sqlite3"

install_package "Git Flow AVH" "git-flow"

install_package "Gitk" "gitk"

execute "composer global require laravel/installer" "Laravel Installer"

execute "composer global require cpriego/valet-linux" "Valet (downloading)"

execute "$HOME/.composer/vendor/bin/valet install" "Valet (installing)"
