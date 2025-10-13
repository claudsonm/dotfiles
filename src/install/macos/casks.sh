#!/bin/bash

. "src/utils.sh"
. "src/install/macos/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Casks\n\n"

brew_install "Quick Look JSON" "quicklook-json"
brew_install "Quick Look CSV" "quicklook-csv"
brew_install "Quick Look Color Code" "qlcolorcode"
brew_install "Quick Look MD" "qlmarkdown"
brew_install "Quick Look Stephen" "qlstephen"

brew_install "Spotify" "spotify"

brew_install "PhpStorm" "phpstorm"
brew_install "VS Code" "visual-studio-code"
brew_install "TablePlus" "tableplus"
brew_install "iTerm 2" "iterm2"
brew_install "Postman" "postman"
brew_install "Alfred" "alfred"
brew_install "GitHub Desktop" "github"
brew_install "Discord" "discord"

execute "mas install 595191960" "CopyClip - Clipboard History"
execute "mas install 823766827" "OneDrive"
execute "mas install 803453959" "Slack"
execute "mas install 441258766" "Magnet"
execute "mas install 310633997" "WhatsApp"
execute "mas install 1295203466" "Windows App"
execute "mas install 1507246666" "Presentify"
