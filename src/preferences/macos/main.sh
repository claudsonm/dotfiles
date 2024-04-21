#!/bin/bash

. "src/utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# General UI/UX

execute "osascript -e 'tell application \"System Preferences\" to quit'" \
	"Close any open System Preferences panes, to prevent them from overriding"

execute "defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2" \
	"Set Finder sidebar icon size to medium"

execute "defaults write NSGlobalDomain NSWindowResizeTime -float 0.001" \
	"Increase window resize speed for Cocoa applications"

execute "defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true" \
	"Expand save panel by default"
execute "defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true" \
	"Expand save panel by default"

execute "defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true" \
	"Expand print panel by default"
execute "defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true" \
	"Expand print panel by default"

execute "defaults write com.apple.LaunchServices LSQuarantine -bool false" \
	"Disable the 'Are you sure you want to open this application?' dialog"

execute "defaults write com.apple.helpviewer DevMode -bool true" \
	"Set Help Viewer windows to non-floating mode"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Trackpad, mouse, keyboard, Bluetooth accessories, and input

execute "defaults write -g com.apple.mouse.scaling 17" \
    "Increase the mouse speed"

execute "defaults write -g com.apple.swipescrolldirection -bool false" \
	"Disables the natural swipe scroll movement"

execute "defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true" \
	"Enables general tap to click behavior"
execute "sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true" \
	"Enables tab to click for the Magic Trackpad"
execute "sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1" \
	"Support for tap to click at the login screen"
execute "sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1" \
	"Support for tap to click at the boot screen"

execute "sudo defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true" \
	"Use scroll gesture with the Ctrl (^) modifier key to zoom"
execute "sudo defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144" \
	"Use scroll gesture with the Ctrl (^) modifier key to zoom"

execute "defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false" \
	"Disable press-and-hold for keys in favor of key repeat"

execute "defaults write NSGlobalDomain KeyRepeat -int 2" \
	"Set a blazingly fast keyboard repeat rate"
execute "defaults write NSGlobalDomain InitialKeyRepeat -int 15" \
	"Set a blazingly fast keyboard repeat rate"

execute "defaults write -g com.apple.keyboard.fnState -boolean true" \
	"Use F1, F2, etc. as standard function keys"

execute "defaults write -g NSAutomaticCapitalizationEnabled -boolean false" \
	"Disable automatically capitalization"
execute "defaults write -g NSAutomaticPeriodSubstitutionEnabled -boolean false" \
	"Disable double-spaces period substitution"

execute "defaults write NSGlobalDomain AppleLanguages -array \"pt-BR\" \"en\"" \
	"Setting preferred languages"
execute "defaults write NSGlobalDomain AppleLocale -string \"pt_BR\"" \
	"Setting locale"
execute "defaults write NSGlobalDomain AppleMeasurementUnits -string \"Centimeters\"" \
	"Setting measure unit"
execute "defaults write NSGlobalDomain AppleMetricUnits -bool true" \
	"Setting metric system "

execute "sudo systemsetup -settimezone \"America/Maceio\" > /dev/null" \
	"Set the timezone"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Finder

execute "defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false" \
	"Do not display icons for external hard drivers on desktop"
execute "defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false" \
	"Do not display icons for hard drivers on desktop"
execute "defaults write com.apple.finder ShowMountedServersOnDesktop -bool false" \
	"Do not display icons for mounted servers on desktop"
execute "defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false" \
	"Do not display icons for removable devices on desktop"

execute "defaults write com.apple.finder _FXShowPosixPathInTitle -bool true" \
    "Display full POSIX path as Finder window title"

execute "defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf'" \
    "When performing a search, search the current folder by default"

execute "defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true" \
    "Avoid creating .DS_Store files on network volumes"

execute "defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true" \
    "Avoid creating .DS_Store files on USB volumes"

execute "defaults write NSGlobalDomain com.apple.springing.enabled -bool true" \
	"Enable spring loading for directories"

# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`, `Nlsv`
execute "defaults write com.apple.finder FXPreferredViewStyle -string \"clmv\"" \
	"Use column view in all Finder windows by default"

execute "chflags nohidden ~/Library" "Show the ~/Library folder"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Dock, Dashboard, and hot corners   

execute "defaults write com.apple.dock tilesize -int 44" \
	"Set the icon size of Dock items to 44 pixels"

execute "defaults write com.apple.dock magnification -bool true" \
	"Enable magnification effect when hovering icons"
execute "defaults write com.apple.dock largesize -int 75" \
	"Adjust magnification size"

execute "defaults write com.apple.dock mineffect -string \"genie\"" \
	"Change minimize/maximize window effect"

execute "defaults write com.apple.dock minimize-to-application -bool true" \
	"Minimize windows into their application’s icon"

execute "defaults write com.apple.dock show-process-indicators -bool true" \
	"Show indicator lights for open applications in the Dock"

execute "defaults write com.apple.dashboard mcx-disabled -bool true" \
	"Disable Dashboard"

execute "defaults write com.apple.dock dashboard-in-overlay -bool true" \
	"Don’t show Dashboard as a Space"

execute "defaults write com.apple.dock show-recents -bool false" \
	"Don’t show recent applications in Dock"

execute "defaults write com.apple.dock expose-group-apps -bool true" \
	"Group windows by app"

execute "defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false" \
	"Disable standard click to show desktop"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Applications

execute "defaults write com.googlecode.iterm2 PromptOnQuit -bool false" \
	"Don’t display the annoying prompt when quitting iTerm"
