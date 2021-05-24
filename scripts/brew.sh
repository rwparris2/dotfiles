#!/bin/bash -x

# Install command-line tools using Homebrew.

###################
# Set up homebrew #
###################

# Install Homebrew
if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# Make sure we’re using the latest Homebrew.
echo 'Updating Homebrew'
brew update

# taps
brew tap homebrew/cask-versions

# Upgrade any already-installed formulae.
echo 'Upgrading any already-installed formulae'
brew upgrade

#########################
# Generic brew packages #
#########################

# Installing packages
echo 'Installing packages'

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# install GNU coreutils ... commands that conflict with built-in mac utils will be prefixed with "g" e.g. gsed vs sed
brew install coreutils

# Install more recent versions of some macOS tools.
brew install wget
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

# cat replacement https://github.com/sharkdp/bat
brew install bat

# grep replacement
brew install ripgrep

# install some extra git tools
brew tap PotatoLabs/homebrew-git-redate
brew install git-redate

# libpq brings tools such as psql and pg_dump without having the full postgres installed
brew install libpq
brew link --force libpq

##################
# Node & Friends #
##################

# nodejs
# install node using nvm (node version manager)
echo 'Installing Node & friends'
brew install nvm
mkdir ~/.nvm
# the following 3 lines need to be in .zsrch or .zprofile as well
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
nvm install node # install latest node
nvm install --lts # install lts node

# vuejs
npm i -g @vue/cli --prefer-offline --no-audit
npm i -g vite --prefer-offline --no-audit

# prettier keeps javascript code formatted in a pretty way https://prettier.io/
npm i -g prettier --prefer-offline --no-audit
# eslint is a static linter for javascript https://eslint.org/
npm i -g eslint --prefer-offline --no-audit
# simple static file server (good for testing e.g. a simple index.html) github.com/zeit/serve
npm i -g serve --prefer-offline --no-audit

##################
# Java & Friends #
##################

echo 'Installing Java & friends'
# java
brew tap adoptopenjdk/openjdk
brew install --cask adoptopenjdk8
brew install --cask adoptopenjdk11 
brew install --cask adoptopenjdk15
brew install --cask adoptopenjdk16
brew install maven
brew install gradle
# java application profiler
brew install --cask jprofiler

# mvnd faster maven builds https://github.com/mvndaemon/mvnd
# Users that use oh-my-zsh often use completion for maven. The default maven completion plugin defines mvnd as an alias to mvn deploy. So before being able to use mvnd, you need to unalias using the following command: `unalias mvnd` 
brew install mvndaemon/mvnd/mvnd

######################
# Configure Terminal #
######################

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

########
# Apps #
########

echo 'Installing Casks'

# common apps
brew install --cask discord
brew install --cask slack
brew install --cask docker
brew install --cask sourcetree
brew install --cask spotify
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask dropbox
brew install --cask firefox-developer-edition
brew install --cask webex
brew install --cask steam
brew install --cask microsoft-office

# time tracking app https://www.rescuetime.com/
brew install --cask rescuetime

# postman alternative https://github.com/warmuuh/milkman
brew install --cask milkman

# launch different browsers/profiles based on rules https://www.choosyosx.com/
brew install --cask choosy

# prevent osx from locking or going to sleep
brew install --cask caffeine

# torrents
brew install --cask transmission

# window management app https://github.com/rxhanson/Rectangle
brew install --cask rectangle

# Remove outdated versions from the cellar.
echo 'Brew cleanup'
brew cleanup
