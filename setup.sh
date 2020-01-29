#!/bin/bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew..."
brew update

echo "Installing Git..."
brew install git

echo "Installing other brew stuff..."
brew install tree
brew install wget
brew install jq
brew install mysql-client
brew install sqlite
brew install telnet

echo "Cleaning up brew..."
brew cleanup

echo "Installing apps via brew cask..."
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" visual-studio-code
