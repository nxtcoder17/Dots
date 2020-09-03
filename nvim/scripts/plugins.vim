" Vim Plug: Installer
"

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

if (!exists("g:vscode"))
	Plug 'junegunn/fzf.vim'

	" Plug 'ervandew/supertab'
	Plug 'sainnhe/gruvbox-material'
	Plug 'morhetz/gruvbox'
	Plug 'sheerun/vim-polyglot'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'luochen1990/rainbow'
	Plug 'hzchirs/vim-material'                             " material color themes
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}  	" Multicursors

	" snippets
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'                               " actual snippets

	" visual
	Plug 'alvan/vim-closetag'                               " auto close html
	Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes
	Plug 'crusoexia/vim-monokai'
	Plug 'ryanoasis/vim-devicons'

	" Commenting
	Plug 'preservim/nerdcommenter'
	Plug 'neoclide/jsonc.vim'

	" File Explorer
	Plug 'kevinhwang91/rnvimr'

	" Plug 'tpope/vim-vinegar'
	" [Nerd Tree]
	" Plug 'preservim/nerdtree'
endif

Plug 'tpope/vim-surround'


call plug#end()
