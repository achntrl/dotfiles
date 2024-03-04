#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.


# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

# homebrew packages

FORMULAS=(
    autoconf
    automake
    caskroom/cask/brew-cask
    cmake
    coreutils
    fzf
    gcc
    git
    kube-ps1
    mercurial
    mongodb
    mysql
    node
    openssl
    postgresql
    python
    python3
    rsync
    rust
    screenfetch
    sqlite
    wget
    zsh
    gpg2
    gnupg
    pinentry-mac
)

CASKS=(
    alfred
    bartender
    bettertouchtool
    calibre
    contexts
    firefox
    flux
    iterm2
    telegram
    the-unarchiver
    vlc
    wireshark
)


brew install ${FORMULAS[@]}

#brew update

brew install --cask --appdir="/Applications" ${CASKS[@]}

brew cleanup
