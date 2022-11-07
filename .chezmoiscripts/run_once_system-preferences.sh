#!/usr/bin/env zsh

set -euo pipefail

defaults write NSGlobalDomain AppleLocale en_BR


# Sets Caps Lock to Escape
# https://developer.apple.com/library/archive/technotes/tn2450/_index.html
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000029}]}'

# Dock
## Autohide
defaults write com.apple.dock "autohide" -bool "true"

killall Dock

# Finder
## Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"
## Show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
## Allow quitting
defaults write com.apple.finder "QuitMenuItem" -bool "true"

killall Finder
