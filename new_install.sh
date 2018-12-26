#! /bin/bash

# Tasks to be done
cat << Balor
            ############################################
            #    Script processes the following        #
            ############################################
            #            1. i3 setup                   #
            #            2. i3blocks setup             #
            #            3. Bash Setup                 # 
            #            4. Vim Setup                  #
            #            5. Tmux Setup                 #
            #            6. Mpd & Ncmpcpp Setup        #
            #            7. QuteBrowser Setup          #
            #            8. Zathura Setup              #
            ############################################
Balor

CUR_DIR=$(pwd)

i3() {
    ([[ -d ~/.config/i3 ]] || [[ -L ~/.config/i3 ]]) && \
        rm ~/.config/i3
}

Bash() {
    [[ -f ~/.bashrc ]] && \
        cp ~/.bashrc ~/.bashrc.original && \
        rm ~/.bashrc
    ln -s $CUR_DIR/bash/bashrc ~/.bashrc
}

Vim() {
    [[ -f ~/.vimrc ]] && \
        cp ~/.vimrc ~/.vimrc.original && \
        rm ~/.vimrc
    ln -s $CUR_DIR/vim/vimrc ~/.vimrc
}

