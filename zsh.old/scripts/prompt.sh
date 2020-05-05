#! /bin/zsh
ARCH=$(echo -e $'\uf303')           #  : f303
DIR=$(echo -e $'\uf07c')            #  : f07c
ARROW=$(echo -e $'\uf054')          #  : f054
HAND_RIGHT=$(echo -e $'\uf0a4')     #  : f0a4
FLAME=$(echo -e $'\uf490')          #  : f490
GIT_LOGO=$(printf '\uf1d3')

setopt PROMPT_SUBST

# Building a ZSH Prompt
# PS1='%F{#2bb1ff}   %2~  '
PS1='%B%F{#ff6a00} $DIR  %2~ '
PS1+='%F{#ff4255} $HAND_RIGHT %F{#9c9798} %* %f'
PS1+='$(git_branch)%f'
PS1+='$(gitInfo)%f'
PS1+=$'%b\n'
PS1+='%F{#5b91d4} $ARCH  %F{#2bffdc}%n %F{#ffff00}$FLAME  %f'

export PS1
