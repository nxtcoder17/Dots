#! /bin/bash

#####################################
#### Installer for my Dot Files #####
#####################################

CURRENT_DIR=$PWD

## Setting up i3wm
_i3wm() {
    DIR=$HOME/.config/i3
    if ([[ -d $DIR ]] || [[ -L $DIR ]])
    then
	rm -r $DIR
    fi
    ln -s $CURRENT_DIR/i3 $DIR
}

## setting up i3blocks
_i3blocks() {
    DIR=$HOME/.config/i3blocks
    if ([[ -d $DIR ]] || [[ -L $DIR ]])
    then
	rm -r $HOME/.config/i3blocks
    fi
    ln -s $CURRENT_DIR/i3blocks $DIR
}

## setting up tmux
_tmux() {
    FILE=$HOME/.tmux.conf
    if ([[ -f $FILE ]] || [[ -L $FILE ]])
    then
	rm $HOME/.tmux.conf
    fi
    ln -s $CURRENT_DIR/tmux/tmux.conf $FILE
}

## setting up compton
_compton() {
    FILE=$HOME/.config/compton.conf
    if ([[ -f $FILE ]] || [[ -L $FILE ]])
    then
	rm $FILE
    fi
    ln -s $CURRENT_DIR/compton/compton.conf $FILE
}

## setting up dunst
_dunst() {
    DIR=$HOME/.config/dunst
    if ([[ -d $DIR ]] || [[ -L $DIR ]])
    then
	rm $DIR
    fi
    ln -s $CURRENT_DIR/dunst $DIR
}

_bash() {
    DIR=$HOME/.bash_conf_dir
    if ([[ -d $DIR ]] || [[ -L $DIR ]])
    then
		    echo "[Warning]: $DIR already exists"
    else
		    echo "Creating Directory .... $DIR"
		    mkdir $DIR
    fi
    ln -sf $CURRENT_DIR/bash/*.sh $DIR
    ln -sf $CURRENT_DIR/bash/prompts $DIR
    ln -sf $CURRENT_DIR/bash/bashrc $HOME/.bashrc
}

_vim() {
    DIR=$HOME/.vim
    if ([[ -d $DIR ]] || [[ -L $DIR ]])
    then
	echo "[Warning]: $DIR Already exists..."
    else
	echo "Creating Directory .... $DIR"
    fi
    ln -sf $CURRENT_DIR/vim $DIR
    ln -sf $DIR/vimrc $HOME/.vimrc
}

_i3wm
_i3blocks
_tmux
_compton
_dunst
_bash
_vim
