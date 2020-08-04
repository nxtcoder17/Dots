" Vim Plug: Installer
"
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'junegunn/fzf.vim'

" Plug 'ervandew/supertab'

Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'hzchirs/vim-material'                             " material color themes

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'                               " actual snippets

" visual
Plug 'alvan/vim-closetag'                               " auto close html
Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes
Plug 'liuchengxu/vista.vim'                             " a bar of tags

call plug#end()
