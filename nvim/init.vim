let s:VIM_HOME = "$HOME/.config/nvim"

let s:MOD_DIR = expand(s:VIM_HOME) . "/mods"
exec "set rtp+=". s:MOD_DIR
exec "set path+=". s:MOD_DIR

command! -nargs=1 LoadFile exec 'source '. expand(s:MOD_DIR) . '/'. <args>

if (!exists("g:vscode")) 
	" Some Defaults that i like to have
	LoadFile 'nxt-defaults.vim'

	" Tabs and Spaces
	LoadFile 'tabs-n-spaces.vim'

	" Plugins and their configurations
    LoadFile 'plugins.vim'

    " Look and Feel
    LoadFile 'look-n-feel.vim'

    " StatusBar
    LoadFile 'statusline.vim'

    " Coc Nvim LSP Configuration
    LoadFile 'coc-lsp.vim'

    " LoadFile 'nvim-lsp.vim'

    " Custom playground stuffs
    LoadFile 'playground.vim'

    " Vim AutoCommands
    LoadFile 'autocommands.vim'

    " Some Damian Conway Tricks
    LoadFile "hl-next.vim"

	" Key Mappings, so so important
	LoadFile 'keymaps.vim'

    " Abbreviations
    LoadFile 'abbreviations.vim'
endif
