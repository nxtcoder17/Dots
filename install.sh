#! /bin/bash 
# === Setting up the Bash Terminal ===

setupBash() {
    [[ -d ~/.bash ]] || [[ -h ~/.bash ]] && rm ~/.bash -r 
    mkdir ~/.bash 
    ln -s $PWD/bash/* ~/.bash/
    rm ~/.bash/bashrc
    ln -sf $PWD/bash/bashrc  ~/.bashrc
}

# === Setting up the Vim Editor ===
setupVim() {
    [[ -L ~/.vim ]] || [[ -d ~/.vim ]] && rm ~/.vim 

    ln -s $PWD/vim ~/.vim
    ln -sf ~/.vim/vimrc ~/.vimrc
}

setupMpdNcmpcpp() {
    [[ -d ~/.config/mpd ]] || [[ -L ~/.config/mpd ]] && rm -r ~/.config/mpd
    ln -s $PWD/mpd ~/.config/
    touch ~/.config/mpd/log
    touch ~/.config/mpd/sticker.sql

    [[ -d ~/.ncmpcpp ]] || [[ -L ~/.ncmpcpp ]] && rm -r ~/.ncmpcpp
    ln -s $PWD/ncmpcpp ~/.ncmpcpp
}

setupTmux() {
    [[ -f ~/.tmux.conf ]] || [[ -L ~/.tmux.conf ]] && rm ~/.tmux.conf
    ln -s $PWD/tmux/tmux.conf ~/.tmux.conf

    # Also install the Latest Version of tmux plugin manager
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm > /dev/null
}

setupZathura() {
    [[ -L ~/.config/zathura ]] || [[ -d ~/.config/zathura ]] && rm ~/.config/zathura
    ln -s $PWD/zathura ~/.config/
}

setupQutebrowser() {
    [[ -L ~/.config/qutebrowser ]] || [[ -d ~/.config/qutebrowser ]] && rm ~/.config/qutebrowser
    ln -s $PWD/qutebrowser ~/.config/
}

setupi3() {
    [[ -L ~/.config/i3 ]] || [[ -d ~/.config/i3 ]] && rm ~/.config/i3
    ln -s $PWD/i3 ~/.config/

    [[ -L ~/.config/i3blocks ]] || [[ -d ~/.config/i3blocks ]] && rm ~/.config/i3blocks
    ln -s $PWD/i3blocks ~/.config/
}

setupOtherDots() {
    [[ -L ~/.config/ranger ]] || [[ -d ~/.config/ranger ]] && rm ~/.config/ranger
    ln -s $PWD/ranger ~/.config/

    [[ -L ~/.ptpython ]] || [[ -d ~/.ptpython ]] && rm ~/.ptpython
    ln -s $PWD/ptpython ~/.ptpython
}

#  : f00c          #  : f489 
#  : e62b          #  : f001 
setupBash > /dev/null
echo "[  ] Bash Terminal  "
setupVim  > /dev/null
echo "[  ] Vim Editor  "
setupMpdNcmpcpp > /dev/null
echo "[  ] Mpd and Ncmpcpp  "
setupTmux > /dev/null
echo "[  ] Tmux: Terminal Multiplexer  "
setupQutebrowser > /dev/null
echo "[  ] Qutebrowser "
setupi3 > /dev/null
echo "[  ] i3wm and i3blocks "
setupOtherDots > /dev/null
echo "[  ] ranger, ptpython "
