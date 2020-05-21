# This script is sourced from .zshrc

# general aliases
alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias ls='ls -G'
alias l='ls -lF'
alias dir='ls'
alias la='ls -lah'
alias ll='ls -l'
alias ls-l='ls -l'
alias j='jobs'
alias time='gtime --format "$(tput setab 255)$(tput setaf 160)took %es.$(tput sgr0)"'
alias vi='vim'
alias grep='grep -E --color'
alias ping='ping -c 3'
alias pstree='pstree -w'
alias c='pbcopy'
alias p='pbpaste'
alias pt='pbpaste | tee'
alias t='tee'
alias cl='clear;clear'
alias page='less -S'
alias start=open
alias ccat='ccat --bg=dark'
alias c.='code .'
alias code.='code .'
alias fd='fd --no-ignore'
alias ag='ag --hidden'

# docker aliases
alias d='docker'
alias dr='docker run --rm -i -t'
alias dx='docker exec -i -t'
alias db='docker build -t'

# git aliases
alias gc='_git_dbg commit -S -v -s'
alias gdc='_git_dbg diff --cached'
alias git='hub'
alias gpp='_git_dbg push ilkereroglu HEAD && hub pull-request --browse'
alias gpah='_git_dbg push ilkereroglu HEAD'
alias glah='_git_dbg pull ilkereroglu HEAD'
alias gfah='_git_dbg fetch ilkereroglu'
alias glom='_git_dbg pull origin master --tags'
alias gloh='_git_dbg pull origin HEAD --tags'
alias grom='_git_dbg rebase origin/master'
alias gpoh='_git_dbg push origin HEAD'
alias gbv="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
unalias grv