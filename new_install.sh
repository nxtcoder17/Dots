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

setup_i3() {
    ([[ -d ~/.config/i3 ]] || [[ -L ~/.config/i3 ]]) && \
        rm -r ~/.config/i3
    ln -s $CUR_DIR/i3 $HOME/.config/i3

    # i3 Blocks 
    ([[ -d ~/.config/i3blocks ]] || [[ -L ~/.config/i3blocks ]]) && \
        rm -r ~/.config/i3blocks

    ln -s $CUR_DIR/i3blocks ~/.config/
}

setup_bash() {
    ([ -f $HOME/.pretty_colors.sh ] || [ -l $HOME/.pretty_colors.sh ]) && \
        rm $HOME/.pretty_colors.sh
    ln -s $CUR_DIR/bash/pretty_colors.sh $HOME/.pretty_colors.sh

    [[ -f ~/.bashrc ]] && \
        cp ~/.bashrc ~/.bashrc.original && \
        rm ~/.bashrc
    ln -s $CUR_DIR/bash/bashrc ~/.bashrc
}

setup_vim() {
    [[ -f ~/.vimrc ]] && \
        cp ~/.vimrc ~/.vimrc.original && \
        rm ~/.vimrc

    ([[ -d ~/.vim ]] && [[ -L ~/.vim ]]) && \
    	rm -r ~/.vim

    ln -s $CUR_DIR/vim $HOME/.vim
    ln -s $CUR_DIR/vim/vimrc ~/.vimrc
}

setup_tmux() {
    ([[ -f ~/.tmux.conf ]] || [[ -L ~/.tmux.conf ]]) && \
        cp ~/.tmux.conf ~/.tmux.conf.backup && \
        rm ~/.tmux.conf

    ln -s $CUR_DIR/tmux/tmux.conf ~/.tmux.conf
}

setup_mpd_ncmpcpp() {
    ([[ -d ~/.config/mpd ]] || [[ -L ~/.config/mpd ]]) && \
        rm -r ~/.config/mpd

    ln -s $CUR_DIR/mpd ~/.config/
    touch ~/.config/mpd/log
    touch ~/.config/mpd/sticker.sql
    touch ~/.config/mpd/playlist

    ([[ -d ~/.ncmpcpp ]] || [[ -L ~/.ncmpcpp ]]) && \
        rm -r ~/.ncmpcpp
    ln -s $CUR_DIR/ncmpcpp ~/.ncmpcpp
}

setup_zathura() {
    ([[ -d ~/.config/zathura ]] || [[ -L ~/.config/zathura ]]) && \
        rm -r ~/.config/zathura
    ln -s $CUR_DIR/zathura ~/.config
}

setup_bash
setup_i3
setup_vim
setup_tmux
setup_mpd_ncmpcpp
setup_zathura

cd $CUR_DIR
