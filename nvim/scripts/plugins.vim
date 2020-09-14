" Vim Plug: Installer

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

if (!exists("g:vscode"))
	Plug 'junegunn/fzf.vim'

	Plug 'airblade/vim-rooter'

	" Plug 'ervandew/supertab'
	Plug 'sainnhe/gruvbox-material'
	Plug 'morhetz/gruvbox'
	Plug 'sheerun/vim-polyglot'
	Plug 'neoclide/jsonc.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'frazrepo/vim-rainbow'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}  	" Multicursors

	" snippets
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'                               " actual snippets

	" visual
	Plug 'flazz/vim-colorschemes'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'alvan/vim-closetag'                               " auto close html
	Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes
	Plug 'ryanoasis/vim-devicons'
	Plug 'joshdick/onedark.vim'
	" Plug 'rafi/awesome-vim-colorschemes'
	Plug 'drewtempelmeyer/palenight.vim'

	" Commenting
	" Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-commentary'

	" File Explorer
	Plug 'kevinhwang91/rnvimr'

	" Vim Which key
	Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

	" Treesitter
	Plug 'nvim-treesitter/nvim-treesitter'

	" Plug 'tpope/vim-vinegar'
	" [Nerd Tree]
	" Plug 'preservim/nerdtree'

endif

Plug 'tpope/vim-surround'

call plug#end()
