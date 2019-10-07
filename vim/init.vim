"=========================================================================================================
"  _   _  _               _____                 __  _                             _    _                 "
" | | | |(_)             /  __ \               / _|(_)                           | |  (_)                "
" | | | | _  _ __ ___    | /  \/  ___   _ __  | |_  _   __ _  _   _  _ __   __ _ | |_  _   ___   _ __    "
" | | | || || '_ ` _ \   | |     / _ \ | '_ \ |  _|| | / _` || | | || '__| / _` || __|| | / _ \ | '_ \   "
" \ \_/ /| || | | | | |  | \__/\| (_) || | | || |  | || (_| || |_| || |   | (_| || |_ | || (_) || | | |  "
"  \___/ |_||_| |_| |_|   \____/ \___/ |_| |_||_|  |_| \__, | \__,_||_|    \__,_| \__||_| \___/ |_| |_|  "
"                                                       __/ |                                            "
"                                                      |___/                                             "
"                                                       Author: phenomenal_ab                            "
"                                                       Github: https://github.com/phenomenal-ab         " 
"                                                       Modified: Sat 13 May 2018 17:27:25 PM IST        "
"=========================================================================================================

" Let's make a home for Vim [ A .vim directory under User's Home is fine ]
let g:VIM_HOME = "$HOME/.vim/"

" [ General Configurations ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/general_configurations.vim"

" [ Look and Feel ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/look_and_feel.vim"

" [ StatusLine ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/statusline.vim"

" [ Tabs and Indents ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/tabs_indents.vim"

" [ Search Related Configurations ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/search.vim"

" [ Key Mappings ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/key_mappings.vim"

" [ Custom Functions ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/custom_functions.vim"

" [ Abbreviations ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/abbreviations.vim"

" [ Executing Code in a Tmux split pane ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/tmux_talk.vim"

" [ Plugin Management: minpac ] 
execute "source ". expand(g:VIM_HOME) . "My_Scripts/plugins.vim"

" [ AutoCommands ]
execute "source " .expand(g:VIM_HOME) . "My_Scripts/autocommands.vim"

" [Programming Related Autocommands ]
execute "source " .expand(g:VIM_HOME). "My_Scripts/programming.vim"
