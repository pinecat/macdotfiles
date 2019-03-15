# make vim the default editor
export EDITOR='vim';
export GEDITOR='atom';

# prefer US english and use utf-8
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# export go paths
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# export zsh paths
export ZSH="/Users/rory/.oh-my-zsh"

fpath=(/usr/local/share/zsh-completions $fpath)
