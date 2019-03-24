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
        rm -r ~/.config/i3
    ln -s $CUR_DIR/i3 $HOME/.config/i3
}

Bash() {
    ([ -f $HOME/.pretty_colors.sh ] || [ -l $HOME/.pretty_colors.sh ]) && \
        rm $HOME/.pretty_colors.sh
    ln -s $CUR_DIR/bash/pretty_colors.sh $HOME/.pretty_colors.sh

    [[ -f ~/.bashrc ]] && \
        cp ~/.bashrc ~/.bashrc.original && \
        rm ~/.bashrc
    ln -s $CUR_DIR/bash/bashrc ~/.bashrc
}

Vim() {
    [[ -f ~/.vimrc ]] && \
        cp ~/.vimrc ~/.vimrc.original && \
        rm ~/.vimrc

    ([[ -d ~/.vim ]] && [[ -L ~/.vim ]]) && \
    	rm -r ~/.vim

    ln -s $CUR_DIR/vim $HOME/.vim
    ln -s $CUR_DIR/vim/vimrc ~/.vimrc
}


Bash
i3
Vim
