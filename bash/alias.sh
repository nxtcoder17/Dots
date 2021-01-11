#! /bin/bash

#########################################
### Alias Files
#########################################

# ls:
#     + use colors by default
#     + -h: Human Readable Sizes
#     + --group-directories-first: Group Directories First
#     + -p: Append / at the end of directory names
#     
alias ls='ls --color=auto -h --group-directories-first -p'

alias ec='emacsclient -ct'
alias eg='emacsclient -cn'

# mpv play audio songs, without dispalying the Album Art
alias mpv='mpv --no-audio-display'

alias pydm='python $HOME/Workspace/projects/PyDownloader/main.py'

