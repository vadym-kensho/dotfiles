export ZSH=/Users/vadym/.oh-my-zsh
export EDITOR=vim
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

ZSH_THEME="robbyrussell"

plugins=(git bundler python web-search)
source $ZSH/oh-my-zsh.sh

# alias for the ssh process check
alias check_ssh="ps aux | grep ssh"

# edit .zshrc
alias zshrc='vim ~/.zshrc'
alias zsher='source ~/.zshrc'

# edit in vim
alias v="vim"
# edit in Atom
alias e='atom'

#edit .vimrc
alias vimrc='vim ~/.vimrc'

# run tests
alias utest='py.test tests/*.py'

#run tests with --runslow
alias tslow='py.test tests/*.py --runslow'

#run tests with t <filename> command
t () {
    fname=$1
    shift
    py.test tests/test_$fname.py --maxfail=1 "$@"
}

#remove .pyc files
alias rmpyc='find . -iname \*.pyc -delete'

#git aliases
alias g="git"
alias ga="git add"
alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git commit -m'

# open all files that contains matches to regex pattern in vim 
vgrep () {
    vim -p `git grep --name-only $1`
}

alias li="arc lint"

# title iTerm tabs
function title {
    echo -ne "\033]0;"$*"\007"
}

DISABLE_AUTO_TITLE="true"
title local
