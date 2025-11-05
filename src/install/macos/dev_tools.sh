#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Development Tools\n\n"

execute "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash" "Node Version Manager (NVM)"
# execute "sudo chown -R $(whoami) $(brew --prefix)" "Changing ownership of brew apps folder"
# brew link --overwrite node

brew_install "PHP Latest" "php"

brew_install "Composer" "composer"

brew_install "PHP 8.1" "php@8.1"

# Using alternative repository to install older versions of PHP
# brew_tap "shivammathur/php"
# brew_install "PHP 7.4" "shivammathur/php/php@7.4"
# execute "brew unlink php && brew link php@7.4" "Switching to PHP 7.4"
# execute "brew services start shivammathur/php/php@7.4" "Starting PHP 7.4 service"

execute "printf '\n' | pecl install xdebug" "Xdebug PEAR extension"

brew_install "Redis" "redis"
execute "brew services start redis" "Starting Redis service"

execute "printf '\n' | pecl install redis" "Redis PEAR extension"

execute "printf '\n' | pecl install mongodb" "MongoDB PEAR extension"

brew_install "MySQL" "mysql"
execute "brew services start mysql" "Starting MySQL service"
execute "sleep 5" "Waiting MySQL services to be ready..."
execute "sudo rm -f /tmp/mysql.sock.lock" "Deleting possible socket lock file"
# execute "mysql -u root -e \"ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY ''; FLUSH PRIVILEGES;\"" "Updating MySQL authentication driver"

brew_install "Yarn" "yarn"

execute "composer global require laravel/installer" "Laravel Installer"

execute "composer global require laravel/valet" "Laravel Valet (downloading)"

execute "$HOME/.composer/vendor/bin/valet install" "Laravel Valet (installing)"

brew_install "GitHub CLI" "gh"

brew_install "Color CAT" "ccat"

brew_install "AWS CLI" "awscli"

brew_install "AWS Elastic Kubernetes Service CLI" "weaveworks/tap/eksctl" "weaveworks/tap"

brew_install "AWS Elastic Beanstalk CLI" "awsebcli"

brew_install "Graphviz" "graphviz"

brew_install "Steampipe" "turbot/tap/steampipe"

brew_install "Powerpipe" "turbot/tap/powerpipe"

brew_install "Ruby Build" "ruby-build"

brew_install "Ruby Env" "rbenv"

execute "brew install --cask docker-desktop" "Docker Desktop"

brew_install "Krew" "krew"

brew_install "TF Env" "tfenv"

brew_install "Kustomize" "kustomize"

brew_install "k3d" "k3d"

brew_install "Helm" "helm"

brew_install "ArgoCD" "argocd"

brew_install "kubectx + kubens" "kubectx"

brew_install "Pre Commit" "pre-commit"

brew_install "YAML Lint" "yamllint"

brew_install "Shell Check" "shellcheck"

brew_install "BTOP" "btop"

brew_install "Python Version Management" "pyenv"

execute "brew install --cask gcloud-cli" "Google Cloud CLI"

execute "brew install --cask keybase" "Keybase"
