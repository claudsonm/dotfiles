#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

brew_install "Composer" "composer"

brew_install "Node" "node"
# execute "sudo chown -R $(whoami) $(brew --prefix)" "Changing ownership of brew apps folder"
# brew link --overwrite node

brew_install "PHP Latest (8.*)" "php"

brew_install "PHP 7.2" "php@7.2"

brew_install "PHP 7.4" "php@7.4"
execute "brew unlink php && brew link php@7.4" "Switching to PHP 7.4"
execute "brew services start php@7.4" "Starting PHP 7.4 service"

execute "printf '\n' | pecl install xdebug" "Xdebug PEAR extension"

brew_install "Redis" "redis"
execute "brew services start redis" "Starting Redis service"

execute "printf '\n' | pecl install redis" "Redis PEAR extension"

execute "printf '\n' | pecl install mongodb" "MongoDB PEAR extension"

brew_install "MySQL" "mysql"
execute "brew services start mysql" "Starting MySQL service"
execute "sleep 5" "Waiting MySQL services to be ready..."
execute "sudo rm -f /tmp/mysql.sock.lock" "Deleting possible socket lock file"
execute "mysql -u root -e \"ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY ''; FLUSH PRIVILEGES;\"" "Updating MySQL authentication driver"

brew_install "Yarn" "yarn"

execute "composer global require laravel/installer" "Laravel Installer"

execute "composer global require laravel/valet" "Laravel Valet (downloading)"

execute "$HOME/.composer/vendor/bin/valet install" "Laravel Valet (installing)"

brew_install "GitHub CLI" "gh"

brew_install "Terraform" "terraform"

brew_install "AWS CLI" "awscli"

brew_install "AWS Elastic Kubernetes Service CLI" "weaveworks/tap/eksctl" "weaveworks/tap"

brew_install "AWS Elastic Beanstalk CLI" "awsebcli"

brew_install "Graphviz" "graphviz"
