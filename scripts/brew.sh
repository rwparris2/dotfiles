#!/usr/bin/env bash

# from mathiasbynens/dotfiles

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install python3

# just some shit i like
brew install git
brew install git-lfs
brew install rename
brew install ssh-copy-id
brew install tree
brew install thefuck
brew install lolcat
brew install cowsay
brew install bat
brew install tmux
brew install ripgrep
brew install zsh-completions
brew install maven
brew install tldr
brew install node

# install quick view plugins to make osx finder quick view / preview better
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# install some extra git tools
brew tap PotatoLabs/homebrew-git-redate
brew install git-redate

# Remove outdated versions from the cellar.
brew cleanup
