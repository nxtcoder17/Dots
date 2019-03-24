#! /bin/bash

if [ -f $HOME/.pretty_colors.sh ] || [ -L $HOME/pretty_colors.sh ]
then
    source $HOME/.pretty_colors.sh
else
    echo "You don't have the attached color generator script in your $HOME"
    exit 1
fi

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
#       UNICODE GLYMPHS
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
DIR_ICON=$(echo -e $'\uf07c ')          #  : f07c
ARCH_ICON=$(echo -e $'\uf303')          #  : f303
HOUR_GLASS=$(echo -e '\uf252 ')         #  : f252
SEP=$(echo -e $'\ue0b0')                #  : e0b0


#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
#       PROMPT COMPONENTS
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
DIRECTORY="\[${BOLD}${RED}${white}\] ${DIR_ICON} \w \[${RESET}${WHITE}${red}\]"
TIME="\[${BOLD}${WHITE}${red}\]${HOUR_GLASS} \$(date +%H:%M:%S) \[$RESET${RED}\]"
NORMAL_USER="\[${RESET}${BOLD}${BLACK}${cyan}\]\ ${ARCH_ICON} \u \[${RESET}${CYAN}\]\[$RESET\]"

DIRECTORY="\[${BOLD}${RED}${white}\] ${DIR_ICON} \w \[${WHITE}${red}\]${SEP}"
TIME="\[${BOLD}${WHITE}${red}\]$HOUR_GLASS \$(date +%H:%M:%S) \[${RESET}$RED\]${SEP}"
USER="\n\[${BOLD}${BLACK}${cyan}\] $ARCH_ICON \u \[${RESET}${CYAN}\]${SEP}"

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
#       PROMPT
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
PS1="$DIRECTORY"
PS1+=" $TIME"
PS1+="$USER "
PS1+="\[$RESET\]"
# PS1+="$NORMAL_USER "
export PS1
# export PS1="$DIRECTORY $TIME\n$NORMAL_USER \[$RESET\]"
