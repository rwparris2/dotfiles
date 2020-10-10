#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install Homebrew
echo 'Installing Homebrew'
if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# Make sure we’re using the latest Homebrew.
echo 'Updating Homebrew'
brew update

# Upgrade any already-installed formulae.
echo 'Upgrading any already-installed formulae'
brew upgrade

# add some default taps
echo 'Adding taps'
brew tap homebrew/bundle
brew tap homebrew/cask
brew tap homebrew/cask-versions

# Installing packages
echo 'Installing packages'

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install python3
brew install git
brew install git-lfs
brew install curl

# just some shit i like
brew install tree
brew install thefuck
brew install lolcat
brew install cowsay
brew install tldr

# copy ssh keys to servers
# https://www.ssh.com/ssh/copy-id
brew install ssh-copy-id

# command line fuzzy-finder https://github.com/junegunn/fzf
brew install fzf

# nodejs
brew install node

# java
brew install maven

# install some extra git tools
brew tap PotatoLabs/homebrew-git-redate
brew install git-redate

# cat replacement https://github.com/sharkdp/bat
brew install bat

# grep replacement 
brew install ripgrep

# command line fuzzy-finder https://github.com/junegunn/fzf
brew install fzf

echo 'Installing Casks'

# install quick view plugins to make osx finder quick view / preview better
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo

brew cask install discord
brew cask install slack
brew cask install flux
brew cask install sublime-text
brew cask install spotify
brew cask install postman
brew cask install visual-studio-code
brew cask install vlc
brew cask install caffeine

# Remove outdated versions from the cellar.
echo 'Brew cleanup'
brew cleanup
