#!/usr/bin/env bash

# dotfiles/linker.sh
# copies dotfiles to home directory

# print out script name
printf "##############################\n"
printf "# Linker                     #\n"
printf "##############################\n"

function linker() {
    # copy zsh dotfiles
    cp -f $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc
    cp -f $HOME/dotfiles/zsh/.hushlogin $HOME/.hushlogin
    cp -fr $HOME/dotfiles/zsh/.zsh $HOME/.zsh

    # copy screen dotfiles
    cp -f $HOME/dotfiles/screen/.screenrc $HOME/.screenrc

    # copy vim dotfiles
    cp -f $HOME/dotfiles/vim/.vimrc $HOME/.vimrc
    cp -fr $HOME/dotfiles/vim/.vim $HOME/.vim

    # copy wget dotfiles
    cp -f $HOME/dotfiles/wget/.wgetrc $HOME/.wgetrc

    # copy git dotfiles
    cp -f $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
    cp -f $HOME/dotfiles/git/.gitignore_global $HOME/.gitignore_global
    cp -f $HOME/dotfiles/git/.stCommitMsg $HOME/.stCommitMsg

    # copy atom dotfiles
    cp -fr $HOME/dotfiles/atom/.atom $HOME/.atom
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    linker;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		linker;
	fi;
fi
