#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Casks\n\n"

brew_install "Quick Look JSON" "quicklook-json" "homebrew/cask" "cask"
brew_install "Quick Look CSV" "quicklook-csv" "homebrew/cask" "cask"
brew_install "Quick Look Color Code" "qlcolorcode" "homebrew/cask" "cask"
brew_install "Quick Look MD" "qlmarkdown" "homebrew/cask" "cask"
brew_install "Quick Look Stephen" "qlstephen" "homebrew/cask" "cask"

brew_install "Google Chrome" "google-chrome" "homebrew/cask" "cask"
brew_install "Deezer" "deezer" "homebrew/cask" "cask"

brew_install "PhpStorm" "phpstorm" "homebrew/cask" "cask"
brew_install "VS Code" "visual-studio-code" "homebrew/cask" "cask"
brew_install "TablePlus" "tableplus" "homebrew/cask" "cask"
brew_install "iTerm 2" "iterm2" "homebrew/cask" "cask"
brew_install "Postman" "postman" "homebrew/cask" "cask"
brew_install "Alfred" "alfred" "homebrew/cask" "cask"
brew_install "GitHub Desktop" "github" "homebrew/cask" "cask"
brew_install "Docker Desktop" "docker" "homebrew/cask" "cask"
brew_install "Notion" "notion" "homebrew/cask" "cask"
brew_install "Discord" "discord" "homebrew/cask" "cask"

execute "mas install 595191960" "CopyClip - Clipboard History"
execute "mas install 823766827" "OneDrive"
execute "mas install 803453959" "Slack"
execute "mas install 441258766" "Magnet"