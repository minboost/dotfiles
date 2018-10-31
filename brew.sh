#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# General
brew install git
brew install bash-completions
brew install openssl
brew install imagemagick
brew install gnupg
brew install wget

# DevOps
brew install kubernetes-helm

# Python
brew install pyenv
brew install pyenv-virtualenv

# Go
brew install go

# JS
brew install node

# Remove outdated versions from the cellar.
brew cleanup
