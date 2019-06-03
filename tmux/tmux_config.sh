#! /bin/bash

#===============================================================================================================|
#  _______                          _____                __  _                            _    _                |
# |__   __|                        / ____|              / _|(_)                          | |  (_)               |
#    | | _ __ ___   _   _ __  __  | |      ___   _ __  | |_  _   __ _  _   _  _ __  __ _ | |_  _   ___   _ __   |
#    | || '_ ` _ \ | | | |\ \/ /  | |     / _ \ | '_ \ |  _|| | / _` || | | || '__|/ _` || __|| | / _ \ | '_ \  |
#    | || | | | | || |_| | >  <   | |____| (_) || | | || |  | || (_| || |_| || |  | (_| || |_ | || (_) || | | | |
#    |_||_| |_| |_| \__,_|/_/\_\   \_____|\___/ |_| |_||_|  |_| \__, | \__,_||_|   \__,_| \__||_| \___/ |_| |_| |
#                                                                __/ |                                          | 
#                                                               |___/       :)) phenomenal_ab                   | 
#																			:)) https://github.com/phenomenal-ab|
#===============================================================================================================|

#Icons
#  : e0b0
#  : e0b2
#   : eob1
#   : e0b3

#======================[ Window Options ]======================={{{
window_options ()
{
    tmux set-window-option -g clock-mode-colour brightred
    tmux set-window-option -g clock-mode-style 24

    # Window Mode Keys to be Vi keys
    tmux set-window-option -g mode-keys vi

    # Active Pane Border Colour
    tmux set-window-option -g pane-active-border-style 'fg=#42f766,bold'
    tmux set-window-option -g pane-border-style 'fg=#000000'

    # Pane Base Index to be 1
    tmux set-window-option -g pane-base-index 1

    # Window Colour Configuration
    tmux set-window-option -g window-status-current-style 'fg=brightred,bold'
    tmux set-window-option -ag window-status-current-style 'bg=default'
    tmux set-window-option -g window-status-style 'fg=white'

    tmux set-window-option -g window-status-separator ''
    tmux set-window-option -g window-status-current-format \
        '#[fg=#ffffff,bold]#[bg=#ff0000] #I #[bg=#faff00]#[fg=#ff0000] #[fg=#000000,bold]#[bg=#faff00]#W '
    tmux set-window-option -g window-status-format \
        '#[fg=#000000,bold]#[bg=#e06b11] #I #[fg=#e06b11,bold]#[bg=#0291ff] #[bg=#0291ff]#[fg=#000000,bold]#W '

    # Setting xterm keys on
    tmux set-option -g xterm-keys on

    # Reloading configuration
    tmux bind-key r source-file ~/.tmux.conf \; display 'Tmux Configuration Reloaded'
}
#======================[ Window Options ]====================== }}}

#===================[ StatusBar Configuration ]==================={{{
statusbar_config()
{
    # Turn Status Bar on
    #set-option -g status on

    # Status Bar Position
    tmux set-option -g status-position bottom

    # Make Tmux Status bar Transparent
    tmux set-option -g status-bg default


    # Make StatusBar update every second
    tmux set-option -g status-interval 1

    # Justifying Status Windows Alignment
    # tmux set-option -g status-justify centre
    tmux set-option -g status-justify left

    # Setting Status Mode to vi
    tmux set-option -g status-keys vi

    # Setting Status Portions length
    # tmux set-option -g status-left-length 100
    tmux set-option -g status-right-length 100

    # Status Left Configuration
    tmux set-option -g status-left ""
    tmux set-option -g status-right \
        '#[bg=default] #(python $DOTS/scripts/battery.py) #[fg=#3b037f]#[bg=default]#[fg=#30ff48,bold]#[bg=#3b037f] #S '

    # Status Right Configuration
    # tmux set-option -g status-right ''
    # tmux set-option -g status-right '#[fg=#00fc75]Workspaces: #{session_windows}'
}

#_____________/ End : Status Bar Configuration \____________# }}}


main () 
{
    window_options
    statusbar_config
}

main
