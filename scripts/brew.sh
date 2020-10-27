#!/bin/bash -x

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
brew upgrade --cask

# add some default taps
echo 'Adding taps'
brew tap homebrew/bundle
brew tap homebrew/cask
brew tap homebrew/cask-versions

# Installing packages
echo 'Installing packages'

# Install `wget` with IRI support.
brew install wget --enable-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# install GNU coreutils ... commands that conflict with built-in mac utils will be prefixed with "g" e.g. gsed vs sed
brew install coreutils

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
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11
brew cask install adoptopenjdk15
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

# ZSH  
echo 'Install ZSH'
brew install zsh
# install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install powerlevel10k (config will run on first launch)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# zsh plugins
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo 'Installing Casks'

# install quick view plugins to make osx finder quick view / preview better
brew cask install qquicklookase qlvideo qlcolorcode qlimagesize qlmarkdown qlstephen webpquicklook quicklook-json

# osx keeps bitchin about the QLMarkdown preview thing
xattr -rd ~/Library/QuickLook/QLMarkdown.qlgenerator

brew cask install discord
brew cask install docker
brew cask install flux
brew cask install postman
brew cask install sourcetree
brew cask install spotify
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install vlc
brew cask install dropbox
brew cask install rescuetime
brew cask install firefox-developer-edition

# prevent osx from locking or going to sleep
brew cask install caffeine

# java application profiler
brew cask install jprofiler

# torrents
brew cask install transmission

# window management app https://github.com/rxhanson/Rectangle
brew cask install rectangle

# Remove outdated versions from the cellar.
echo 'Brew cleanup'
brew cleanup
