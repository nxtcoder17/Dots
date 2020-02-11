#! /bin/zsh

# Aliases
alias ls='ls --color=auto'


export PATH="$PATH:$HOME/builds/go/bin"
TZ='Asia/Kolkata'; export TZ

# AutoCompletion

autoload -Uz compinit
compinit

# Select Items from AutoCompl list, using Arrows
zstyle ':completion:*' menu select

# AutoCompletion of switches for aliases
setopt COMPLETE_ALIASES

# AutoCompletion with sudo
zstyle ':completion::complete:*' gain-privileges 1

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Building a ZSH Prompt
PS1='%F{#42ff91}   %2~  '
PS1+='%F{#dbf2aa} %T %f'
PS1+=$'\n'
PS1+=' %n  '

export PS1

