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

TAPS=(
    homebrew/binary
    homebrew/dupes
    homebrew/versions
    homebrew/science
    caskroom/cask
    caskroom/versions
    caskroom/fonts
)

FORMULAS=(
    autoconf
    automake
    caskroom/cask/brew-cask
    cmake
    coreutils
    gcc
    git
    kwm
    mercurial
    mongodb
    mysql
    node
    openssl
    postgresql
    python
    python3
    r
    rsync
    rust
    screenfetch
    sqlite
    wget
    zsh
)

FONTS=(
  font-source-code-pro-for-powerline
  font-source-code-pro
  font-roboto
)

CASKS=(
    1password
    airfoil
    alfred
    atom
    bettertouchtool
    calibre
    cheatsheet
    dash
    dropbox
    evernote
    firefox
    flux
    github-desktop
    google-chrome
    google-drive
    google-hangouts
    google-photos-backup
    iterm2
    java
    osxfuse
    skitch
    skype
    slack
    sourcetree
    spotify
    steam
    sublime-text
    sublime-text3
    telegram
    the-unarchiver
    vagrant
    virtualbox
    vlc
    xquartz
    wireshark
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew install ${FORMULAS[@]}

#brew update

brew cask install --appdir="/Applications" ${CASKS[@]}

brew cask install ${FONTS[@]}

# Special cases that need flags...
brew install macvim --env-std --with-override-system-vim --with-cscope --with-lua --HEAD

brew linkapps macvim

brew cleanup

brew cask cleanup

