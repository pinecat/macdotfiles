#!/usr/bin/env bash

# .macos/brew.sh
# installs brew, then installs all the programs and software i need from brew

# print out script name
printf "##############################\n"
printf "# Brew                       #\n"
printf "##############################\n"

function brewer() {
    # install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    # add cask to brew
    brew tap caskroom/cask

    # install programs from brew
    brew install ruby
    brew install go
    brew install lua
    brew install node # this also installs npm
    brew install gcc
    brew install vim
    brew install curl
    brew install wget
    brew install git
    brew install grep
    brew install gzip
    brew install neofetch
    brew install nmap
    brew install tnftp
    brew install tnftpd
    brew install telnet
    brew install telnetd
    brew install coreutils
    brew install screen
    brew install htop

    # install programs from cask
    brew cask install java
    brew cask install alfred
    brew cask install iterm2
    brew cask install atom
    brew cask install google-chrome
    brew cask install firefox
    brew cask install discord
    brew cask install spotify
    brew cask install transmission
    brew cask install vlc
    brew cask install steam
    brew cask install eclipse-java
    brew cask install sourctree
}

function dmginstall() {
    # install caffeine
    hdiutil attach $HOME/.macos/dmg/Caffeine.dmg
    cp -r /Volumes/Caffeine/Caffeine.app /Applications/Caffeine.app
    hdiutil detach /Volumes/Caffeine

    # install AudioInjectorX
    hdiutil attach $HOME/.macos/dmg/AudioInjectorX.dmg
    cp -r /Volumes/AudioInjectorX/AudioInjectorX.app /Applications/AudioInjectorX.app
    cp /Volumes/AudioInjectorX/2hz.aif $HOME/Library/Sounds/2hz.aif
    hdiutil detach /Volumes/AudioInjectorX
}

brewer;
dmginstall;
neofetch;


# https://github.com/mbadolato/iTerm2-Color-Schemes # colors for iterm2
# https://github.com/powerline/fonts                # powerline fonts for agnastor
# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH # installing zsh
# https://github.com/robbyrussell/oh-my-zsh         # installng oh-my-zsh
