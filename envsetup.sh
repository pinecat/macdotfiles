#!/usr/bin/env bash

# dotfiles/envsetup.sh
# copies dotfiles to home directory

# print out script name
printf "##############################\n"
printf "# Envsetup                   #\n"
printf "##############################\n"

# install zsh
brew install zsh zsh-completions

# install oh-my-szh via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
$HOME/fonts/install.sh
rm -rf $HOME/dotfiles/fonts

# install auto suggestions plugin for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install color schemes for iterm2 (will still need to be imported)
git clone https://github.com/mbadolato/iTerm2-Color-Schemes ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/iterm2-colors/

# set default shell to zsh
chsh -s /bin/zsh
